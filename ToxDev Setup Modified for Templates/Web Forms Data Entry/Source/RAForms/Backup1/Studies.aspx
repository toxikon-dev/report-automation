<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Studies.aspx.vb" Inherits="RAForms.Studies, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>

<%@ Register assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.DynamicData" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Study Information</title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 65%;
        }
        .style2
        {
            width: 115px;
        }
        .style3
        {
            width: 97px;
        }
        .style4
        {
            width: 52px;
        }
        .style5
        {
            width: 50px;
        }
        .style6
        {
            width: 141px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource 
        ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="SELECT * FROM [tblProjects] WHERE (txtStudyNumber = @DropDownList1)" 
        
        UpdateCommand="UPDATE tblProjects SET txtProtocolNumber = @txtProtocolNumber, intStudyDirector = @intStudyDirector, txtStatus = @txtStatus, txtVehicleDescription = @txtVehicleDescription, txtVehicle1 = @txtVehicle1, txtVehicle2 = @txtVehicle2, txtVehicle6 = @txtVehicle6, txtVehicle5 = @txtVehicle5, txtVehicle4 = @txtVehicle4, txtVehicle3 = @txtVehicle3, txtExtractionConditions = @txtExtractionConditions, intStudySupervisor = @intStudySupervisor, txtDepartment = @txtDepartment, txtRatio = @txtRatio, txtVehicleQty = @txtVehicleQty, txtComment = @txtComment, txtTestType = @txtTestType, txtTRFProtocolNumber = @txtTRFProtocolNumber where txtStudyNumber = @txtStudyNumber" 

        InsertCommand="INSERT INTO tblProjects (txtSampleNumber, txtProjectNumber, txtStudyNumber, txtProtocolNumber, 
        txtExtractionConditions, txtVehicle6, txtVehicle5, txtVehicle4, txtVehicle3, txtVehicle2, txtVehicle1, 
        txtVehicleDescription, txtDepartment, txtRatio, 
        txtVehicleQty, txtComment, txtTestType, txtTRFProtocolNumber, intProjectNumber, intStudySupervisor, intStudyDirector) 
        VALUES (@txtSampleNumber, @txtProjectNumber, @txtStudyNumber, @txtProtocolNumber, 
        @txtExtractionConditions, @txtVehicle6, @txtVehicle5, @txtVehicle4, @txtVehicle3, @txtVehicle2, @txtVehicle1, 
        @txtVehicleDescription, @txtDepartment, @txtRatio, 
        @txtVehicleQty, @txtComment, @txtTestType, @txtTRFProtocolNumber, @intProjectNumber, @intStudySupervisor, @intStudyDirector)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="DropDownList1" 
                PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="txtProtocolNumber" />
            <asp:Parameter Name="intStudyDirector" />
            <asp:Parameter Name="txtStatus" />
            <asp:Parameter Name="txtVehicleDescription" />
            <asp:Parameter Name="txtVehicle1" />
            <asp:Parameter Name="txtVehicle2" />
            <asp:Parameter Name="txtVehicle6" />
            <asp:Parameter Name="txtVehicle5" />
            <asp:Parameter Name="txtVehicle4" />
            <asp:Parameter Name="txtVehicle3" />
            <asp:Parameter Name="txtExtractionConditions" />
            <asp:Parameter Name="intStudySupervisor" />
            <asp:Parameter Name="txtDepartment" />
            <asp:Parameter Name="txtRatio" />
            <asp:Parameter Name="txtVehicleQty" />
            <asp:Parameter Name="txtComment" />
            <asp:Parameter Name="txtTestType" />
            <asp:Parameter Name="txtTRFProtocolNumber" />
            <asp:Parameter Name="txtStudyNumber" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="txtSampleNumber" />
            <asp:Parameter Name="txtProjectNumber" />
            <asp:Parameter Name="txtStudyNumber" />
            <asp:Parameter Name="txtProtocolNumber" />
            <asp:Parameter Name="txtExtractionConditions" />
            <asp:Parameter Name="txtVehicle6" />
            <asp:Parameter Name="txtVehicle5" />
            <asp:Parameter Name="txtVehicle4" />
            <asp:Parameter Name="txtVehicle3" />
            <asp:Parameter Name="txtVehicle2" />
            <asp:Parameter Name="txtVehicle1" />
            <asp:Parameter Name="txtVehicleDescription" />
            <asp:Parameter Name="txtDepartment" />
            <asp:Parameter Name="txtRatio" />
            <asp:Parameter Name="txtVehicleQty" />
            <asp:Parameter Name="txtComment" />
            <asp:Parameter Name="txtTestType" />
            <asp:Parameter Name="txtTRFProtocolNumber" />
            <asp:Parameter Name="intProjectNumber" />
            <asp:Parameter Name="intStudySupervisor" />
            <asp:Parameter Name="intStudyDirector" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="SELECT txtStudyNumber FROM tblProjects UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="Select distinct '' from tblProjects">
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server"
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="SELECT txtSponsorName FROM [tblSamples] WHERE (txtSampleNumber = left(@txtSampleNumberDDL2,7))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" 
                    Name="txtSampleNumberDDL2" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server"
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="Select intUserID, txtFullName from tblUsers where txtUserRole='Study Director'">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server"
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="Select txtProtocolName from tblProtocols where txtProtocolType = substring(@txtStudyNumberDDL,9,1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" 
                    Name="txtStudyNumberDDL" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server"
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="Select intUserID, txtFullName from tblUsers where txtUserRole='Study Director' or txtUserRole = 'Study Supervisor'">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server"
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="Select txtProtocolName from tblProtocols where txtProtocolType = right(@txtSampleNumberDDL,1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" 
                    Name="txtSampleNumberDDL" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    
    <table>
        <tr>
            <td>
                <img alt="Logo" height="29" width="142"
                    src="logo.jpg" /></td>
            <td align="right"
                style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                Report Automation</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style2">
                Select a Study</td>
            <td class="style3">
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="txtStudyNumber" 
        DataValueField="txtStudyNumber" AutoPostBack="True">
    </asp:DropDownList>
            </td>
            <td class="style4">
                or click
            </td>
            <td class="style5">
    <asp:Button ID="Button1" runat="server" Text="New" causesvalidation="false" />
            </td>
            <td class="style6">
                and select a Sample</td>
            <td>
    &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource3" Enabled="False" AutoPostBack="True" 
                    DataTextField="Column1" DataValueField="Column1">
    </asp:DropDownList>
                <asp:Button ID="InsertCancelBeforeSelectButton" runat="server" 
                    CausesValidation="False" Text="Cancel" Visible="False" />
            </td>
        </tr>
    </table>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="txtStudyNumber" 
        DataSourceID="SqlDataSource1" DefaultMode="Edit">
        <EditItemTemplate>
           <table>
                <tr>
                    <td align="center" colspan="2">
                        <h1>Study Information</h1></td>
                </tr>
                <tr>
                    <td align="left" colspan="2" style="height: 40px; font-weight: bold">
                        Test Information</td>
                </tr>
                <tr>
                    <td align="right">
                        Study Number:</td>
                    <td>
                        <asp:TextBox ID="txtStudyNumberTextBox" runat="server" Enabled="False" 
                            Text='<%# Bind("txtStudyNumber") %>' Width="128px" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Protocol Name:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList9" runat="server" 
                            DataSourceID="SqlDataSource6" DataTextField="txtProtocolName" 
                            DataValueField="txtProtocolName" SelectedValue='<%# Bind("txtProtocolNumber") %>'>
                        </asp:DropDownList>
                        <asp:TextBox ID="txtTestTypeTextBox" runat="server" Visible="False" Text='<%# Bind("txtTestType") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        TRF Protocol Number:</td>
                    <td>
                        <asp:TextBox ID="txtTRFProtocolNumberTextBox" runat="server" 
                           Text='<%# Bind("txtTRFProtocolNumber") %>' Width="320px" maxlength="50">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Department:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList12" runat="server" 
                            SelectedValue='<%# Bind("txtDepartment") %>'>
                            <asp:ListItem>Cell</asp:ListItem>
                            <asp:ListItem>Chemistry</asp:ListItem>
                            <asp:ListItem>Genetox</asp:ListItem>
                            <asp:ListItem>Hemocompatibility</asp:ListItem>
                            <asp:ListItem>Micro</asp:ListItem>
                            <asp:ListItem>Vivo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Study Director:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList8" runat="server" 
                            DataSourceID="SqlDataSource5" DataTextField="txtFullName" 
                            DataValueField="intUserID" SelectedValue='<%# Bind("intStudyDirector") %>'>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Study Supervisor:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList10" runat="server" 
                            DataSourceID="SqlDataSource7" DataTextField="txtFullName" 
                            DataValueField="intUserID" SelectedValue='<%# Bind("intStudySupervisor") %>'>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Status:</td>
                    <td>
                        <asp:TextBox ID="txtStatusTextBox" runat="server" 
                            Text='<%# Bind("txtStatus", "{0}") %>' Width="320px" Enabled="False" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle Description:</td>
                    <td>
                        <asp:TextBox ID="txtVehicleDescriptionTextBox" runat="server" 
                            Text='<%# Bind("txtVehicleDescription") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                            ControlToValidate="txtVehicleDescriptionTextBox" ErrorMessage="Required field" 
                            Text='<%# Eval("txtVehicleDescription") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Qty of Vehicle:</td>
                    <td>
                        <asp:TextBox ID="txtVehicleQtyTextBox" runat="server" 
                            Text='<%# Bind("txtVehicleQty") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtVehicleQtyTextBox" ErrorMessage="Required field" 
                            Text='<%# Eval("txtVehicleQty") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Comment:</td>
                    <td>
                        <asp:TextBox ID="txtCommentTextBox" runat="server" 
                            Text='<%# Bind("txtComment") %>' Width="320px" maxlength="100" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCommentTextBox" ErrorMessage="Required field" 
                            Text='<%# Eval("txtComment") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 1:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle1") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DropDownList2" ErrorMessage="Required field" 
                            Text='<%# Eval("txtVehicle1") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 2:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle2") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 3:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle3") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 4:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle4") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 5:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList6" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle5") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 6:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList7" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle6") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Extraction Conditions:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList11" runat="server" 
                            SelectedValue='<%# Bind("txtExtractionConditions") %>' 
                            Width="319px">
                            <asp:ListItem>37 ± 1° C for 24 ± 2 hours</asp:ListItem>
                            <asp:ListItem>37 ± 1° C for 72 ± 2 hours</asp:ListItem>
                            <asp:ListItem>50 ± 2° C for 72 ± 2 hours</asp:ListItem>
                            <asp:ListItem>70 ± 2° C for 24 ± 2 hours</asp:ListItem>
                            <asp:ListItem>121 ± 2° C for 1 ± 0.1 hour</asp:ListItem>
                            <asp:ListItem>Sponsor Specified</asp:ListItem>
                        </asp:DropDownList>   
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Extraction Ratio:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList13" runat="server" 
                            SelectedValue='<%# Bind("txtRatio") %>' 
                            Width="319px">
                            <asp:ListItem>6 cm² per 1 mL</asp:ListItem>
                            <asp:ListItem>6 cm² per 3 mL</asp:ListItem>
                            <asp:ListItem>3 cm² per 1 mL</asp:ListItem>
                            <asp:ListItem>0.2 g per 1 mL</asp:ListItem>
                            <asp:ListItem>120 cm² per 20 mL</asp:ListItem>
                            <asp:ListItem>60 cm² per 20 mL</asp:ListItem>
                            <asp:ListItem>4.0 g per 20 mL</asp:ListItem>
                            <asp:ListItem>0.5 g per 10 mL</asp:ListItem>
                            <asp:ListItem>5.0 g per 10 mL</asp:ListItem>
                            <asp:ListItem>0.1 g per 1 mL</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem>N/A</asp:ListItem>
                        </asp:DropDownList>   
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                Text="Save" onClick="UpdateButton_Click" />
            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" Text="Cancel" onClick="UpdateCancelButton_Click" />
            <asp:LinkButton ID="LinkButton1" runat="server">Lab Schedule</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server">Inspections</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server">Results</asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
           <table>
                <tr>
                    <td align="center" colspan="2">
                        <h1>Study Information</h1></td>
                </tr>
                <tr>
                    <td align="left" colspan="2" style="height: 40px; font-weight: bold">
                        Test Information</td>
                </tr>
                <tr>
                    <td align="right">
                        Study Number:</td>
                    <td>
                        <asp:TextBox ID="txtStudyNumberTextBox" runat="server" Enabled="False" 
                            Text='<%# Bind("txtStudyNumber") %>' Width="128px" />
                        <asp:TextBox ID="txtSampleNumberTextBox" runat="server" Enabled="False" 
                            Text='<%# Bind("txtSampleNumber") %>' Visible="False" Height="22px" 
                            Width="22px" />
                        <asp:TextBox ID="txtProjectNumberTextBox" runat="server" Enabled="False" 
                            Text='<%# Bind("txtProjectNumber") %>' Visible="False" Height="22px" 
                            Width="22px" />
                        <asp:TextBox ID="intProjectNumberTextBox" runat="server" Enabled="False" 
                            Text='<%# Bind("intProjectNumber") %>' Visible="False" Height="22px" 
                            Width="22px" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Protocol Name:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList9" runat="server" 
                            DataSourceID="SqlDataSource8" DataTextField="txtProtocolName" 
                            DataValueField="txtProtocolName" SelectedValue='<%# Bind("txtProtocolNumber") %>'>
                        </asp:DropDownList>
                       <asp:TextBox ID="txtTestTypeTextBox" runat="server"  Visible="False" Text='<%# Bind("txtTestType") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        TRF Protocol Number:</td>
                    <td>
                        <asp:TextBox ID="txtTRFProtocolNumberTextBox" runat="server" 
                           Text='<%# Bind("txtTRFProtocolNumber") %>' Width="320px" maxlength="50">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Department:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList12" runat="server" 
                            SelectedValue='<%# Bind("txtDepartment") %>'>
                            <asp:ListItem>Cell</asp:ListItem>
                            <asp:ListItem>Chemistry</asp:ListItem>
                            <asp:ListItem>Genetox</asp:ListItem>
                            <asp:ListItem>Hemocompatibility</asp:ListItem>
                            <asp:ListItem>Micro</asp:ListItem>
                            <asp:ListItem>Vivo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Study Director:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList8" runat="server" 
                            DataSourceID="SqlDataSource5" DataTextField="txtFullName" 
                            DataValueField="intUserID" SelectedValue='<%# Bind("intStudyDirector") %>'>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Study Supervisor:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList10" runat="server" 
                            DataSourceID="SqlDataSource7" DataTextField="txtFullName" 
                            DataValueField="intUserID" SelectedValue='<%# Bind("intStudySupervisor") %>'>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Status:</td>
                    <td>
                        <asp:TextBox ID="txtStatusTextBox" runat="server" 
                            Text='<%# Bind("txtStatus", "{0}") %>' Width="320px" Enabled="False" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle Description:</td>
                    <td>
                        <asp:TextBox ID="txtVehicleDescriptionTextBox" runat="server" 
                            Text='<%# Bind("txtVehicleDescription") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                            ControlToValidate="txtVehicleDescriptionTextBox" ErrorMessage="Required field" 
                            Text='<%# Eval("txtVehicleDescription") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Qty of Vehicle:</td>
                    <td>
                        <asp:TextBox ID="txtVehicleQtyTextBox" runat="server" 
                            Text='<%# Bind("txtVehicleQty") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtVehicleQtyTextBox" ErrorMessage="Required field" 
                            Text='<%# Eval("txtVehicleQty") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Comment:</td>
                    <td>
                        <asp:TextBox ID="txtCommentTextBox" runat="server" 
                            Text='<%# Bind("txtComment") %>' Width="320px" maxlength="100" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCommentTextBox" ErrorMessage="Required field" 
                            Text='<%# Eval("txtComment") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 1:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle1") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DropDownList2" ErrorMessage="Required field" 
                            Text='<%# Eval("txtVehicle1") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 2:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle2") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 3:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle3") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 4:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle4") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 5:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList6" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle5") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Vehicle 6:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList7" runat="server" 
                            SelectedValue='<%# Bind("txtVehicle6") %>'>
                            <asp:ListItem>NaCl</asp:ListItem>
                            <asp:ListItem>CSO</asp:ListItem>
                            <asp:ListItem>MEM</asp:ListItem>
                            <asp:ListItem>PEG</asp:ListItem>
                            <asp:ListItem>EtOH</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Extraction Conditions:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList11" runat="server" 
                            SelectedValue='<%# Bind("txtExtractionConditions") %>' 
                            Width="319px">
                            <asp:ListItem>37 ± 1° C for 24 ± 2 hours</asp:ListItem>
                            <asp:ListItem>37 ± 1° C for 72 ± 2 hours</asp:ListItem>
                            <asp:ListItem>50 ± 2° C for 72 ± 2 hours</asp:ListItem>
                            <asp:ListItem>70 ± 2° C for 24 ± 2 hours</asp:ListItem>
                            <asp:ListItem>121 ± 2° C for 1 ± 0.1 hour</asp:ListItem>
                            <asp:ListItem>Sponsor Specified</asp:ListItem>
                        </asp:DropDownList>   
                    </td>
                </tr>
                                <tr>
                    <td align="right">
                        Extraction Ratio:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList13" runat="server" 
                            SelectedValue='<%# Bind("txtRatio") %>' 
                            Width="319px">
                            <asp:ListItem>6 cm² per 1 mL</asp:ListItem>
                            <asp:ListItem>6 cm² per 3 mL</asp:ListItem>
                            <asp:ListItem>3 cm² per 1 mL</asp:ListItem>
                            <asp:ListItem>0.2 g per 1 mL</asp:ListItem>
                            <asp:ListItem>120 cm² per 20 mL</asp:ListItem>
                            <asp:ListItem>60 cm² per 20 mL</asp:ListItem>
                            <asp:ListItem>4.0 g per 20 mL</asp:ListItem>
                            <asp:ListItem>0.5 g per 10 mL</asp:ListItem>
                            <asp:ListItem>5.0 g per 10 mL</asp:ListItem>
                            <asp:ListItem>0.1 g per 1 mL</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            <asp:ListItem>N/A</asp:ListItem>
                        </asp:DropDownList>   
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                 Text="Save" onclick="InsertButton_Click" />
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" 
                CausesValidation="False" Text="Cancel" OnClick="InsertCancelButton_Click" />
             &nbsp;               
        </InsertItemTemplate>
        <ItemTemplate>
           <table>
                <tr>
                    <td align="right">
                        Study Number:</td>
                    <td>
                        <asp:Label ID="txtStudyNumberTextBox" runat="server" 
                            Text='<%# Bind("txtStudyNumber") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Name:</td>
                    <td>
                        <asp:Label ID="txtSponsorNameTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorName") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Address:</td>
                    <td>
                        <asp:Label ID="txtSponsorAddressTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorAddress") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Contact:</td>
                    <td>
                        <asp:Label ID="txtSponsorContactTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorContact") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Email:</td>
                    <td>
                        <asp:Label ID="txtSponsorEmailTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorEmail") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        PO Number:</td>
                    <td>
                        <asp:Label ID="txtPONumberTextBox" runat="server" 
                            Text='<%# Bind("txtPONumber") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Test Article Name:</td>
                    <td>
                        <asp:Label ID="txtTestArticleNameTextBox" runat="server" 
                            Text='<%# Bind("txtTestArticleName") %>'  />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Lot Batch:</td>
                    <td>
                        <asp:Label ID="txtLotBatchTextBox" runat="server" 
                            Text='<%# Bind("txtLotBatch") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Test Article Receipt Date:</td>
                    <td>
                        <asp:Label ID="dteTestArtcileReceiptDateTextBox" runat="server" 
                            Text='<%# Bind("dteTestArtcileReceiptDate", "{0:d}") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Quantity:</td>
                    <td>
                        <asp:label ID="txtQuantityTextBox" runat="server" 
                            Text='<%# Bind("txtQuantity") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        CAS Code:</td>
                    <td>
                        <asp:Label ID="txtCASCodeTextBox" runat="server" 
                            Text='<%# Bind("txtCASCode") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Physical State:</td>
                    <td>
                        <asp:Label ID="txtPhysicalStateTextBox" runat="server" 
                            Text='<%# Bind("txtPhysicalState") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Color:</td>
                    <td>
                        <asp:Label ID="txtColorTextBox" runat="server" 
                            Text='<%# Bind("txtColor") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Expiration Date:</td>
                    <td>
                        <asp:Label ID="dteExpirationDateTextBox" runat="server" 
                            Text='<%# Bind("dteExpirationDate", "{0:d}") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Density:</td>
                    <td>
                        <asp:Label ID="txtDensityTextBox" runat="server" 
                            Text='<%# Bind("txtDensity") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Stability:</td>
                    <td>
                        <asp:Label ID="txtStabilityTextBox" runat="server" 
                            Text='<%# Bind("txtStability") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Solubility:</td>
                    <td>
                        <asp:Label ID="txtSolubilityTextBox" runat="server" 
                            Text='<%# Bind("txtSolubility") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        PH:</td>
                    <td>
                        <asp:Label ID="txtPHTextBox" runat="server" Text='<%# Bind("txtPH") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Storage Conditions:
                    </td>
                    <td>
                        <asp:Label ID="txtStorageConditionsTextBox" runat="server" 
                            Text='<%# Bind("txtStorageConditions") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Confidentiality Agreement:</td>
                    <td>
                        <asp:CheckBox ID="booConfidentialityAgreementCheckBox" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Disposition:</td>
                    <td>
                        <asp:Label ID="txtDispositionTextBox" runat="server" 
                            Text='<%# Bind("txtDisposition") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Test Type:</td>
                    <td>
                        <asp:Label ID="txtTestTypeTextBox" runat="server" 
                            Text='<%# Bind("txtTestType") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <EmptyDataTemplate>
            <table>
            <tr><td align="center"><h1>Study Information</h1></td></tr>
            <tr><td style="height: 80px;">Please select a study to edit -or- click the New button to enter a new study.<br />
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="_default.aspx">Main</asp:LinkButton>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="samples.aspx">Samples/TRF</asp:LinkButton>
                </td></tr>
            </table>
        </EmptyDataTemplate>
        <FooterTemplate>
        </FooterTemplate>
        <HeaderTemplate>
        </HeaderTemplate>
    </asp:FormView>
        <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource4">
        <ItemTemplate>
            <asp:Label ID="txtSponsorNameLabel" runat="server" 
                Text='<%# Bind("txtSponsorName") %>' Visible="False" />
        </ItemTemplate>
    </asp:FormView>
    </form>
    To start or restart the workflow for a report, edit its results and click the "Update and Start Workflow" button <br />
    <asp:Label ID="LabelUsername" runat="server" Text="Username"></asp:Label>&nbsp;
    <asp:Label ID="LabelDB" runat="server" Text="DB"></asp:Label>
    </body>
</html>
