Imports Microsoft.Office.Tools.Ribbon

Public Class Ribbon1

    Public frmTemplateList As New Dialog1

    Public Shared gstrControlType As String = "Text"
    Public Shared gstrReportPassword As String = My.Settings.ReportPassword
    Public Shared gstrConnString As String = My.Settings.DBConnectionString
    Public Shared gstrUsername As String = ""

    Private Sub Ribbon1_Load(ByVal sender As System.Object, ByVal e As RibbonUIEventArgs) Handles MyBase.Load

    End Sub

    Private Sub btnOpen_Click(ByVal sender As System.Object, ByVal e As Microsoft.Office.Tools.Ribbon.RibbonControlEventArgs) Handles btnOpen.Click

        'this subroutine handle the Open button
        'First display login if no current user
        'Then get the template to open
        'Then display the available protocols and get the one for this template
        'Then unprotect the template
        'Finally, turn on Developer mode

        If gstrUsername = "" Then
            Dim myLogin As New UserForm5
            myLogin.ShowDialog()
            If myLogin.DialogResult = Windows.Forms.DialogResult.Cancel Then Exit Sub
        End If

        Dim myresults As Windows.Forms.DialogResult

        myresults = OpenFileDialog1.ShowDialog()

        If myresults = Windows.Forms.DialogResult.Cancel Then Exit Sub

        Gallery1.Enabled = False

        TemplateTool.Globals.ThisAddIn.myWord.Documents.Open(CObj(OpenFileDialog1.FileName))
        If TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.ProtectionType <> Word.WdProtectionType.wdNoProtection Then
            TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.Unprotect(CStr(gstrReportPassword))
        End If

        TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.ToggleFormsDesign()

        frmTemplateList.ShowDialog()

    End Sub

    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As Microsoft.Office.Tools.Ribbon.RibbonControlEventArgs) Handles btnClose.Click

        'this button handle the Close template button
        'First determine if any content controls have content controls within them - this is illegal as can't store that kind of content in the database
        'Next turn off Developer mode
        'Next protect the document
        'Finally, save it

        Dim result As Integer = MsgBox.Show("message", "caption", MsgBoxButtons.YesNoCancel)
        If result = DialogResult.Cancel Then
            MsgBox.Show("Cancel pressed")
        ElseIf result = DialogResult.No Then
            MsgBox.Show("No pressed")
        ElseIf result = DialogResult.Yes Then
            MsgBox.Show("Yes pressed")
        End If
        Dim objCC As Microsoft.Office.Interop.Word.ContentControl

        For Each objCC In TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.ContentControls
            If objCC.Range.ContentControls.Count > 0 Then
                MsgBox("Content Control, " & objCC.Tag & ", has an embedded context control. Template not saved.", MsgBoxStyle.Exclamation)
                Exit Sub
            End If
        Next

        TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.ToggleFormsDesign()

        'protect the document for just fill in
        TemplateTool.Globals.ThisAddIn.myWord.Application.Selection.HomeKey(Microsoft.Office.Interop.Word.WdUnits.wdStory, Microsoft.Office.Interop.Word.WdMovementType.wdMove)
        TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.Protect(Word.WdProtectionType.wdAllowOnlyFormFields, , CStr(gstrReportPassword))
        TemplateTool.Globals.ThisAddIn.myWord.ActiveDocument.Close(Word.WdSaveOptions.wdSaveChanges)

        TemplateTool.Globals.Ribbons.Ribbon1.btnClose.Enabled = False
        TemplateTool.Globals.Ribbons.Ribbon1.Gallery1.Enabled = False

    End Sub

    Private Sub btnText_Click(ByVal sender As System.Object, ByVal e As Microsoft.Office.Tools.Ribbon.RibbonControlEventArgs) Handles btnText.Click

        'This subroutine sets the control type to insert and opens a dialog with the list of available fields

        gstrControlType = "Text"
        frmTemplateList.frmFieldList.ShowDialog()

    End Sub

    Private Sub btnDropDown_Click(ByVal sender As System.Object, ByVal e As Microsoft.Office.Tools.Ribbon.RibbonControlEventArgs) Handles btnDropDown.Click

        'This subroutine sets the control type to insert and opens a dialog with the list of available fields

        gstrControlType = "DropDown"
        frmTemplateList.frmFieldList.ShowDialog()
        MsgBox("Remember to enter the valid selections for this drop down. To do so, select the control and click the Properties button of the Controls group on the Developer tab. Then, click the Add... button. The text entered in the Display Name textbox will appear in the drop down. The text entered in the Value textbox is the corresponding value stored in the database", MsgBoxStyle.Information, "Enter Dropdown Value")

    End Sub
    Private Sub btnRTF_Click(ByVal sender As System.Object, ByVal e As Microsoft.Office.Tools.Ribbon.RibbonControlEventArgs) Handles btnRTF.Click

        'This subroutine sets the control type to insert and opens a dialog with the list of available fields
        'This control type is really multi-line text and not RTF

        gstrControlType = "RTF"
        frmTemplateList.frmFieldList.ShowDialog()

    End Sub

End Class
