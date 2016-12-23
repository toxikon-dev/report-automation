Imports System.Data.SqlClient
Imports System.Xml
Imports System.Net
Imports System.Net.Mail
Imports Microsoft.SharePoint

Public Class SharePoint
    Inherits System.Web.UI.Page

    Public Function AddSPTask(ByVal strTitle As String, ByVal strPriority As String, ByVal strDueDate As String, ByVal strAssignTo As String, ByVal strTaskListName As String) As String

        'this subroutine uses the SharePoint object model to add a SharePoint task to the Task list
        '(originally it used the Lists web service but there was some sort of permissions issue that required the user have full permission to the task list
        'first it looks up the SharePoint userID from the email address
        'then it creates the task
        'note that AllowUnsafeUpdates must be true or a permission error is returned
        'finally it creates an email to the user using the SMTP client

        Dim mySPSite As SPSite
        Dim mySPWeb As SPWeb
        Dim mySPListItemCol As SPListItemCollection
        Dim mySPItem As SPItem
        Dim mySPUserCol As SPUserCollection
        Dim mySPUser As SPUser = Nothing

        Dim strErrorText As String = ""
        Dim myEmail As String
        Dim strScript As String
        Dim strNoUserError As String = ""

        AddSPTask = ""
        mySPSite = New SPSite(My.Settings.SPSiteURL)
        mySPWeb = mySPSite.OpenWeb()

        mySPUserCol = mySPSite.OpenWeb().AllUsers
        Try
            mySPUser = mySPUserCol.GetByEmail(strAssignTo)
        Catch ex As Exception
            strNoUserError = "<BR />Error: Your email address was not found by SharePoint so no task was assigned. Please see your administrator. (" & ex.Message.ToString & ")"
        End Try

        If strNoUserError = "" Then
            mySPListItemCol = mySPWeb.Lists(strTaskListName).Items

            mySPItem = mySPListItemCol.Add()
            mySPWeb.AllowUnsafeUpdates = True

            mySPItem("Title") = strTitle
            mySPItem("AssignedTo") = mySPUser.ID
            mySPItem("ContentType") = "0x010800BE7793FDBE9AD548B6D3EBFA7D84B439"
            If strPriority <> "" Then mySPItem("Priority") = strPriority
            If strDueDate <> "" Then mySPItem("DueDate") = strDueDate
            mySPItem.Update()
            AddSPTask = mySPItem("GUID")
            mySPWeb.AllowUnsafeUpdates = False
            mySPWeb.Close()
            mySPSite.Close()
        End If

        myEmail = strAssignTo

        If My.Settings.SendEmailWhenAssignTask = "True" Then
            Dim objSMTPClient As New SmtpClient
            Dim objEmail As New MailMessage()
            objEmail.To.Add(New MailAddress(myEmail))
            objEmail.From = New MailAddress(My.Settings.TaskEmailSender)
            objEmail.Subject = "TASK: " & strTitle
            objEmail.Body = "<html>Task assigned: " & strTitle & strNoUserError & "</html>"
            objEmail.IsBodyHtml = True
            objSMTPClient.UseDefaultCredentials = True

            objSMTPClient.Host = My.Settings.SMTPServer
            Try
                objSMTPClient.Send(objEmail)
            Catch theError As Exception
                strScript = "<script>"
                strErrorText = theError.Message
                strErrorText = Replace(strErrorText, Chr(34), "'")
                strErrorText = Replace(strErrorText, Chr(13), " ")
                strErrorText = Replace(strErrorText, Chr(10), "")
                strScript &= "alert(" & Chr(34) & "Error sending task assignment email. " & strErrorText & Chr(34) & ");"
                strScript &= "</script>"
                Try
                    ClientScript.RegisterStartupScript(GetType(Page), "ClientSideScript", strScript)
                Catch ex As Exception
                    Response.Write(ex.Message & "<br>" & ex.StackTrace)
                End Try
            End Try
        End If

        Exit Function

    End Function

    Public Function GetUserIDFromEmail(ByVal strEmail As String) As String

        'this subroutine is used by the users form to get the SharePoint ID from an email address
        'the ID is stored in the users table because there was some sort of permission error when trying to obtain the ID through the lists webservice

        Dim mySPSite As SPSite
        Dim mySPWeb As SPWeb
        Dim mySPUserCol As SPUserCollection
        Dim mySPUser As SPUser = Nothing

        Dim strNoUser As String = ""

        mySPSite = New SPSite(My.Settings.SPSiteURL)
        mySPWeb = mySPSite.OpenWeb()

        mySPUserCol = mySPSite.OpenWeb().AllUsers
        Try
            mySPUser = mySPUserCol.GetByEmail(strEmail)
        Catch ex As Exception
            strNoUser = "True"
        End Try

        If strNoUser = "True" Then
            GetUserIDFromEmail = "0"
        Else
            GetUserIDFromEmail = mySPUser.ID.ToString
        End If

    End Function
End Class
