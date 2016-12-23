Imports System.Security.Principal
Imports System.Data.SqlClient

Partial Public Class Protocols
    Inherits System.Web.UI.Page
    Dim strDatabase As String
    Dim strUsername As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'this subroutine looks up user role from current identity
        'if user NOT is found with this name, it redirects to the error page to display a user not found message
        'if user is found but their role is NOT RAAdmin, it redirects to the error page to display a user not authorized messageDim CurrentIdentity As WindowsIdentity = WindowsIdentity.GetCurrent

        Dim CurrentIdentity As WindowsIdentity = WindowsIdentity.GetCurrent

        Dim conStr As String = ConfigurationManager.ConnectionStrings("ToxikonConnectionString").ConnectionString
        Dim strScript As String = ""
        Dim sql As String
        sql = "Select txtUserRole from tblUsers where txtUsername = '" & Mid(CurrentIdentity.Name, InStr(CurrentIdentity.Name, "\") + 1) & "'"

        Dim sqlCon As New SqlConnection(conStr)
        Dim getOutcomeCommand As New SqlCommand(sql, sqlCon)
        Dim da As New SqlDataAdapter(getOutcomeCommand)
        Dim ds As New DataSet()

        sqlCon.Open()
        strDatabase = sqlCon.Database
        strUsername = CurrentIdentity.Name
        da.Fill(ds)
        If ds.Tables(0).Rows.Count = 0 Then
            Response.Redirect("error.aspx?E=User_Not_Found&S=Protocols.aspx&U=" & strUsername & "&D=" & strDatabase)
        ElseIf ds.Tables(0).Rows(0).Item(0).ToString = "RAAdmin" Then
            'these are OK
        Else
            Response.Redirect("error.aspx?E=User_Not_Authorized&S=Protocols.aspx&U=" & strUsername & "&D=" & strDatabase)
        End If
        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()
    End Sub

    Private Sub FormView1_ItemCreated(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView1.ItemCreated

        'this subroutine is triggered when the clone button is clicked and the form is in insert mode
        'it sets the value of the fields based on the saved session variables
        'it then clears the session variables

        If FormView1.CurrentMode = FormViewMode.Insert And Session("Cloning") = "True" Then
            Dim myControl As TextBox
            Dim myControl1 As DropDownList
            Dim myControl2 As CheckBox
            myControl = FormView1.FindControl("txtProtocolNameTextBox")
            myControl.Text = Session("txtProtocolNameTextBox").ToString
            Session("txtProtocolNameTextBox") = Nothing

            myControl = FormView1.FindControl("txtReportQueryTextBox")
            myControl.Text = Session("txtReportQueryTextBox").ToString
            Session("txtReportQueryTextBox") = Nothing
            myControl.Enabled = False

            myControl = FormView1.FindControl("txtWebFormTextBox")
            myControl.Text = Session("txtWebFormTextBox").ToString
            Session("txtWebFormTextBox") = Nothing
            myControl.Enabled = False

            myControl1 = FormView1.FindControl("DropDownList2")
            myControl1.SelectedValue = Session("DropDownList2").ToString
            Session("DropDownList2") = Nothing
            myControl1.Enabled = False

            myControl2 = FormView1.FindControl("booQAReviewCheckBox")
            myControl2.Checked = Session("booQAReviewCheckBox").ToString
            Session("booQAReviewCheckBox") = Nothing
            myControl2.Enabled = False

            Session("Cloning") = Nothing
            myControl.Dispose()
            myControl1.Dispose()
            myControl2.Dispose()
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        'this subroutine handles the New button
        'it disables new button and edit dropdown

        DropDownList1.Enabled = False
        Button1.Enabled = False
        FormView1.ChangeMode(FormViewMode.Insert)

    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handle the Insert button
        'it save the recored returning an error if a duplicate record already exists
        'it then refreshes and enables the studies list and disables the new studies list

        Dim theError As System.Exception

        Try
            FormView1.InsertItem(True)

        Catch theError
            Dim strScript As String = ""

            strScript = "<script>"
            If Strings.Left(theError.GetBaseException.Message, 35) = "Violation of PRIMARY KEY constraint" Then
                strScript &= "alert('Error Inserting User. This user already exists. Select the user from the drop down list at the top of the page.');"
            Else
                Dim strErrorText As String = ""
                strErrorText = theError.Message
                strErrorText = Replace(strErrorText, Chr(34), "'")
                strErrorText = Replace(strErrorText, Chr(13), " ")
                strErrorText = Replace(strErrorText, Chr(10), "")
                strScript &= "alert(" & Chr(34) & "Error inserting record. " & strErrorText & Chr(34) & ");"
            End If
            strScript &= "</script>"

            Try
                ClientScript.RegisterStartupScript(GetType(Page), "ClientSideScript", strScript)
            Catch ex As Exception
                Response.Write(ex.Message & "<br>" & ex.StackTrace)
            End Try

        End Try

        DropDownList1.DataBind()
        DropDownList1.Enabled = True
        DropDownList1.SelectedIndex = 0
        Button1.Enabled = True
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Protected Sub InsertCancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handles cancel within the insert template

        DropDownList1.Enabled = True
        DropDownList1.SelectedIndex = 0
        Button1.Enabled = True
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Protected Sub UpdateCancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handles cancel within the edit template

        DropDownList1.Enabled = True
        DropDownList1.SelectedIndex = 0
        Button1.Enabled = True
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handle the Update button
        'it save the record returning an error if appropriate
        'it enables the protocol list 

        Dim theError As System.Exception
        Dim strScript As String = ""
        Try
            FormView1.UpdateItem(True)
        Catch theError
            Dim strErrorText As String = ""
            strErrorText = theError.Message
            strErrorText = Replace(strErrorText, Chr(34), "'")
            strErrorText = Replace(strErrorText, Chr(13), " ")
            strErrorText = Replace(strErrorText, Chr(10), "")
            strScript = "<script>"
            strScript &= "alert(" & Chr(34) & "Error updating record. " & strErrorText & Chr(34) & ");"
            strScript &= "</script>"

            Try
                ClientScript.RegisterStartupScript(GetType(Page), "ClientSideScript", strScript)
            Catch ex As Exception
                Response.Write(ex.Message & "<br>" & ex.StackTrace)
            End Try

        End Try

        DropDownList1.Enabled = True
        DropDownList1.SelectedIndex = 0
        Button1.Enabled = True
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Private Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        'this subroutine disables the protocols dropdown when one is selected

        DropDownList1.Enabled = False
        Button1.Enabled = False

    End Sub

    Protected Sub CloneButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handles the clone button
        'it saves the value of the fields to session variables 
        'it then enters insert mode

        'Grab all the values and put them into session variables
        Dim myControl As TextBox
        Dim myControl1 As DropDownList
        Dim myControl2 As CheckBox
        myControl = FormView1.FindControl("txtProtocolNameTextBox")
        Session("txtProtocolNameTextBox") = myControl.Text
        myControl = FormView1.FindControl("txtReportQueryTextBox")
        Session("txtReportQueryTextBox") = myControl.Text
        myControl = FormView1.FindControl("txtWebFormTextBox")
        Session("txtWebFormTextBox") = myControl.Text
        myControl1 = FormView1.FindControl("DropDownList2")
        Session("DropDownList2") = myControl1.SelectedValue
        myControl2 = FormView1.FindControl("booQAReviewCheckBox")
        Session("booQAReviewCheckBox") = myControl2.Checked
        Session("Cloning") = "True"
        myControl.Dispose()
        myControl1.Dispose()
        myControl2.Dispose()

        'Change to Insert mode with the Cloning session variable set to "True"
        FormView1.ChangeMode(FormViewMode.Insert)

    End Sub

    Private Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

        'this subroutine fills the displays for the username and database

        LabelUsername.Text = "User: " & strUsername
        LabelDB.Text = "Database: " & strDatabase & " SharePoint Site: " & My.Settings.SPSiteURL

    End Sub
End Class

