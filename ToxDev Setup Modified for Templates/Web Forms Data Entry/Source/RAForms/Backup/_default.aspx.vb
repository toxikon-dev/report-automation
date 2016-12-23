Imports System.Security.Principal
Imports System.Data.SqlClient

Partial Public Class _default

    Inherits System.Web.UI.Page
    Dim strDatabase As String
    Dim strUsername As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'this subroutine looks up user role from current identity
        'if user NOT is found with this name, it redirects to the error page to display a user not found message
        'if user is found but their role is NOT DE or DPS, it redirects to the error page to display a user not authorized message

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
            Response.Redirect("error.aspx?E=User_Not_Found&S=_default.aspx&U=" & strUsername & "&D=" & strDatabase, False)
        ElseIf ds.Tables(0).Rows(0).Item(0).ToString = "DPS" Or ds.Tables(0).Rows(0).Item(0).ToString = "DE" Then
            'these are OK
        Else
            Response.Redirect("error.aspx?E=User_Not_Authorized&S=_default.aspx&U=" & strUsername & "&D=" & strDatabase, False)
        End If
        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()

    End Sub

    Private Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

        'this subroutine fills the displays for the username and database

        Dim strVersion As String

        strVersion = My.Application.Info.Version.Major.ToString() & "." & _
        My.Application.Info.Version.MajorRevision.ToString() & "." & My.Application.Info.Version.Minor.ToString() _
        & "." & My.Application.Info.Version.MinorRevision.ToString()

        LabelUsername.Text = "User: " & strUsername
        LabelDB.Text = "Database: " & strDatabase & " App Version: " & strVersion


    End Sub
End Class