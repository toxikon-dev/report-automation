Imports System.Data.SqlClient
Imports System.Security.Principal

Partial Public Class Ames_Test_Results_Form
    Inherits System.Web.UI.Page

    Dim mySharePoint As New SharePoint
	Dim theStudyNumber As String
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
            Response.Redirect("error.aspx?E=User_Not_Found&S=AmesTestResultsForm.aspx&U=" & strUsername & "&D=" & strDatabase)
        ElseIf ds.Tables(0).Rows(0).Item(0).ToString = "DPS" Or ds.Tables(0).Rows(0).Item(0).ToString = "DE" Then
            'these are OK
        Else
            Response.Redirect("error.aspx?E=User_Not_Authorized&S=AmesTestResultsForm.aspx&U=" & strUsername & "&D=" & strDatabase)
        End If
        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        'this subroutine handles the New button
        'it disables edit and enables the list of studies without results for this result type

        StudyDropDownList.Enabled = False
        Button1.Enabled = False

        StudyDropDownList2.Enabled = True
        InsertCancelBeforeSelectButton.Visible = True

    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handle the Insert button
        'it returns an error if a duplicate record already exists
        'it then refreshes and enables the studies list and disables the new studies list

        Dim theError As System.Exception

        Try
            FormView1.InsertItem(True)

        Catch theError
            Dim strScript As String = ""

            strScript = "<script>"
            If Strings.Left(theError.GetBaseException.Message, 35) = "Violation of PRIMARY KEY constraint" Then
                strScript &= "alert('Error Inserting Results. These results already exists. Select the study number from the drop down list at the top of the page.');"
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

        StudyDropDownList.DataBind()
        StudyDropDownList.Enabled = True
        StudyDropDownList.SelectedIndex = 0
        Button1.Enabled = True
        StudyDropDownList2.Enabled = False
        StudyDropDownList2.SelectedIndex = 0

        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub

    Protected Sub InsertCancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handles cancel within the insert template
        'if there is a querystring ite returns to the appropriate study
        'if not it resets the buttons

        theStudyNumber = Request.QueryString("Study")

        'if we get a querystring, return to that study
        If theStudyNumber <> "" Then
            Response.Redirect("studies.aspx?study=" & theStudyNumber)
        Else
            StudyDropDownList.Enabled = True
            StudyDropDownList.SelectedIndex = 0
            Button1.Enabled = True
            StudyDropDownList2.SelectedIndex = 0
            StudyDropDownList2.Enabled = False
            FormView1.ChangeMode(FormViewMode.Edit)
        End If

    End Sub

    Protected Sub UpdateCancelButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handles cancel within the edit template
        'if there is a querystring ite returns to the appropriate study
        'if not it resets the buttons

        theStudyNumber = Request.QueryString("Study")

        'if we get a querystring, return to that study
        If theStudyNumber <> "" Then
            Response.Redirect("studies.aspx?study=" & theStudyNumber)
        Else
            StudyDropDownList.Enabled = True
            StudyDropDownList.SelectedIndex = 0
            Button1.Enabled = True
            FormView1.ChangeMode(FormViewMode.Edit)
        End If

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

        sql = "Select txtStatus from tblProjects where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"

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

            StudyDropDownList.Enabled = True
            StudyDropDownList.SelectedIndex = 0
            Button1.Enabled = True

            FormView1.ChangeMode(FormViewMode.Edit)
        Else
            strScript = "<script>"
            strScript &= "alert(" & Chr(34) & "The status of this report is: '" & ds.Tables(0).Rows(0).Item(0).ToString & ".' In order to update data the status must be 'Waiting review,' 'Base info rejected' or 'Data amended.' These changes will not be reflected in the report. Save Cancelled." & Chr(34) & ");"
            strScript &= "</script>"
            ClientScript.RegisterStartupScript(GetType(Page), "ClientSideScript", strScript)
        End If

        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()
    End Sub

    Private Sub StudyDropDownList_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles StudyDropDownList.DataBound

        'this subroutine handles the finding querystring study value in the studies dropdown 
        'if found then edit
        'if NOT found then do new

        Dim theMode As String = "New"

        theStudyNumber = Request.QueryString("study")

        'if we get a querystring, select it in the dropdown and edit the record or start a new record
        If theStudyNumber <> "" Then           'And Not IsNothing(StudyDropDownList.Items.FindByText(theStudyNumber))
            For x = 0 To StudyDropDownList.Items.Count - 1
                If StudyDropDownList.Items(x).Text = theStudyNumber Then
                    StudyDropDownList.SelectedValue = theStudyNumber
                    StudyDropDownList.Enabled = False
                    Button1.Enabled = False
                    theMode = "Edit"
                    FormView1.ChangeMode(FormViewMode.Edit)
                    Exit For
                End If
            Next
            If theMode = "New" Then
                InsertCancelBeforeSelectButton.Visible = False
                StudyDropDownList2.Enabled = False
                FormView1.ChangeMode(FormViewMode.Insert)
            End If
        End If

    End Sub


    Private Sub StudyDropDownList_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles StudyDropDownList.SelectedIndexChanged

        'this subroutine disables the studies dropdown when one is selected

        StudyDropDownList.Enabled = False
        Button1.Enabled = False

    End Sub
    Private Sub StudyDropDownList2_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles StudyDropDownList2.DataBound

        'this subroutine handles the selection of a new results when we have a querystring

        theStudyNumber = Request.QueryString("Study")

        'if we get a querystring, select it in the dropdown and insert the record
        If theStudyNumber <> "" And Not IsNothing(StudyDropDownList2.Items.FindByText(theStudyNumber)) Then
            StudyDropDownList2.SelectedValue = theStudyNumber
            StudyDropDownList.Enabled = False
            Button1.Enabled = False
            FormView1.ChangeMode(FormViewMode.Insert)
        End If

    End Sub

    Protected Sub StudyDropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles StudyDropDownList2.SelectedIndexChanged

        'this subroutine handles entering insert mode when the user chooses a new result from the dropdown

        If StudyDropDownList2.SelectedValue <> "" Then
            InsertCancelBeforeSelectButton.Visible = False
            StudyDropDownList2.Enabled = False
            FormView1.ChangeMode(FormViewMode.Insert)
        End If

    End Sub

    Private Sub FormView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView1.PreRender

        'this subroutine handle  filling in the studynumber field on a insert

        If FormView1.CurrentMode = FormViewMode.Insert Then
            Dim myControl As TextBox
            myControl = FormView1.FindControl("txtStudyNumberTextBox")
            If theStudyNumber = "" Then
                myControl.Text = StudyDropDownList2.SelectedValue
            Else
                myControl.Text = theStudyNumber
                StudyDropDownList2.SelectedValue = theStudyNumber
            End If
            myControl.Dispose()
        End If

	End Sub

    Protected Sub InsertCancelBeforeSelectButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles InsertCancelBeforeSelectButton.Click

        'this subroutine handles the Cancel button after clicking New but before selecting a new results

        StudyDropDownList.Enabled = True
        StudyDropDownList.SelectedIndex = 0
        Button1.Enabled = True
        InsertCancelBeforeSelectButton.Visible = False
        StudyDropDownList2.SelectedIndex = 0
        StudyDropDownList2.Enabled = False
        FormView1.ChangeMode(FormViewMode.Edit)

    End Sub


    Protected Sub SubmitButton_Click(ByVal sender As Object, ByVal e As EventArgs)

        'this subroutine handle the Submit button
        'first it checks the status of the study
        'if it is NOT Waiting review, Base info rejected or empty or Data amended, it returns a message
        'then it save the record returning an error if appropriate
        'then it update the Mean and Std Dev fields
        'then it updates the record status to Waiting review
        'then it gets the sponsor name and SD email address
        'then it assigns a SharePoint task to the SD
        'finally refreshes and enables the studies list and disables the new studies list

        Dim conStr As String = ConfigurationManager.ConnectionStrings("ToxikonConnectionString").ConnectionString
        Dim strScript As String = ""
        Dim strSQL As String
        Dim mySponsor As String
        Dim myGUID As String

        strSQL = "Select txtStatus from tblProjects where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"

        Dim sqlCon As New SqlConnection(conStr)
        Dim getOutcomeCommand As New SqlCommand(strSQL, sqlCon)
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

            UpdateMeanSDFields()

            getOutcomeCommand.CommandText = "update tblProjects set txtStatus = 'Waiting review' where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
            getOutcomeCommand.ExecuteNonQuery()

            getOutcomeCommand.CommandText = "Select txtSponsorName from tblSamples where txtSampleNumber = '" & Left(StudyDropDownList.SelectedValue, 7) & "'"
            da.SelectCommand = getOutcomeCommand
            ds.Clear()
            da.Fill(ds)
            If ds.Tables(0).Rows(0).Item(1).ToString = "" Then
                mySponsor = "Sponsor Not Found"
            Else
                mySponsor = ds.Tables(0).Rows(0).Item(1).ToString
            End If

            Dim myControl As TextBox
            Dim myAssignTo As String
            myControl = FormView1.FindControl("txtEmailTextBox")
            myAssignTo = myControl.Text
            myControl.Dispose()

            myGUID = mySharePoint.AddSPTask("SD Review, 09-ISO-Ames-N, " & StudyDropDownList.SelectedValue & ", " & mySponsor, "", "", myAssignTo, "Tasks")
            getOutcomeCommand.CommandText = "update tblProjects set txtActiveTaskGUID = '" & myGUID & "' where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
            getOutcomeCommand.ExecuteNonQuery()

            StudyDropDownList.DataBind()
            StudyDropDownList.Enabled = True
            StudyDropDownList.SelectedIndex = 0
            Button1.Enabled = True

            FormView1.ChangeMode(FormViewMode.Edit)

        Else
            strScript = "<script>"
            strScript &= "alert(" & Chr(34) & "The status of this report is: '" & ds.Tables(0).Rows(0).Item(0).ToString & ".' In order to update data the status must be 'Waiting review,' 'Base info rejected' or 'Data amended.' These changes will not be reflected in the report. Save Cancelled." & Chr(34) & ");"
            strScript &= "</script>"
            ClientScript.RegisterStartupScript(GetType(Page), "ClientSideScript", strScript)
        End If
        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()

    End Sub

    Private Sub UpdateMeanSDFields()

        'this subroutine updates the mean and std dev fields

        Dim conStr As String = ConfigurationManager.ConnectionStrings("ToxikonConnectionString").ConnectionString
        Dim strSQL As String = ""

        Dim sqlCon As New SqlConnection(conStr)
        Dim getOutcomeCommand As New SqlCommand(strSQL, sqlCon)
        Dim da As New SqlDataAdapter(getOutcomeCommand)
        Dim ds As New DataSet()

        sqlCon.Open()

        Dim myMean As Integer
        Dim mySD As Integer
        Dim myIndex As Integer

        Dim strGroup As String
        Dim strTest As String
        Dim strActive As String

        '**
        '**
        '** Start with the Nonactivated
        '**
        '**

        strActive = "NonActivated"

        'Select the first group
        strGroup = "TA98"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the first group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myindex)) + CInt(ds.Tables(0).Rows(0).Item(myindex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myindex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        'Select the second group
        strGroup = "TA100"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the second group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        'Select the third group
        strGroup = "TA1535"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the third group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        'Select the fourth group
        strGroup = "TA1537"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the fourth group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        'Select the fifth group
        strGroup = "WP2"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the fifth group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        '**
        '**
        '** Then do the Activated
        '**
        '**

        strActive = "Activated"

        'Select the first group
        strGroup = "TA98"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the first group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        'Select the second group
        strGroup = "TA100"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the second group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        'Select the third group
        strGroup = "TA1535"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the third group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        'Select the fourth group
        strGroup = "TA1537"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the fourth group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        'Select the fifth group
        strGroup = "WP2"
        strTest = "Positive"
        strSQL = "select "
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeNaCL"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "NegativeCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestNaCl"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest & ", "
        strTest = "TestCSO"
        strSQL &= "int" & strActive & strGroup & "Rep1" & strTest & ", int" & strActive & strGroup & "Rep2" & strTest & ", int" & strActive & strGroup & "Rep3" & strTest

        strSQL &= " from tblAmes where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        da.SelectCommand = getOutcomeCommand
        If ds.Tables.Count > 0 Then ds.Tables.Remove(ds.Tables(0).TableName) 'clear any existing data
        da.Fill(ds)

        'Update the fifth group
        strSQL = "update tblAmes set "
        strTest = "Positive"
        myIndex = 0
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeNaCL"
        myIndex = 3
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "NegativeCSO"
        myIndex = 6
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestNaCl"
        myIndex = 9
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD & ", "
        strTest = "TestCSO"
        myIndex = 12
        myMean = (CInt(ds.Tables(0).Rows(0).Item(myIndex)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) + CInt(ds.Tables(0).Rows(0).Item(myIndex + 2))) / 3
        mySD = System.Math.Round(System.Math.Sqrt(((CInt(ds.Tables(0).Rows(0).Item(myIndex)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 1)) - myMean) ^ 2 + (CInt(ds.Tables(0).Rows(0).Item(myIndex + 2)) - myMean) ^ 2) / 2))
        strSQL &= "int" & strActive & strGroup & strTest & "Mean = " & myMean & ", int" & strActive & strGroup & strTest & "SD = " & mySD
        strSQL &= " where txtStudyNumber = '" & StudyDropDownList.SelectedValue & "'"
        getOutcomeCommand.CommandText = strSQL
        getOutcomeCommand.ExecuteNonQuery()

        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()

    End Sub

    Private Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

        'this subroutine fills the displays for the username and database

        LabelUsername.Text = "User: " & strUsername
        LabelDB.Text = "Database: " & strDatabase & " SharePoint Site: " & My.Settings.SPSiteURL

    End Sub
End Class

