Imports System.Security.Principal
Imports System.Data.SqlClient

Partial Public Class Workflow

    Inherits System.Web.UI.Page
    Dim strDatabase As String
    Dim strUsername As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'this subroutine looks up user role from current identity
        'if user NOT is found with this name, it redirects to the error page to display a user not found message
        'if user is found but their role is NOT DE or DPS, it redirects to the error page to display a user not authorized messageDim CurrentIdentity As WindowsIdentity = WindowsIdentity.GetCurrent

        'THE CODE IS COMMENTED OUT BECAUSE IT'S NOT CLEAR IF THERE SHOULD BE ANY RESTRICTIONS FROM THIS PAGE

        Dim CurrentIdentity As WindowsIdentity = WindowsIdentity.GetCurrent

        Dim conStr As String = ConfigurationManager.ConnectionStrings("ToxikonConnectionString").ConnectionString
        'Dim strScript As String = ""
        'Dim sql As String
        'sql = "Select txtUserRole from tblUsers where txtUsername = '" & Mid(CurrentIdentity.Name, InStr(CurrentIdentity.Name, "\") + 1) & "'"

        Dim sqlCon As New SqlConnection(conStr)
        'Dim getOutcomeCommand As New SqlCommand(sql, sqlCon)
        'Dim da As New SqlDataAdapter(getOutcomeCommand)
        'Dim ds As New DataSet()

        'sqlCon.Open()
        strDatabase = sqlCon.Database
        strUsername = CurrentIdentity.Name
        'da.Fill(ds)
        'If ds.Tables(0).Rows.Count = 0 Then
        '    Response.Redirect("error.aspx?E=User_Not_Found&S=_default.aspx&U=" & strUsername & "&D=" & strDatabase, False)
        'ElseIf ds.Tables(0).Rows(0).Item(0).ToString = "DPS" Or ds.Tables(0).Rows(0).Item(0).ToString = "DE" Then
        '    'these are OK
        'Else
        '    Response.Redirect("error.aspx?E=User_Not_Authorized&S=_default.aspx&U=" & strUsername & "&D=" & strDatabase, False)
        'End If
        'ds.Dispose()
        'da.Dispose()
        'getOutcomeCommand.Dispose()
        'sqlCon.Close()
        sqlCon.Dispose()

    End Sub

    Private Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

        'This subroutine handles setting the username and database labels

        LabelUsername.Text = "User: " & strUsername
        LabelDB.Text = "Database: " & strDatabase

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        'this subroutine builds the select command to filter the records according to the dropdown settings

        Dim mySelect As String = ""
        Dim mySort As String = ""
        Dim mySQL As String = ""

        If DropDownList1.SelectedValue <> " ALL" Then
            If mySelect = "" Then
                mySelect = "txtSponsorName='" & DropDownList1.SelectedValue & "'"
            Else
                mySelect = mySelect & " and txtSponsorName='" & DropDownList1.SelectedValue & "'"
            End If
        End If


        If DropDownList2.SelectedValue <> " ALL" Then
            If mySelect = "" Then
                mySelect = "txtFullName='" & DropDownList2.SelectedValue & "'"
            Else
                mySelect = mySelect & " and txtFullName='" & DropDownList2.SelectedValue & "'"
            End If
        End If


        If DropDownList3.SelectedValue <> " ALL" Then
            If mySelect = "" Then
                mySelect = "txtProtocolNumber='" & DropDownList3.SelectedValue & "'"
            Else
                mySelect = mySelect & " and txtProtocolNumber='" & DropDownList3.SelectedValue & "'"
            End If
        End If


        If DropDownList4.SelectedValue <> " ALL" Then
            If mySelect = "" Then
                mySelect = "txtDepartment='" & DropDownList4.SelectedValue & "'"
            Else
                mySelect = mySelect & " and txtDepartment='" & DropDownList4.SelectedValue & "'"
            End If
        End If

        If CheckBox1.Checked Then
            DropDownList7.SelectedIndex = 0 'completed overrides status
            If mySelect = "" Then
                mySelect = "txtStatus='SD approved'"
            Else
                mySelect = mySelect & " and txtStatus='SD approved'"
            End If
        End If

        If DropDownList7.SelectedValue <> "ALL" Then
            If mySelect = "" Then
                mySelect = "txtStatus='" & DropDownList7.SelectedValue & "'"
            Else
                mySelect = mySelect & " and txtStatus='" & DropDownList7.SelectedValue & "'"
            End If
        End If

        If TextBox1.Text <> "" And TextBox2.Text = "" Then  'start but no end
            If mySelect = "" Then
                mySelect = "dteStudyInitiationDate >= '" & TextBox1.Text & "'"
            Else
                mySelect = mySelect & " and dteStudyInitiationDate='" & TextBox1.Text & "'"
            End If
        End If

        If TextBox1.Text = "" And TextBox2.Text <> "" Then  'start but no end
            If mySelect = "" Then
                mySelect = "dteStudyInitiationDate <= '" & TextBox2.Text & "'"
            Else
                mySelect = mySelect & " and dteStudyInitiationDate='" & TextBox2.Text & "'"
            End If
        End If

        If TextBox1.Text <> "" And TextBox2.Text <> "" Then
            If mySelect = "" Then
                mySelect = "dteStudyInitiationDate between '" & TextBox1.Text & "' and '" & TextBox2.Text & "'"
            Else
                mySelect = mySelect & " and dteStudyInitiationDate between '" & TextBox1.Text & "' and '" & TextBox2.Text & "'"
            End If
        End If

        Select Case DropDownList5.SelectedValue
            Case "Study Number"
                If mySort = "" Then
                    mySort = "txtStudyNumber"
                Else
                    mySort = mySelect & ", txtStudyNumber"
                End If
            Case "Sponsor"
                If mySort = "" Then
                    mySort = "txtSponsorName"
                Else
                    mySort = mySelect & ", txtSponsorName"
                End If
            Case "Study Director"
                If mySort = "" Then
                    mySort = "txtFullName"
                Else
                    mySort = mySelect & ", txtFullName"
                End If
            Case "Protocol"
                If mySort = "" Then
                    mySort = "txtProtocolNumber"
                Else
                    mySort = mySelect & ", txtProtocolNumber"
                End If
            Case "Department"
                If mySort = "" Then
                    mySort = "txtDepartment"
                Else
                    mySort = mySelect & ", txtDepartment"
                End If
        End Select


        Select Case DropDownList6.SelectedValue
            Case "Sponsor"
                If mySort = "" Then
                    mySort = "txtSponsorName"
                Else
                    mySort = mySort & ", txtSponsorName"
                End If
            Case "Study Director"
                If mySort = "" Then
                    mySort = "txtFullName"
                Else
                    mySort = mySort & ", txtFullName"
                End If
            Case "Protocol"
                If mySort = "" Then
                    mySort = "txtProtocolNumber"
                Else
                    mySort = mySort & ", txtProtocolNumber"
                End If
            Case "Department"
                If mySort = "" Then
                    mySort = "txtDepartment"
                Else
                    mySort = mySort & ", txtDepartment"
                End If
        End Select

        mySQL = "select * from workflowreport "

        If mySelect <> "" Then
            mySQL = mySQL & " where " & mySelect
        End If

        If mySort <> "" Then
            mySQL = mySQL & " order by " & mySort
        End If

        SqlDataSource1.SelectCommand = mySQL
        SqlDataSource1.DataBind()
        Session("SQL") = mySQL

    End Sub

    Private Sub ListView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DataBound

        'this subroutine sets the record count label at the end of the listview

        LabelRecordsReturned.Text = "Report Count: " & ListView1.Items.Count

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click

        'this subroutine opens the last query and writes the records out to a CSV attachment

        'write the header and content info
        Dim attachment As String = "attachment; filename=workflow.csv"
        HttpContext.Current.Response.Clear()
        HttpContext.Current.Response.ClearHeaders()
        HttpContext.Current.Response.ClearContent()
        HttpContext.Current.Response.AddHeader("content-disposition", attachment)
        HttpContext.Current.Response.ContentType = "text/csv"
        HttpContext.Current.Response.AddHeader("Pragma", "public")

        'Write the column headers
        HttpContext.Current.Response.Write(Chr(34) & "Study Number" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Dept" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Sponsor Name" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Study Director" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Protocol Name" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Test Initiation Date" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Test Completion Date" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Final Report Date" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Date of Last Amendment" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Project Log Date" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Extraction Start Date" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Extraction End Date" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Study Initiation Date" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Last Action" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Last Action Date" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Last Report Version" & Chr(34) & ",")
        HttpContext.Current.Response.Write(Chr(34) & "Status" & Chr(34))
        HttpContext.Current.Response.Write(Environment.NewLine)

        'open the query and write out the fields
        Dim conStr As String = ConfigurationManager.ConnectionStrings("ToxikonConnectionString").ConnectionString
        Dim strScript As String = ""

        Dim sqlCon As New SqlConnection(conStr)
        Dim getOutcomeCommand As New SqlCommand(Session("SQL"), sqlCon)
        Dim da As New SqlDataAdapter(getOutcomeCommand)
        Dim ds As New DataSet()

        sqlCon.Open()
        da.Fill(ds)
        For x = 0 To ds.Tables(0).Rows.Count - 1
            For y = 0 To 16
                HttpContext.Current.Response.Write(Chr(34) & ds.Tables(0).Rows(x).Item(y).ToString & Chr(34))
                If y < 16 Then HttpContext.Current.Response.Write(",")
            Next
            HttpContext.Current.Response.Write(Environment.NewLine)
        Next
        HttpContext.Current.Response.End()

        ds.Dispose()
        da.Dispose()
        getOutcomeCommand.Dispose()
        sqlCon.Close()
        sqlCon.Dispose()

    End Sub

End Class