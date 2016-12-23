Imports System.Security.Principal
Imports System.Data.SqlClient

Partial Public Class Inspection
    Inherits System.Web.UI.Page
    Dim strDatabase As String
    Dim strUsername As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'this subroutine looks up user role from current identity
        'if user NOT is found with this name, it redirects to the error page to display a user not found message
        'if user is found but their role is NOT DE or DPS, it redirects to the error page to display a user not authorized messageDim CurrentIdentity As WindowsIdentity = WindowsIdentity.GetCurrent

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
            Response.Redirect("error.aspx?E=User_Not_Found&S=inspection.aspx&U=" & strUsername & "&D=" & strDatabase)
        ElseIf ds.Tables(0).Rows(0).Item(0).ToString = "DPS" Or ds.Tables(0).Rows(0).Item(0).ToString = "DE" Then
            'these are OK
        Else
            Response.Redirect("error.aspx?E=User_Not_Authorized&S=inspection.aspx&U=" & strUsername & "&D=" & strDatabase)
        End If
        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()
    End Sub

    Protected Sub CancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handles cancel within the edit template
        'if there is a querystring ite returns to the appropriate study
        'if not it resets the buttons

        Dim theStudyNumber As String

        theStudyNumber = Request.QueryString("Study")

        'if we get a querystring, return to that study
        If theStudyNumber <> "" And Not IsNothing(DropDownList1.Items.FindByText(theStudyNumber)) Then
            Response.Redirect("studies.aspx?study=" & theStudyNumber)
        Else
            DropDownList1.Enabled = True
            DropDownList1.SelectedIndex = 0
            FormView1.ChangeMode(FormViewMode.Edit)
        End If

    End Sub

    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handle the Update button
        'first it checks the status of the study
        'if it is NOT Waiting review, Base info rejected or empty or Data amended, it returns a message
        'then it save the record returning an error if appropriate
        'if there is a querystring it redirects back to the studies form
        'finally it refreshes and enables the studies list and disables the new studies list

        Dim conStr As String = ConfigurationManager.ConnectionStrings("ToxikonConnectionString").ConnectionString
        Dim strScript As String = ""
        Dim sql As String

        sql = "Select txtStatus from tblProjects where txtStudyNumber = '" & DropDownList1.SelectedValue & "'"

        Dim sqlCon As New SqlConnection(conStr)
        Dim getOutcomeCommand As New SqlCommand(sql, sqlCon)
        Dim da As New SqlDataAdapter(getOutcomeCommand)
        Dim ds As New DataSet()

        sqlCon.Open()
        da.Fill(ds)
        If ds.Tables(0).Rows(0).Item(0).ToString = "Waiting review" _
            Or ds.Tables(0).Rows(0).Item(0).ToString = "Base info rejected" _
            Or ds.Tables(0).Rows(0).Item(0).ToString = "" _
            Or ds.Tables(0).Rows(0).Item(0).ToString = "Data amended" Then

            Dim theError As System.Exception

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

            Dim theStudyNumber As String

            theStudyNumber = Request.QueryString("Study")

            'if we get a querystring, return to that study
            If theStudyNumber <> "" And Not IsNothing(DropDownList1.Items.FindByText(theStudyNumber)) Then
                Response.Redirect("studies.aspx?study=" & theStudyNumber)
            Else

                DropDownList1.Enabled = True
                DropDownList1.SelectedIndex = 0
                FormView1.ChangeMode(FormViewMode.Edit)
            End If
            sqlCon.Close()
            sqlCon.Dispose()
            getOutcomeCommand.Dispose()
        Else
            strScript = "<script>"
            strScript &= "alert(" & Chr(34) & "The status of this report is: '" & ds.Tables(0).Rows(0).Item(0).ToString & ".' In order to update data the status must be 'Waiting review,' 'Base info rejected' or 'Data amended.' These changes will not be reflected in the report. Save Cancelled." & Chr(34) & ");"
            strScript &= "</script>"
            ClientScript.RegisterStartupScript(GetType(Page), "ClientSideScript", strScript)
        End If

    End Sub

    Private Sub DropDownList1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.DataBound

        'this subroutine handles the setting the querystring study value in the studies dropdown 

        Dim theStudyNumber As String

        theStudyNumber = Request.QueryString("Study")

        'if we get a querystring, select it in the dropdown and edit the record
        If theStudyNumber <> "" And Not IsNothing(DropDownList1.Items.FindByText(theStudyNumber)) Then
            DropDownList1.SelectedValue = theStudyNumber
            DropDownList1.Enabled = False
            FormView1.ChangeMode(FormViewMode.Edit)
        End If

    End Sub

    Private Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        'this subroutine fills the displays for the username and database

        DropDownList1.Enabled = False
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Private Sub Inspection_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

        'this subroutine fills the displays for the username and database

        LabelUsername.Text = "User: " & strUsername
        LabelDB.Text = "Database: " & strDatabase & " SharePoint Site: " & My.Settings.SPSiteURL

    End Sub

End Class


