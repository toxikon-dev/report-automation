Imports System.Windows.Forms

Public Class UserForm7
    Dim myDatabase As New Database
    Public Shared garrProxies As New Collections.ArrayList

    Private Sub Cancel_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel_Button.Click
        Me.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Close()
    End Sub

    Public Sub New()

        InitializeComponent()

        'load the unexpired proxies for this user into the ListView

        ListView1.Items.Clear()
        myDatabase.LoadList_Proxy(ListView1)
        ComboBox1.DisplayMember = "Display"
        ComboBox1.ValueMember = "Value"
        ComboBox1.DataSource = garrProxies
        Label1.Text = "Current Proxies for " & Form1.ListView1.SelectedItems.Item(0).SubItems(1).Text

    End Sub

    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click

        Dim myDate As DateTime = Now

        'This subroutine confirms that the proxy entry to be added is valid

        'has a user been selected - combobox not empty
        If ComboBox1.Items.Count < 1 Then
            MsgBox("No other study directors available", MsgBoxStyle.Exclamation, "No Other Study Directors")
            Exit Sub
        End If

        'is date empty?
        If TextBox1.Text = "" Then
            MsgBox("Please enter an expiration date", MsgBoxStyle.Exclamation, "Expiration Date Required")
            Exit Sub
        End If

        'is date valid?
        If IsDate(TextBox1.Text) = False Then
            MsgBox("Invalid date format", MsgBoxStyle.Exclamation, "Invalid Date Format")
            Exit Sub
        End If

        'is date in the future?
        If CDate(TextBox1.Text).Date < myDate.Date Then
            MsgBox("Date must be in the future", MsgBoxStyle.Exclamation, "Date Must be in Future")
            Exit Sub
        End If

        'OK, add to database
        myDatabase.InsertProxy(Form1.ListView1.SelectedItems.Item(0).Text, ComboBox1.SelectedValue, TextBox1.Text)
        ListView1.Items.Clear()
        myDatabase.LoadList_Proxy(ListView1)
        TextBox1.Text = ""

    End Sub

    Private Sub bntRemove_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bntRemove.Click

        'This subroutine removes the selected proxy

        If ListView1.SelectedItems.Count <> 1 Then
            MsgBox("Plesae select a proxy to remove", MsgBoxStyle.Exclamation, "Select a Proxy")
            Exit Sub
        End If

        myDatabase.RemoveProxy(ListView1.SelectedItems.Item(0).Text)
        ListView1.Items.Clear()
        myDatabase.LoadList_Proxy(ListView1)

    End Sub
End Class

Public Class ProxyUsers 'used to load comboboz with list of eligible study directores and their corresponding userID

    Private iValue As Integer
    Private sDisplay As String

    Public Sub New(ByVal Value As Integer, ByVal Display As String)
        Me.iValue = Value
        Me.sDisplay = Display
    End Sub 'New

    Public ReadOnly Property Value() As Integer
        Get
            Return iValue
        End Get
    End Property

    Public ReadOnly Property Display() As String
        Get
            Return sDisplay
        End Get
    End Property

End Class