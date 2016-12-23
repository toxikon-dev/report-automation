﻿Imports System.Security.Principal
Imports System.Data.SqlClient

Partial Public Class Samples
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
            Response.Redirect("error.aspx?E=User_Not_Found&S=samples.aspx&U=" & strUsername & "&D=" & strDatabase)
        ElseIf ds.Tables(0).Rows(0).Item(0).ToString = "DPS" Or ds.Tables(0).Rows(0).Item(0).ToString = "DE" Then
            'these are OK
        Else
            Response.Redirect("error.aspx?E=User_Not_Authorized&S=samples.aspx&U=" & strUsername & "&D=" & strDatabase)
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

        DropDownList1.Enabled = False
        Button1.Enabled = False
        FormView1.ChangeMode(FormViewMode.Insert)

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
                strScript &= "alert('Error Inserting Sample. This sample already exists. Select the sample number from the drop down list at the top of the page.');"
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
        'it enables the sample list and disables the new samples list

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

    Private Sub DropDownList1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.DataBound

        'this subroutine handles the selecting the querystring sample value in the samples dropdown 

        Dim theSampleNumber As String

        theSampleNumber = Request.QueryString("Sample")

        'if we get a querystring, select it in the dropdown and edit the record
        If theSampleNumber <> "" And Not IsNothing(DropDownList1.Items.FindByText(theSampleNumber)) Then
            DropDownList1.SelectedValue = theSampleNumber
            DropDownList1.Enabled = False
            Button1.Enabled = False
            FormView1.ChangeMode(FormViewMode.Edit)
        End If

    End Sub

    Private Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        'this subroutine disables the samples dropdown when one is selected

        DropDownList1.Enabled = False
        Button1.Enabled = False

    End Sub

    Private Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

        'this subroutine fills the displays for the username and database

        LabelUsername.Text = "User: " & strUsername
        LabelDB.Text = "Database: " & strDatabase & " SharePoint Site: " & My.Settings.SPSiteURL

    End Sub

End Class

