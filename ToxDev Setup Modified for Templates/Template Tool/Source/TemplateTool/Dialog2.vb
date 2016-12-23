Imports System.Windows.Forms

Public Class Dialog2

    Private Sub OK_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK_Button.Click

        'This subroutine inserts a content control - text, dropdown or paragraph (text multiline)

        Me.DialogResult = System.Windows.Forms.DialogResult.OK

        Dim myCC As Microsoft.Office.Interop.Word.ContentControl = Nothing
        Dim myRange As Microsoft.Office.Interop.Word.Range

        If ListBox1.SelectedItems.Count = 0 Then
            MsgBox("Please select a field")
            Exit Sub
        End If
        myRange = TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.ActiveWindow.Selection.Range
        myRange.Collapse(Word.WdCollapseDirection.wdCollapseStart)
        If myRange.ParentContentControl Is Nothing Then
        Else
            MsgBox("Content control cannot be within a content control.")
            Exit Sub
        End If
        Select Case Ribbon1.gstrControlType
            Case "Text"
                myCC = TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.ContentControls.Add(Word.WdContentControlType.wdContentControlText, CObj(myRange))
                myCC.Range.Font.Color = Word.WdColor.wdColorBlack
                myCC.Range.Text = " "
            Case "DropDown"
                myCC = TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.ContentControls.Add(Word.WdContentControlType.wdContentControlDropdownList, CObj(myRange))
                myCC.Range.Text = " "
                myCC.Range.Font.Color = Word.WdColor.wdColorBlack
            Case "RTF"
                myCC = TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.ContentControls.Add(Word.WdContentControlType.wdContentControlText, CObj(myRange))
                myCC.MultiLine = True
                myCC.Range.Text = " "
                myCC.Range.Font.Color = Word.WdColor.wdColorBlack
        End Select
        myCC.Tag = ListBox1.SelectedItem
        myCC.Title = ListBox1.SelectedItem
        myCC.SetPlaceholderText(, , ListBox1.SelectedItem)
        myCC.LockContentControl = True
        myCC.LockContents = True
        myCC = Nothing
        Me.Close()

    End Sub

    Private Sub Cancel_Button_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel_Button.Click

        Me.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Close()

    End Sub

End Class
