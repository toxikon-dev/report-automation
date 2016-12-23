Imports RAForms.ListsWS
Imports System.Data.SqlClient
Imports System.Security.Principal

Partial Public Class Studies
    Inherits System.Web.UI.Page
    Dim strDatabase As String
    Dim strUsername As String
    Dim myProject As Integer

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
            Response.Redirect("error.aspx?E=User_Not_Found&S=studies.aspx&U=" & strUsername & "&D=" & strDatabase)
        ElseIf ds.Tables(0).Rows(0).Item(0).ToString = "DPS" Or ds.Tables(0).Rows(0).Item(0).ToString = "DE" Then
            'these are OK
        Else
            Response.Redirect("error.aspx?E=User_Not_Authorized&S=studies.aspx&U=" & strUsername & "&D=" & strDatabase)
        End If
        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()

    End Sub

    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormView1.PageIndexChanging

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        'this subroutine handles the New button
        'it set the SQL command to fill the dropdown with the list of available samples
        'it disables edit and enables the list of samples

        DropDownList1.Enabled = False
        Button1.Enabled = False

        SqlDataSource3.SelectCommand = "SELECT txtSampleNumber + '-' + txtTestType FROM tblSamples UNION SELECT '' FROM tblSamples ORDER BY 1"
        DropDownList2.DataBind()

        DropDownList2.Enabled = True
        InsertCancelBeforeSelectButton.Visible = True

    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handle the Insert button
        'it returns an error if a duplicate record already exists
        'it then creates a SharePoint folder for that study and an Attachments folder within that study folder
        'it then refreshes and enables the studies list and disables the new studies list

        Dim theError As System.Exception

        Try
            FormView1.InsertItem(True)

        Catch theError
            Dim strScript As String = ""

            strScript = "<script>"
            If Strings.Left(theError.GetBaseException.Message, 35) = "Violation of PRIMARY KEY constraint" Then
                strScript &= "alert('Error Inserting Study. This study already exists. Select the study number from the drop down list at the top of the page.');"
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

        'Add SharePoint folder
        Dim myControl As TextBox
        Dim myControl1 As Label
        myControl = FormView1.FindControl("txtStudyNumberTextBox")
        myControl1 = FormView2.FindControl("txtSponsorNameLabel")
        CreateFolder("20" & Left(myControl.Text, 2), "")
        CreateFolder("20" & Left(myControl.Text, 2) & "/" & Left(myControl.Text, 7), myControl1.Text)
        CreateFolder("20" & Left(myControl.Text, 2) & "/" & Left(myControl.Text, 7) & "/" & myControl.Text, myControl1.Text)
        CreateFolder("20" & Left(myControl.Text, 2) & "/" & Left(myControl.Text, 7) & "/" & myControl.Text & "/Attachments", "Attachments")
        myControl.Dispose()

        'Refeash dropdown and reset buttons
        DropDownList1.DataBind()
        DropDownList1.Enabled = True
        DropDownList1.SelectedIndex = 0
        Button1.Enabled = True
        DropDownList2.SelectedIndex = 0
        DropDownList2.Enabled = False
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Protected Sub InsertCancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handles cancel within the insert template
        'it enables the study dropdown, edit button and new button
        'it disables the new studies dropdown

        DropDownList1.Enabled = True
        DropDownList1.SelectedIndex = 0
        Button1.Enabled = True
        DropDownList2.SelectedIndex = 0
        DropDownList2.Enabled = False
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Protected Sub UpdateCancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handles cancel within the edit template
        'it enables the edit button and studies dropdown

        DropDownList1.Enabled = True
        DropDownList1.SelectedIndex = 0
        Button1.Enabled = True
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handle the Update button
        'first it checks the status of the study
        'if it is NOT Waiting review, Base info rejected or empty or Data amended, it returns a message
        'then it save the record returning an error if appropriate
        'finally refreshes and enables the studies list and disables the new studies list

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

            DropDownList1.Enabled = True
            DropDownList1.SelectedIndex = 0
            Button1.Enabled = True
            FormView1.ChangeMode(FormViewMode.Edit)
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

        'this subroutine handles setting the dropdown if we have a querystring

        Dim theStudyNumber As String

        theStudyNumber = Request.QueryString("Study")

        'if we get a querystring, select it in the dropdown and edit the record
        If theStudyNumber <> "" And Not IsNothing(DropDownList1.Items.FindByText(theStudyNumber)) Then
            DropDownList1.SelectedValue = theStudyNumber
            DropDownList1.Enabled = False
            Button1.Enabled = False
            FormView1.ChangeMode(FormViewMode.Edit)
        End If

    End Sub

    Private Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        'this subroutine disables the edit button and studies dropdown

        DropDownList1.Enabled = False
        Button1.Enabled = False

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList2.SelectedIndexChanged

        'this subroutine handles entering insert mode when the user chooses a new study from the dropdown
        'it first determines the next sequential project number for the sample

        Dim conStr As String = ConfigurationManager.ConnectionStrings("ToxikonConnectionString").ConnectionString

        Dim sql As String
        sql = "Select max(intProjectNumber) from tblProjects where txtStudyNumber like '" & Left(DropDownList2.SelectedValue, 7) & "-" & Right(DropDownList2.SelectedValue, 1) & "%'"

        Dim sqlCon As New SqlConnection(conStr)
        Dim getOutcomeCommand As New SqlCommand(sql, sqlCon)
        Dim da As New SqlDataAdapter(getOutcomeCommand)
        Dim ds As New DataSet()

        sqlCon.Open()
        da.Fill(ds)
        If ds.Tables(0).Rows(0).Item(0).ToString <> "" Then
            myProject = CInt(ds.Tables(0).Rows(0).Item(0).ToString) + 1
        Else
            myProject = 1
        End If
        sqlCon.Close()
        sqlCon.Dispose()
        InsertCancelBeforeSelectButton.Visible = False
        FormView1.ChangeMode(FormViewMode.Insert)

    End Sub

    Private Sub FormView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView1.PreRender

        'this subroutine setting values before rendering the page
        'if insert it sets the values of the studynumber, project number and test type fields
        'if edit it sets the values of the link buttons - it looks up the results form name from the protocol table

        If FormView1.CurrentMode = FormViewMode.Insert Then
            Dim myControl As TextBox
            myControl = FormView1.FindControl("txtStudyNumberTextBox")
            myControl.Text = Left(DropDownList2.SelectedValue, 7) & "-" & Right(DropDownList2.SelectedValue, 1) & myProject
            myControl = FormView1.FindControl("txtSampleNumberTextBox")
            myControl.Text = Left(DropDownList2.SelectedValue, 7)
            myControl = FormView1.FindControl("txtTestTypeTextBox")
            myControl.Text = Right(DropDownList2.SelectedValue, 1)
            myControl = FormView1.FindControl("txtProjectNumberTextBox")
            myControl.Text = myProject
            myControl = FormView1.FindControl("intProjectNumberTextBox")
            myControl.Text = myProject
            myControl.Dispose()
        End If

        If FormView1.CurrentMode = FormViewMode.Edit Then

            Dim myWebForm As String = ""
            Dim myControl1 As DropDownList
            myControl1 = FormView1.FindControl("DropDownList9")
            If myControl1 Is Nothing Then
                myWebForm = "default.aspx"
            Else
                Dim conStr As String = ConfigurationManager.ConnectionStrings("ToxikonConnectionString").ConnectionString
                Dim sqlCon As New SqlConnection(conStr)
                Dim getOutcomeCommand As New SqlCommand("Select txtWebForm from tblProtocols where txtProtocolName = '" & myControl1.SelectedValue & "'", sqlCon)
                Dim da As New SqlDataAdapter(getOutcomeCommand)
                Dim ds As New DataSet()

                sqlCon.Open()
                da.Fill(ds)
                If ds.Tables(0).Rows(0).Item(0).ToString <> "" Then
                    myWebForm = ds.Tables(0).Rows(0).Item(0).ToString
                Else
                    myWebForm = "default.aspx"
                End If
                sqlCon.Close()
                sqlCon.Dispose()
                myControl1.Dispose()
            End If

            Dim myControl As LinkButton
            myControl = FormView1.FindControl("LinkButton1")
            If myControl Is Nothing Then
            Else
                myControl.PostBackUrl = "labschedule.aspx?study=" & DropDownList1.SelectedValue
                myControl.Dispose()
            End If
            myControl = FormView1.FindControl("LinkButton2")
            If myControl Is Nothing Then
            Else
                myControl.PostBackUrl = "inspection.aspx?study=" & DropDownList1.SelectedValue
                myControl.Dispose()
            End If
            myControl = FormView1.FindControl("LinkButton3")
            If myControl Is Nothing Then
            Else
                myControl.PostBackUrl = myWebForm & "?study=" & DropDownList1.SelectedValue
                myControl.Dispose()
            End If
        End If

    End Sub

    Protected Sub InsertCancelBeforeSelectButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles InsertCancelBeforeSelectButton.Click

        'this subroutine handles the Cancel button after clicking New but before selecting a new results

        DropDownList1.Enabled = True
        DropDownList1.SelectedIndex = 0
        Button1.Enabled = True
        InsertCancelBeforeSelectButton.Visible = False
        DropDownList2.SelectedIndex = 0
        DropDownList2.Enabled = False
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Private Sub CreateFolder(ByVal strFoldername As String, ByVal strFolderTitle As String)

        'this subroutine uses the SharePoint Lists web service to create folders within the Studies document library
        'the starting point is determined by the SPSiteURL setting and the SPStudiesFolder setting

        Dim myLists As New ListsWS.Lists
        myLists.Credentials = System.Net.CredentialCache.DefaultCredentials
        myLists.Url = My.Settings.SPSiteURL & "_vti_bin/Lists.asmx"

        Dim theError As System.Exception
        Dim strScript As String = ""
        Dim xmlDoc = New System.Xml.XmlDocument()
        Dim xmlDocEle As System.Xml.XmlElement = xmlDoc.CreateElement("Batch")
        Dim strXML As String

        xmlDocEle.SetAttribute("OnError", "Continue")
        strXML = "<Method ID='1' Cmd='New'><Field Name='ID'>New</Field><Field Name='FSObjType'>1</Field><Field Name='BaseName'>" & strFoldername & "</Field>"
        If strFolderTitle <> "" Then strXML = strXML & "<Field Name='Title'>" & strFolderTitle & "</Field>"
        xmlDocEle.InnerXml = strXML & "</Method>"
        Try
            Dim xmlNode As System.Xml.XmlNode = myLists.UpdateListItems(My.Settings.SPStudiesFolder, xmlDocEle)
        Catch theError
            Dim strErrorText As String = ""
            strErrorText = theError.Message
            strErrorText = Replace(strErrorText, Chr(34), "'")
            strErrorText = Replace(strErrorText, Chr(13), " ")
            strErrorText = Replace(strErrorText, Chr(10), "")
            strScript = "<script>"
            strScript &= "alert(" & Chr(34) & "Error creating SharePoint folder. " & strErrorText & Chr(34) & ");"
            strScript &= "</script>"

            Try
                ClientScript.RegisterStartupScript(GetType(Page), "ClientSideScript", strScript)
            Catch ex As Exception
                Response.Write(ex.Message & "<br>" & ex.StackTrace)
            End Try

        End Try

    End Sub

    Private Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

        'this subroutine fills the displays for the username and database

        LabelUsername.Text = "User: " & strUsername
        LabelDB.Text = "Database: " & strDatabase & " SharePoint Site: " & My.Settings.SPSiteURL
    End Sub
End Class

