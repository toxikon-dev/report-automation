Imports System.Windows.Forms

Public Class Form1

    Dim myLogin As New UserForm5
    Dim myDatabase As New Database

    Dim myResult As DialogResult

    Private Sub Cancel_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel_Button.Click

        Me.Close()

    End Sub

    Public Sub New()

        InitializeComponent()

    End Sub

    Private Sub bntProxy_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bntRemove.Click

        'This routine handles the Add/Remove Proxy button. If the user is a SD, it opens the Proxy form

        'selected user must be SD
        If ListView1.SelectedItems.Count = 0 Then
            MsgBox("Please select a study director", MsgBoxStyle.Exclamation, "Select Study Director")
            Exit Sub
        End If

        If ListView1.SelectedItems.Item(0).SubItems(2).Text = "QA" Then
            MsgBox("Please select a study director", MsgBoxStyle.Exclamation, "Select Study Director")
            Exit Sub
        End If

        Dim myProxy As New UserForm7
        myResult = myProxy.ShowDialog()

    End Sub

    Private Sub btnSign_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click

        'This subroutine handles the Add/Update signatures button. If a user is selected, it open a file open dialog (to select new signature image)

        If ListView1.SelectedItems.Count = 0 Then
            MsgBox("Please select a user", MsgBoxStyle.Exclamation, "Select User")
            Exit Sub
        End If

        myResult = OpenFileDialog1.ShowDialog()
        If myResult = Windows.Forms.DialogResult.Cancel Then Exit Sub

        myDatabase.Upload_Signature(OpenFileDialog1.FileName)
        PictureBox1.Image = Nothing
        ListView1.Items.Clear()
        myDatabase.LoadList_SDQA(ListView1)

    End Sub

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Me.Hide()

        'Form 1 is the startup form. BUT, before we open it we want to be sure we have valid user and user role

        myResult = myLogin.ShowDialog(Me)
        If myResult = Windows.Forms.DialogResult.Cancel Then
            Me.Close()
            Exit Sub
        End If

        ListView1.Items.Clear()
        myDatabase.LoadList_SDQA(ListView1)

        Me.Show()

    End Sub

    Private Sub ListView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.SelectedIndexChanged

        'This subroutine updates the signature image picturebox when a new user is selected

        If ListView1.SelectedItems.Count > 0 Then
            If ListView1.SelectedItems.Item(0).SubItems(3).Text = "No" Then Exit Sub
            myDatabase.FillPictureBox(PictureBox1)
        End If

    End Sub
End Class