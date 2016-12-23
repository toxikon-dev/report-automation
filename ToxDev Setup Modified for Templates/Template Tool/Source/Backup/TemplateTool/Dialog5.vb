Imports System.Windows.Forms
Imports System.DirectoryServices.AccountManagement
Imports System.Net

Public Class UserForm5

    Private Sub OK_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK_Button.Click

        'This subroutine confirms username and password against AD - bad user or password means exit
        'It then determines if the user exist in the users table - if not, message and exit
        'Finally it determines the user role - if not DC then message and exit

        If TextBox2.Text = "" Then
            MsgBox("Please enter a password.", , "No Password")
            Exit Sub
        End If

        Dim myContext As New PrincipalContext(ContextType.Domain, My.Settings.Domain)
        If myContext.ValidateCredentials(My.Settings.Domain & "\" & TextBox1.Text, TextBox2.Text, ContextOptions.SimpleBind) = False Then
            MsgBox("Incorrect User or Password, please try again.", , "Incorrect Login Information")
            Exit Sub
        End If

        Dim oCn As ADODB.Connection
        Dim oCmd As ADODB.Command
        Dim oRs As ADODB.Recordset


        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        oCn.ConnectionString = Ribbon1.gstrConnString

        On Error GoTo ConnectionError
        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandText = "SELECT txtUserRole FROM tblUsers WHERE txtusername = '" & TextBox1.Text & "'"

        oRs = oCmd.Execute()

        If oRs.EOF Then
            MsgBox("This username is not authorized to use this application.", , "User Not Authorized")
            Me.DialogResult = Windows.Forms.DialogResult.Cancel
            Me.Close()
            Exit Sub
        ElseIf oRs.Fields(0).Value = "DC" Then
            Ribbon1.gstrUsername = TextBox1.Text
        Else
            MsgBox("This role is not authorized to use this application.", , "Role Not Authorized")
            Me.DialogResult = Windows.Forms.DialogResult.Cancel
            Me.Close()
            Exit Sub
        End If

        Me.DialogResult = System.Windows.Forms.DialogResult.OK
        Me.Close()

        On Error GoTo 0
        Exit Sub

ConnectionError:

        MsgBox("Err object, Desc=" & Err.Description & ", Number=" & Err.Number & ", Source=" & Err.Source)
        For x = 0 To oCn.Errors.Count - 1
            MsgBox("ADO Error " & x & ": " & oCn.Errors(x).Number & ", " & oCn.Errors(x).Description & ", " & oCn.Errors(x).Source & ", " & oCn.Errors(x).NativeError & ", " & oCn.Errors(x).SQLState)
        Next

    End Sub

    Private Sub Cancel_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel_Button.Click

        Me.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Close()

    End Sub

    Private Sub UserForm5_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label4.Text = My.Application.Info.Version.Major & "." & My.Application.Info.Version.MajorRevision _
        & "." & My.Application.Info.Version.Minor & "." & My.Application.Info.Version.MinorRevision

    End Sub
End Class

