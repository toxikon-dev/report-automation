<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="workflow.aspx.vb" Inherits="RAForms.Workflow, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" EnableSessionState="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 143px;
        }
        .style2
        {
            width: 139px;
            text-align: right;
        }
        .style4
        {
            width: 99px;
        }
        .style5
        {
            width: 143px;
            text-align: right;
            height: 11px;
        }
        .style8
        {
            width: 400px;
            height: 11px;
        }
        .style9
        {
            width: 143px;
            text-align: right;
        }
        .style10
        {
            width: 204px;
        }
        .style13
        {
            width: 127px;
        }
        .style15
        {
            width: 99px;
            text-align: right;
        }
        .style16
        {
            width: 204px;
            text-align: right;
        }
        .style17
        {
            width: 217px;
        }
        .style18
        {
            width: 217px;
            text-align: right;
        }
        .style19
        {
            width: 217px;
            height: 11px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" title="Toxikon Data Entry">
    <table>
        <tr>
            <td class="style1">
                <img alt="Logo" height="29" width="142" src="logo.jpg" />
            </td>
            <td align="right" 
                style="font-weight: bold; font-size: medium; font-style: italic" 
                class="style13">
                &nbsp;</td>
            <td align="right" 
                style="font-weight: bold; font-size: medium; font-style: italic" class="style4">
                &nbsp;</td>
            <td align="right" 
                style="font-weight: bold; font-size: medium; font-style: italic" 
                class="style10">
                &nbsp;</td>
            <td align="right" 
                style="font-weight: bold; font-size: medium; font-style: italic" 
                class="style17">
                &nbsp;</td>
            <td align="right" style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                Report Automation</td>
        </tr>
        <tr>
            <td class="style9">
                Sponsor:</td>
            <td align="left" 
                style="font-weight: bold; font-size: medium; font-style: italic" 
                class="style13">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="False" 
                    DataSourceID="SqlDataSource2" DataTextField="txtSponsorName" 
                    DataValueField="txtSponsorName">
                </asp:DropDownList>
            </td>
            <td class="style2">
                Study Director:</td>
            <td align="left" 
                style="font-weight: bold; font-size: medium; font-style: italic" 
                class="style13">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="False" 
                    DataSourceID="SqlDataSource3" DataTextField="txtFullName" 
                    DataValueField="txtFullName">
                </asp:DropDownList>
            </td>
            <td class="style18">
                Status:</td>
            <td align="left" style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem>ALL</asp:ListItem>
                    <asp:ListItem>Waiting review</asp:ListItem>
                    <asp:ListItem>Report started</asp:ListItem>
                    <asp:ListItem>Base info verified</asp:ListItem>
                    <asp:ListItem>Base info rejected</asp:ListItem>
                    <asp:ListItem>Conclusion started</asp:ListItem>
                    <asp:ListItem>Conclusion confirmed</asp:ListItem>
                    <asp:ListItem>QA approved</asp:ListItem>
                    <asp:ListItem>QA rejected</asp:ListItem>
                    <asp:ListItem>SD signed</asp:ListItem>
                    <asp:ListItem>Data amended</asp:ListItem>
                    <asp:ListItem>Conclusion amended</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Protocol:</td>
            <td align="left" 
                style="font-weight: bold; font-size: medium; font-style: italic" 
                class="style13">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="False" 
                    DataSourceID="SqlDataSource4" DataTextField="txtProtocolNumber" 
                    DataValueField="txtProtocolNumber">
                </asp:DropDownList>
            </td>
            <td class="style2">
                Department:</td>
            <td align="left" 
                style="font-weight: bold; font-size: medium; font-style: italic" 
                class="style10">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource5" DataTextField="txtDepartment" 
                    DataValueField="txtDepartment">
                </asp:DropDownList>
            </td>
            <td class="style18">
                Completed Reports Only:</td>
            <td align="left" style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                <asp:CheckBox ID="CheckBox1" runat="server" Text=" " />
            </td>
        </tr>
                <tr>
            <td class="style2">
                Study Init Start:</td>
            <td align="left" 
                class="style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Invalid date" ControlToValidate="TextBox1" 
                    Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </td>
            <td class="style2">
                Study Init End:</td>
            <td align="left" 
                class="style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ErrorMessage="Invalid date" ControlToValidate="TextBox2" 
                    Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </td>
            <td align="left" 
                style="font-weight: bold; font-size: medium; font-style: italic" class="style19">
                &nbsp;</td>
            <td align="left" 
                style="font-weight: bold; font-size: medium; font-style: italic" class="style8">
                &nbsp;</td>
        </tr>
                <tr>
            <td class="style9">
                First
                Sort By:
            </td>        
            <td align="left" 
                style="font-weight: bold; font-size: medium; font-style: italic" class="style13">
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>Study Number</asp:ListItem>
                    <asp:ListItem>Sponsor</asp:ListItem>
                    <asp:ListItem>Study Director</asp:ListItem>
                    <asp:ListItem>Protocol</asp:ListItem>
                    <asp:ListItem>Department</asp:ListItem>
                </asp:DropDownList>
             </td>
            <td align="left" 
                class="style18">
                Then Sort By:</td>
            <td align="left" style="font-weight: bold; font-size: medium; font-style: italic" 
                        class="style10">
                <asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Study Number</asp:ListItem>
                    <asp:ListItem>Sponsor</asp:ListItem>
                    <asp:ListItem>Study Director</asp:ListItem>
                    <asp:ListItem>Protocol</asp:ListItem>
                    <asp:ListItem>Department</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="left" style="font-weight: bold; font-size: medium; font-style: italic" 
                        class="style17">
                &nbsp;</td>
            <td align="left" style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                <asp:Button ID="Button1" runat="server" Text="Go" />&nbsp;&nbsp;
                <input type="button" value="Print" onclick="window.print();">&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Export to Excel" />
            </td>
        </tr>
        </table>

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="txtStudyNumber" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="txtStudyNumberLabel" runat="server" 
                        Text='<%# Eval("txtStudyNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="txtDepartmentLabel" runat="server" 
                        Text='<%# Eval("txtDepartment") %>' />
                </td>
                <td>
                    <asp:Label ID="txtSponsorNameLabel" runat="server" 
                        Text='<%# Eval("txtSponsorName") %>' />
                </td>
                <td>
                    <asp:Label ID="txtFullNameLabel" runat="server" 
                        Text='<%# Eval("txtFullName") %>' />
                </td>
                <td>
                    <asp:Label ID="txtProtocolNumberLabel" runat="server" 
                        Text='<%# Eval("txtProtocolNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="xtxStatusLabel" runat="server" 
                        Text='<%# Eval("txtStatus") %>' />
                </td>
                <td>
                    <asp:Label ID="dteProjectLogDateLabel" runat="server" 
                        Text='<%# Eval("dteProjectLogDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteStudyInitiationDateLabel" runat="server" 
                        Text='<%# Eval("dteStudyInitiationDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteTestInitiationDateLabel" runat="server" 
                        Text='<%# Eval("dteTestInitiationDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteExtractionStartDateLabel" runat="server" 
                        Text='<%# Eval("dteExtractionStartDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteExtractionEndDateLabel" runat="server" 
                        Text='<%# Eval("dteExtractionEndDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteTestCompletionDateLabel" runat="server" 
                        Text='<%# Eval("dteTestCompletionDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteFinalReportDateLabel" runat="server" 
                        Text='<%# Eval("dteFinalReportDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteLastAmendDateLabel" runat="server" 
                        Text='<%# Eval("dteLastAmendDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="txtActionLabel" runat="server" Text='<%# Eval("txtAction") %>' />
                </td>
                <td>
                    <asp:Label ID="dteCreatedDateTimeLabel" runat="server" 
                        Text='<%# Eval("dteCreatedDateTime", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="txtDocumentVersionLabel" runat="server" 
                        Text='<%# Eval("txtDocumentVersion") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="txtStudyNumberLabel" runat="server" 
                        Text='<%# Eval("txtStudyNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="txtDepartmentLabel" runat="server" 
                        Text='<%# Eval("txtDepartment") %>' />
                </td>
                <td>
                    <asp:Label ID="txtSponsorNameLabel" runat="server" 
                        Text='<%# Eval("txtSponsorName") %>' />
                </td>
                <td>
                    <asp:Label ID="txtFullNameLabel" runat="server" 
                        Text='<%# Eval("txtFullName") %>' />
                </td>
                <td>
                    <asp:Label ID="txtProtocolNumberLabel" runat="server" 
                        Text='<%# Eval("txtProtocolNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="xtxStatusLabel" runat="server" 
                        Text='<%# Eval("txtStatus") %>' />
                </td>
                <td>
                    <asp:Label ID="dteProjectLogDateLabel" runat="server" 
                        Text='<%# Eval("dteProjectLogDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteStudyInitiationDateLabel" runat="server" 
                        Text='<%# Eval("dteStudyInitiationDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteTestInitiationDateLabel" runat="server" 
                        Text='<%# Eval("dteTestInitiationDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteExtractionStartDateLabel" runat="server" 
                        Text='<%# Eval("dteExtractionStartDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteExtractionEndDateLabel" runat="server" 
                        Text='<%# Eval("dteExtractionEndDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteTestCompletionDateLabel" runat="server" 
                        Text='<%# Eval("dteTestCompletionDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteFinalReportDateLabel" runat="server" 
                        Text='<%# Eval("dteFinalReportDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="dteLastAmendDateLabel" runat="server" 
                        Text='<%# Eval("dteLastAmendDate", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="txtActionLabel" runat="server" Text='<%# Eval("txtAction") %>' />
                </td>
                <td>
                    <asp:Label ID="dteCreatedDateTimeLabel" runat="server" 
                        Text='<%# Eval("dteCreatedDateTime", "{0:MM/dd/yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="txtDocumentVersionLabel" runat="server" 
                        Text='<%# Eval("txtDocumentVersion") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" >
                <tr>
                    <td id="Td1" runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="Tr2" runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th id="Th1" runat="server">
                                   Study Number</th>
                                <th id="Th2" runat="server">
                                    Dept</th>
                                <th id="Th3" runat="server">
                                    Sponsor Name</th>
                                <th id="Th4" runat="server">
                                    Study Director</th>
                                <th id="Th5" runat="server">
                                    Protocol Name</th>
                                <th id="Th6" runat="server">
                                    Status</th>
                                <th id="Th7" runat="server">
                                    Project Log Date</th>
                                <th id="Th8" runat="server">
                                    Study Initiation Date</th>
                                <th id="Th9" runat="server">
                                    Test Initiation Date</th>
                                <th id="Th10" runat="server">
                                    Extraction Start Date</th>
                                <th id="Th11" runat="server">
                                    Extraction End Date</th>                                   
                                <th id="Th12" runat="server">
                                    Test Completion Date</th>
                                <th id="Th13" runat="server">
                                    Final Report Date</th>
                                <th id="Th14" runat="server">
                                    Date of Last Amendment</th>
                                <th id="Th15" runat="server">
                                    Last Action</th>
                                <th id="Th16" runat="server">
                                    Last Action Date</th>
                                <th id="Th17" runat="server">
                                    Last Report Version</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="txtStudyNumberTextBox" runat="server" 
                        Text='<%# Bind("txtStudyNumber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtDepartmentTextBox" runat="server" 
                        Text='<%# Bind("txtDepartment") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtSponsorNameTextBox" runat="server" 
                        Text='<%# Bind("txtSponsorName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtFullNameTextBox" runat="server" 
                        Text='<%# Bind("txtFullName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtProtocolNumberTextBox" runat="server" 
                        Text='<%# Bind("txtProtocolNumber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteTestInitiationDateTextBox" runat="server" 
                        Text='<%# Bind("dteTestInitiationDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteTestCompletionDateTextBox" runat="server" 
                        Text='<%# Bind("dteTestCompletionDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteFinalReportDateTextBox" runat="server" 
                        Text='<%# Bind("dteFinalReportDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteLastAmendDateTextBox" runat="server" 
                        Text='<%# Bind("dteLastAmendDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteProjectLogDateTextBox" runat="server" 
                        Text='<%# Bind("dteProjectLogDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteExtractionStartDateTextBox" runat="server" 
                        Text='<%# Bind("dteExtractionStartDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteExtractionEndDateTextBox" runat="server" 
                        Text='<%# Bind("dteExtractionEndDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteStudyInitiationDateTextBox" runat="server" 
                        Text='<%# Bind("dteStudyInitiationDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtActionTextBox" runat="server" 
                        Text='<%# Bind("txtAction") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteCreatedDateTimeTextBox" runat="server" 
                        Text='<%# Bind("dteCreatedDateTime") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtDocumentVersionTextBox" runat="server" 
                        Text='<%# Bind("txtDocumentVersion") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                   Study Number</th>
                                <th runat="server">
                                    Dept</th>
                                <th runat="server">
                                    Sponsor Name</th>
                                <th runat="server">
                                    Study Director</th>
                                <th runat="server">
                                    Protocol Name</th>
                                <th runat="server">
                                    Status</th>
                                <th runat="server">
                                    Project Log Date</th>
                                <th runat="server">
                                    Study Initiation Date</th>
                                <th runat="server">
                                    Test Initiation Date</th>
                                <th runat="server">
                                    Extraction Start Date</th>
                                <th runat="server">
                                    Extraction End Date</th>                                   
                                <th runat="server">
                                    Test Completion Date</th>
                                <th runat="server">
                                    Final Report Date</th>
                                <th runat="server">
                                    Date of Last Amendment</th>
                                <th runat="server">
                                    Last Action</th>
                                <th runat="server">
                                    Last Action Date</th>
                                <th runat="server">
                                    Last Report Version</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="txtStudyNumberLabel1" runat="server" 
                        Text='<%# Eval("txtStudyNumber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtDepartmentTextBox" runat="server" 
                        Text='<%# Bind("txtDepartment") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtSponsorNameTextBox" runat="server" 
                        Text='<%# Bind("txtSponsorName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtFullNameTextBox" runat="server" 
                        Text='<%# Bind("txtFullName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtProtocolNumberTextBox" runat="server" 
                        Text='<%# Bind("txtProtocolNumber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteTestInitiationDateTextBox" runat="server" 
                        Text='<%# Bind("dteTestInitiationDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteTestCompletionDateTextBox" runat="server" 
                        Text='<%# Bind("dteTestCompletionDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteFinalReportDateTextBox" runat="server" 
                        Text='<%# Bind("dteFinalReportDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteLastAmendDateTextBox" runat="server" 
                        Text='<%# Bind("dteLastAmendDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteProjectLogDateTextBox" runat="server" 
                        Text='<%# Bind("dteProjectLogDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteExtractionStartDateTextBox" runat="server" 
                        Text='<%# Bind("dteExtractionStartDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteExtractionEndDateTextBox" runat="server" 
                        Text='<%# Bind("dteExtractionEndDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteStudyInitiationDateTextBox" runat="server" 
                        Text='<%# Bind("dteStudyInitiationDate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtActionTextBox" runat="server" 
                        Text='<%# Bind("txtAction") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dteCreatedDateTimeTextBox" runat="server" 
                        Text='<%# Bind("dteCreatedDateTime") %>' />
                </td>
                <td>
                    <asp:TextBox ID="txtDocumentVersionTextBox" runat="server" 
                        Text='<%# Bind("txtDocumentVersion") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="txtStudyNumberLabel" runat="server" 
                        Text='<%# Eval("txtStudyNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="txtDepartmentLabel" runat="server" 
                        Text='<%# Eval("txtDepartment") %>' />
                </td>
                <td>
                    <asp:Label ID="txtSponsorNameLabel" runat="server" 
                        Text='<%# Eval("txtSponsorName") %>' />
                </td>
                <td>
                    <asp:Label ID="txtFullNameLabel" runat="server" 
                        Text='<%# Eval("txtFullName") %>' />
                </td>
                <td>
                    <asp:Label ID="txtProtocolNumberLabel" runat="server" 
                        Text='<%# Eval("txtProtocolNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="dteTestInitiationDateLabel" runat="server" 
                        Text='<%# Eval("dteTestInitiationDate") %>' />
                </td>
                <td>
                    <asp:Label ID="dteTestCompletionDateLabel" runat="server" 
                        Text='<%# Eval("dteTestCompletionDate") %>' />
                </td>
                <td>
                    <asp:Label ID="dteFinalReportDateLabel" runat="server" 
                        Text='<%# Eval("dteFinalReportDate") %>' />
                </td>
                <td>
                    <asp:Label ID="dteLastAmendDateLabel" runat="server" 
                        Text='<%# Eval("dteLastAmendDate") %>' />
                </td>
                <td>
                    <asp:Label ID="dteProjectLogDateLabel" runat="server" 
                        Text='<%# Eval("dteProjectLogDate") %>' />
                </td>
                <td>
                    <asp:Label ID="dteExtractionStartDateLabel" runat="server" 
                        Text='<%# Eval("dteExtractionStartDate") %>' />
                </td>
                <td>
                    <asp:Label ID="dteExtractionEndDateLabel" runat="server" 
                        Text='<%# Eval("dteExtractionEndDate") %>' />
                </td>
                <td>
                    <asp:Label ID="dteStudyInitiationDateLabel" runat="server" 
                        Text='<%# Eval("dteStudyInitiationDate") %>' />
                </td>
                <td>
                    <asp:Label ID="txtActionLabel" runat="server" Text='<%# Eval("txtAction") %>' />
                </td>
                <td>
                    <asp:Label ID="dteCreatedDateTimeLabel" runat="server" 
                        Text='<%# Eval("dteCreatedDateTime") %>' />
                </td>
                <td>
                    <asp:Label ID="txtDocumentVersionLabel" runat="server" 
                        Text='<%# Eval("txtDocumentVersion") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:Label ID="LabelRecordsReturned" runat="server" Text="Report Count: "></asp:Label>&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="SELECT * FROM [WorkFlowReport] where txtStatus='UNKNOWN' order by txtStudyNumber"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT txtSponsorName FROM tblSamples union select ' ALL' from tblempty ORDER BY 1">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT txtFullName FROM tblUsers where txtUserRole = 'Study Director' union select ' ALL' from tblempty ORDER BY 1">
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT txtProtocolNumber FROM tblProjects union select ' ALL' from tblempty ORDER BY 1">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT txtDepartment FROM tblProjects union select ' ALL' from tblempty ORDER BY 1">
    </asp:SqlDataSource>
    <asp:Label ID="LabelUsername" runat="server" Text="Username"></asp:Label>&nbsp;
    <asp:Label ID="LabelDB" runat="server" Text="DB"></asp:Label>

    </form>  
    
    </body>
</html>
