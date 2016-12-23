Imports System.Windows.Forms
Imports System.Security.Principal
Imports System.DirectoryServices.AccountManagement
Imports System.Net

Public Class UserForm5

    Dim myDatabase As New Database

    Private Sub OK_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK_Button.Click
        Dim mydatabase As New Database

        'this subroutine handles the OK button click event of the login form
        'It first authenticates the user against AD - if bad password, displays message and exits
        'It then determines if the user exists in the user table - if not, displays message and exits
        'Finally it determines if the user's role is RAAdmin - if not, displays a message ane exits

        If TextBox2.Text = "" Then
            MsgBox("Please enter a password.", , "No Password")
            Exit Sub
        End If

        Dim myContext As New PrincipalContext(ContextType.Domain, My.Settings.Domain)
        If myContext.ValidateCredentials(My.Settings.Domain & "\" & TextBox1.Text, TextBox2.Text, ContextOptions.SimpleBind) = False Then
            MsgBox("Incorrect User or Password, please try again.", , "Incorrect Login Information")
            Exit Sub
        End If

        If Not mydatabase.Get_UserInfo(TextBox1.Text) Then
            MsgBox("This username is not authorized to use this application.", , "User Not Authorized")
            Exit Sub
        End If

        If Database.gstrUserRole <> "RAAdmin" Then
            MsgBox("This role is not authorized to use this application.", , "Role Not Authorized")
            Database.gstrUserName = ""  'log out
            Exit Sub
        End If

        Me.DialogResult = System.Windows.Forms.DialogResult.OK
        Me.Close()


    End Sub

    Private Sub Cancel_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel_Button.Click

        'This subroutine handles the Cancel button

        Me.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Close()

    End Sub

    Private Sub UserForm5_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label4.Text = My.Application.Info.Version.Major & "." & My.Application.Info.Version.MajorRevision _
        & "." & My.Application.Info.Version.Minor & "." & My.Application.Info.Version.MinorRevision

    End Sub
End Class

