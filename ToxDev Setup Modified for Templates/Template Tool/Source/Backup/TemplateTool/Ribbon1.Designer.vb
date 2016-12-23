Partial Class Ribbon1
    Inherits Microsoft.Office.Tools.Ribbon.OfficeRibbon

    <System.Diagnostics.DebuggerNonUserCode()> _
   Public Sub New(ByVal container As System.ComponentModel.IContainer)
        MyClass.New()

        'Required for Windows.Forms Class Composition Designer support
        If (container IsNot Nothing) Then
            container.Add(Me)
        End If

    End Sub

    <System.Diagnostics.DebuggerNonUserCode()> _
    Public Sub New()
        MyBase.New()

        'This call is required by the Component Designer.
        InitializeComponent()

    End Sub

    'Component overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Component Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Component Designer
    'It can be modified using the Component Designer.
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.Tab1 = New Microsoft.Office.Tools.Ribbon.RibbonTab
        Me.Group1 = New Microsoft.Office.Tools.Ribbon.RibbonGroup
        Me.btnOpen = New Microsoft.Office.Tools.Ribbon.RibbonButton
        Me.Gallery1 = New Microsoft.Office.Tools.Ribbon.RibbonGallery
        Me.btnText = New Microsoft.Office.Tools.Ribbon.RibbonButton
        Me.btnDropDown = New Microsoft.Office.Tools.Ribbon.RibbonButton
        Me.btnRTF = New Microsoft.Office.Tools.Ribbon.RibbonButton
        Me.btnClose = New Microsoft.Office.Tools.Ribbon.RibbonButton
        Me.OpenFileDialog1 = New System.Windows.Forms.OpenFileDialog
        Me.Tab1.SuspendLayout()
        Me.Group1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Tab1
        '
        Me.Tab1.ControlId.ControlIdType = Microsoft.Office.Tools.Ribbon.RibbonControlIdType.Office
        Me.Tab1.Groups.Add(Me.Group1)
        Me.Tab1.Label = "TabAddIns"
        Me.Tab1.Name = "Tab1"
        '
        'Group1
        '
        Me.Group1.Items.Add(Me.btnOpen)
        Me.Group1.Items.Add(Me.Gallery1)
        Me.Group1.Items.Add(Me.btnClose)
        Me.Group1.Label = "Template Tool"
        Me.Group1.Name = "Group1"
        '
        'btnOpen
        '
        Me.btnOpen.Label = "Open Template"
        Me.btnOpen.Name = "btnOpen"
        '
        'Gallery1
        '
        Me.Gallery1.Buttons.Add(Me.btnText)
        Me.Gallery1.Buttons.Add(Me.btnDropDown)
        Me.Gallery1.Buttons.Add(Me.btnRTF)
        Me.Gallery1.Enabled = False
        Me.Gallery1.Label = "Insert Control"
        Me.Gallery1.Name = "Gallery1"
        '
        'btnText
        '
        Me.btnText.Label = "Text"
        Me.btnText.Name = "btnText"
        '
        'btnDropDown
        '
        Me.btnDropDown.Label = "Dropdown"
        Me.btnDropDown.Name = "btnDropDown"
        '
        'btnRTF
        '
        Me.btnRTF.Label = "Paragraph"
        Me.btnRTF.Name = "btnRTF"
        '
        'btnClose
        '
        Me.btnClose.Enabled = False
        Me.btnClose.Label = "Save && Close Template"
        Me.btnClose.Name = "btnClose"
        '
        'OpenFileDialog1
        '
        Me.OpenFileDialog1.Filter = "Microsoft Word 2007 Templates (*.dotx)|*.dotx"
        '
        'Ribbon1
        '
        Me.Name = "Ribbon1"
        Me.RibbonType = "Microsoft.Word.Document"
        Me.Tabs.Add(Me.Tab1)
        Me.Tab1.ResumeLayout(False)
        Me.Tab1.PerformLayout()
        Me.Group1.ResumeLayout(False)
        Me.Group1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents Tab1 As Microsoft.Office.Tools.Ribbon.RibbonTab
    Friend WithEvents Group1 As Microsoft.Office.Tools.Ribbon.RibbonGroup
    Friend WithEvents btnOpen As Microsoft.Office.Tools.Ribbon.RibbonButton
    Friend WithEvents OpenFileDialog1 As System.Windows.Forms.OpenFileDialog
    Friend WithEvents btnClose As Microsoft.Office.Tools.Ribbon.RibbonButton
    Friend WithEvents Gallery1 As Microsoft.Office.Tools.Ribbon.RibbonGallery
    Friend WithEvents btnText As Microsoft.Office.Tools.Ribbon.RibbonButton
    Friend WithEvents btnDropDown As Microsoft.Office.Tools.Ribbon.RibbonButton
    Friend WithEvents btnRTF As Microsoft.Office.Tools.Ribbon.RibbonButton
End Class

Partial Class ThisRibbonCollection
    Inherits Microsoft.Office.Tools.Ribbon.RibbonReadOnlyCollection

    <System.Diagnostics.DebuggerNonUserCode()> _
    Friend ReadOnly Property Ribbon1() As Ribbon1
        Get
            Return Me.GetRibbon(Of Ribbon1)()
        End Get
    End Property
End Class
