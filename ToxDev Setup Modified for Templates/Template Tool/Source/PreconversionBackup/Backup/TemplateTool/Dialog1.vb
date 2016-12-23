Imports System.Windows.Forms

Public Class Dialog1

    Public frmFieldList As Dialog2

    Dim oCn As ADODB.Connection
    Dim oCmd As ADODB.Command
    Dim oRs As ADODB.Recordset


    Private Sub OK_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK_Button.Click

        'This subroutine handles the OK button when a user has selected a protocol for the template
        'First, it looks up the query in the protocols table
        'Then, it executes the query
        'Finally, it adds the queries field names to the ListBox, sorting the listbox when done

        Me.DialogResult = System.Windows.Forms.DialogResult.OK

        Dim strSQL As String
        Dim strFieldNames As String()
        Dim intFieldCount As Integer

        frmFieldList = New Dialog2

        If ListBox1.SelectedItems.Count = 0 Then
            MsgBox("Please select a template")
            Exit Sub
        End If

        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        oCn.ConnectionString = Ribbon1.gstrConnString

        On Error GoTo ConnectionError
        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandTimeout = 180
        oCmd.CommandText = "SELECT tblProtocols.txtReportQuery FROM tblProtocols WHERE txtProtocolName = '" & ListBox1.SelectedItem & "'"

        oRs = oCmd.Execute()

        strSQL = oRs.Fields(0).Value & " Where tblOrdinal.intNumeral = 0"
        oRs.Close()

        oCmd.CommandText = strSQL
        oRs = oCmd.Execute()

        intFieldCount = oRs.Fields.Count
        ReDim strFieldNames(intFieldCount - 1)

        For x = 0 To intFieldCount - 1
            strFieldNames(x) = oRs.Fields(x).Name
        Next

        oRs.Close()
        oRs = Nothing
        oCmd = Nothing
        oCn.Close()
        oCn = Nothing

        ListBox1.Items.Clear()
        strFieldNames.Sort(strFieldNames)

        For x = 0 To intFieldCount - 1
            frmFieldList.ListBox1.Items.Add(strFieldNames(x))
        Next

        TemplateTool.Globals.Ribbons.Ribbon1.btnDropDown.Enabled = True
        TemplateTool.Globals.Ribbons.Ribbon1.btnText.Enabled = True
        TemplateTool.Globals.Ribbons.Ribbon1.Gallery1.Enabled = True
        TemplateTool.Globals.Ribbons.Ribbon1.btnRTF.Enabled = True
        TemplateTool.Globals.Ribbons.Ribbon1.btnClose.Enabled = True

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

    Private Sub Dialog1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'This subroutine loads a list of available protocols into ListBox1
        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        oCn.ConnectionString = Ribbon1.gstrConnString

        On Error GoTo ConnectionError
        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandText = "SELECT txtProtocolName from tblProtocols order by 1"
        oRs = oCmd.Execute()

        ListBox1.Items.Clear()

        Do Until oRs.EOF
            ListBox1.Items.Add(oRs.Fields(0).Value)
            oRs.MoveNext()
        Loop

        oRs.Close()
        oRs = Nothing
        oCmd = Nothing
        oCn.Close()
        oCn = Nothing

        On Error GoTo 0
        Exit Sub

ConnectionError:

        MsgBox("Err object, Desc=" & Err.Description & ", Number=" & Err.Number & ", Source=" & Err.Source)
        For x = 0 To oCn.Errors.Count - 1
            MsgBox("ADO Error " & x & ": " & oCn.Errors(x).Number & ", " & oCn.Errors(x).Description & ", " & oCn.Errors(x).Source & ", " & oCn.Errors(x).NativeError & ", " & oCn.Errors(x).SQLState)
        Next

    End Sub

End Class
