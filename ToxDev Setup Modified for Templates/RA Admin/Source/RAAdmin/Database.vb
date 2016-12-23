Option Explicit On

Imports System.Windows.Forms
Imports System.Net
Imports System.IO

Public Class Database

    Public Shared gstrUserName As String            'set by Get_UserInfo
    Public Shared gstrFullname As String            'set by Get_UserInfo
    Public Shared gintUserID As Integer             'set by Get_UserInfo
    Public Shared gstrUserRole As String            'set by Get_UserInfo

    Dim sConnString As String = My.Settings.DBConnectionString

    Dim oCn As ADODB.Connection
    Dim oCmd As ADODB.Command
    Dim oRs As ADODB.Recordset

    Public Sub LoadList_SDQA(ByRef ListViewControl As ListView)

        'This subroutine load users with the role study director or QA into the ListView control

        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        Dim myDate As DateTime = Now

        oCn.ConnectionString = sConnString

        On Error GoTo ConnectionError
        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandText = "SELECT intUserID, txtFullName, txtUserRole, bloSignature from tblUsers where txtUserRole in ('Study Director', 'QA') order by 2"
        oRs = oCmd.Execute()

        Do Until oRs.EOF
            Dim myItemV As New ListViewItem
            myItemV.Text = (oRs.Fields(0).Value)
            myItemV.SubItems.Add(oRs.Fields(1).Value)
            myItemV.SubItems.Add(oRs.Fields(2).Value)
            If oRs.Fields("bloSignature").Value Is DBNull.Value Then
                myItemV.SubItems.Add("No")
            Else
                myItemV.SubItems.Add("Yes")
            End If
            ListViewControl.Items.Add(myItemV)
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

    Public Sub LoadList_Proxy(ByRef ListViewControl As ListView)

        ' This subroutine loads the unexpired proxies for the userID from the dropdownlist on the form

        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        Dim myDate As DateTime = Now

        oCn.ConnectionString = sConnString

        On Error GoTo ConnectionError
        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandText = "SELECT lngProxyID, txtFullName, dteExpires from tblProxies inner join tblUsers on tblProxies.intProxyID = tblUsers.intUserID where dteExpires >= '" & myDate.Date & "' and tblProxies.intUserID = " & Form1.ListView1.SelectedItems.Item(0).Text & " order by 2"
        oRs = oCmd.Execute()

        Do Until oRs.EOF
            Dim myItemV As New ListViewItem
            myItemV.Text = (oRs.Fields(0).Value)
            myItemV.SubItems.Add(oRs.Fields(1).Value)
            myItemV.SubItems.Add(oRs.Fields(2).Value)
            ListViewControl.Items.Add(myItemV)
            oRs.MoveNext()
        Loop

        oRs.Close()

        oCmd.CommandText = "SELECT intUserID, txtFullName from tblUsers where txtUserRole = 'Study Director' and intUserID <> " & Form1.ListView1.SelectedItems.Item(0).Text & " order by 1"
        oRs = oCmd.Execute()

        UserForm7.garrProxies.Clear()

        Do Until oRs.EOF
            UserForm7.garrProxies.Add(New ProxyUsers(oRs.Fields(0).Value, oRs.Fields(1).Value))
            oRs.MoveNext()
        Loop

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

    Public Sub LoadList_SD(ByRef ListViewControl As ListView)

        'This subroutine loads the ListView with users with the role study director

        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        Dim mydate As DateTime = Now

        oCn.ConnectionString = sConnString

        On Error GoTo ConnectionError
        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandText = "SELECT distinct intUserID, txtFullName, bloSignature from tblUsers where txtUserRole = 'Study Director' order by 2"
        oRs = oCmd.Execute()

        Do Until oRs.EOF
            Dim myItemV As New ListViewItem
            myItemV.Text = (oRs.Fields(0).Value)
            myItemV.SubItems.Add(oRs.Fields(1).Value)
            ListViewControl.Items.Add(myItemV)
            oRs.MoveNext()
        Loop

        oRs.Close()
        On Error GoTo 0
        Exit Sub

ConnectionError:

        MsgBox("Err object, Desc=" & Err.Description & ", Number=" & Err.Number & ", Source=" & Err.Source)
        For x = 0 To oCn.Errors.Count - 1
            MsgBox("ADO Error " & x & ": " & oCn.Errors(x).Number & ", " & oCn.Errors(x).Description & ", " & oCn.Errors(x).Source & ", " & oCn.Errors(x).NativeError & ", " & oCn.Errors(x).SQLState)
        Next

    End Sub


    Public Sub InsertProxy(ByVal intUserID As Integer, ByVal intProxyID As Integer, ByVal strExpires As String)

        'This subroutine insets a proxy record

        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        oCn.ConnectionString = sConnString

        On Error GoTo ConnectionError

        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandText = "Insert into tblProxies (intUserID, intProxyID, dteExpires) values (" & intUserID & "," & intProxyID & ",'" & strExpires & "')"

        oCmd.Execute()

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

    Public Sub RemoveProxy(ByVal lngProxyID As Integer)

        'this subroutine deletes a proxy record

        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        oCn.ConnectionString = sConnString

        On Error GoTo ConnectionError
        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandText = "Delete tblProxies where lngProxyID = " & lngProxyID
        oCmd.Execute()

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

    Public Function Get_UserInfo(ByVal strUserName As String) As Boolean

        'This function sets the globals gstrUsername, gintUserID, gstrFullName and gstrUserRole based on the username passed in
        'If no user with that username exists, the function returns false

        Dim strFileName As String = ""

        oCn = New ADODB.Connection
        oCmd = New ADODB.Command

        oCn.ConnectionString = sConnString

        On Error GoTo ConnectionError

        oCn.Open()
        oCmd.ActiveConnection = oCn
        oCmd.CommandType = ADODB.CommandTypeEnum.adCmdText
        oCmd.CommandText = "select intUserID, txtFullName, txtUserRole from tblUsers where txtUserName='" & Strings.Replace(strUserName, "'", "''") & "'"

        oRs = oCmd.Execute()
        If oRs.EOF Then
            'bad user
            Get_UserInfo = False
            oRs.Close()
            oRs = Nothing
            oCmd = Nothing
            oCn.Close()
            oCn = Nothing

            On Error GoTo 0
            Exit Function
        End If

        gstrUserName = strUserName
        gintUserID = oRs.Fields("intUserID").Value
        gstrFullname = oRs.Fields("txtFullName").Value
        gstrUserRole = oRs.Fields("txtUserRole").Value

        Get_UserInfo = True


        oRs.Close()
        oRs = Nothing
        oCmd = Nothing
        oCn.Close()
        oCn = Nothing

        On Error GoTo 0

        Exit Function

ConnectionError:

        MsgBox("Err object, Desc=" & Err.Description & ", Number=" & Err.Number & ", Source=" & Err.Source)
        For x = 0 To oCn.Errors.Count - 1
            MsgBox("ADO Error " & x & ": " & oCn.Errors(x).Number & ", " & oCn.Errors(x).Description & ", " & oCn.Errors(x).Source & ", " & oCn.Errors(x).NativeError & ", " & oCn.Errors(x).SQLState)
        Next

    End Function

    Public Sub Upload_Signature(ByVal strFilePath)

        'this subroutine updates the signature image field of the user record for the selected user (in dropdownlist)

        Dim strFileName As String = ""

        oCn = New ADODB.Connection
        oRs = New ADODB.Recordset

        oCn.ConnectionString = sConnString

        On Error GoTo ConnectionError
        oCn.Open()
 
        oRs.Open("select * from tblUsers where intuserID='" & Form1.ListView1.SelectedItems.Item(0).Text & "'", oCn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        Dim mstream = New ADODB.Stream
        mstream.Type = ADODB.StreamTypeEnum.adTypeBinary
        mstream.Open()
        mstream.LoadFromFile(strFilePath)
        oRs.Fields("blosignature").Value = mstream.Read()
        oRs.Update()
        mstream.Close()
        mstream = Nothing

        oRs.Close()
        oRs = Nothing
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

    Public Sub FillPictureBox(ByRef pboxPicture As PictureBox)

        'This subroutine loads the signature image for the selected user (dropdownlist) into the picturebox field

        oCn = New ADODB.Connection
        oRs = New ADODB.Recordset

        oCn.ConnectionString = sConnString

        On Error GoTo ConnectionError
        oCn.Open()

        oRs.Open("select bloSignature from tblUsers where intuserID='" & Form1.ListView1.SelectedItems.Item(0).Text & "'", oCn, ADODB.CursorTypeEnum.adOpenStatic)

        Dim RetByte() As Byte = CType(oRs.Fields("bloSignature").Value, Byte())
        Dim PictureBytes As New memorystream(RetByte)

        pboxPicture.Image = Image.FromStream(PictureBytes)

        oRs.Close()
        oRs = Nothing
        oCn.Close()
        oCn = Nothing

        RetByte = Nothing
        PictureBytes = Nothing

        On Error GoTo 0
        Exit Sub

ConnectionError:

        MsgBox("Err object, Desc=" & Err.Description & ", Number=" & Err.Number & ", Source=" & Err.Source)
        For x = 0 To oCn.Errors.Count - 1
            MsgBox("ADO Error " & x & ": " & oCn.Errors(x).Number & ", " & oCn.Errors(x).Description & ", " & oCn.Errors(x).Source & ", " & oCn.Errors(x).NativeError & ", " & oCn.Errors(x).SQLState)
        Next

    End Sub


End Class
