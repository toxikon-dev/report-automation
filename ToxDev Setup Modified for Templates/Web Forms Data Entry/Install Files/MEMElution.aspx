<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MEMElution.aspx.vb" Inherits="RAForms.MEMElution, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MEM Elution</title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>"
        SelectCommand="SELECT tblUsers.txtFullName, tblUsers.txtEmail, tblMemElution.* FROM tblProjects INNER JOIN tblUsers ON tblProjects.intStudyDirector = tblUsers.intUserID INNER JOIN tblMemElution ON tblProjects.txtStudyNumber = tblMemElution.txtStudyNumber WHERE (tblMemElution.txtStudyNumber = @StudyDropDownList)"
        UpdateCommand="UPDATE tblMemElution SET txtPositiveControl = @txtPositiveControl, txtNegativeControl = @txtNegativeControl, txtUntreatedControl = @txtUntreatedControl, txtExtractSterilized = @txtExtractSterilized, dteExperimentDate_0hrs = @dteExperimentDate_0hrs, dteExperimentDate_24hrs = @dteExperimentDate_24hrs, dteExperimentDate_48hrs = @dteExperimentDate_48hrs, intMediaA_0hrs = @intMediaA_0hrs, intMediaA_24hrs = @intMediaA_24hrs, intMediaA_48hrs = @intMediaA_48hrs, intMediaB_0hrs = @intMediaB_0hrs, intMediaB_24hrs = @intMediaB_24hrs, intMediaB_48hrs = @intMediaB_48hrs, intMediaC_0hrs = @intMediaC_0hrs, intMediaC_24hrs = @intMediaC_24hrs, intMediaC_48hrs = @intMediaC_48hrs, intNegativeA_0hrs = @intNegativeA_0hrs, intNegativeA_24hrs = @intNegativeA_24hrs, intNegativeA_48hrs = @intNegativeA_48hrs, intNegativeB_0hrs = @intNegativeB_0hrs, intNegativeB_24hrs = @intNegativeB_24hrs, intNegativeB_48hrs = @intNegativeB_48hrs, intNegativeC_0hrs = @intNegativeC_0hrs, intNegativeC_24hrs = @intNegativeC_24hrs, intNegativeC_48hrs = @intNegativeC_48hrs, intPositiveA_0hrs = @intPositiveA_0hrs, intPositiveA_24hrs = @intPositiveA_24hrs, intPositiveA_48hrs = @intPositiveA_48hrs, intPositiveB_0hrs = @intPositiveB_0hrs, intPositiveB_24hrs = @intPositiveB_24hrs, intPositiveB_48hrs = @intPositiveB_48hrs, intPositiveC_0hrs = @intPositiveC_0hrs, intPositiveC_24hrs = @intPositiveC_24hrs, intPositiveC_48hrs = @intPositiveC_48hrs, intTestA_0hrs = @intTestA_0hrs, intTestB_0hrs = @intTestB_0hrs, intTestC_0hrs = @intTestC_0hrs, intTestA_24hrs = @intTestA_24hrs, intTestB_24hrs = @intTestB_24hrs, intTestC_24hrs = @intTestC_24hrs, intTestA_48hrs = @intTestA_48hrs, intTestB_48hrs = @intTestB_48hrs, intTestC_48hrs = @intTestC_48hrs where txtStudyNumber = @txtStudyNumber"
        
        InsertCommand="INSERT INTO tblMemElution(txtStudyNumber, txtPositiveControl, txtNegativeControl, txtUntreatedControl, txtExtractSterilized, dteExperimentDate_0hrs, dteExperimentDate_24hrs, dteExperimentDate_48hrs, intMediaA_0hrs, intMediaA_24hrs, intMediaA_48hrs, intMediaB_0hrs, intMediaB_24hrs, intMediaB_48hrs, intMediaC_0hrs, intMediaC_24hrs, intMediaC_48hrs, intNegativeA_0hrs, intNegativeA_24hrs, intNegativeA_48hrs, intNegativeB_0hrs, intNegativeB_24hrs, intNegativeB_48hrs, intNegativeC_0hrs, intNegativeC_24hrs, intNegativeC_48hrs, intPositiveA_0hrs, intPositiveA_24hrs, intPositiveA_48hrs, intPositiveB_0hrs, intPositiveB_24hrs, intPositiveB_48hrs, intPositiveC_0hrs, intPositiveC_24hrs, intPositiveC_48hrs, intTestA_0hrs, intTestB_0hrs, intTestC_0hrs, intTestA_24hrs, intTestB_24hrs, intTestC_24hrs, intTestA_48hrs, intTestB_48hrs, intTestC_48hrs) VALUES (@txtStudyNumber, @txtPositiveControl, @txtNegativeControl, @txtUntreatedControl, @txtExtractSterilized, @dteExperimentDate_0hrs, @dteExperimentDate_24hrs, @dteExperimentDate_48hrs, @intMediaA_0hrs, @intMediaA_24hrs, @intMediaA_48hrs, @intMediaB_0hrs, @intMediaB_24hrs, @intMediaB_48hrs, @intMediaC_0hrs, @intMediaC_24hrs, @intMediaC_48hrs, @intNegativeA_0hrs, @intNegativeA_24hrs, @intNegativeA_48hrs, @intNegativeB_0hrs, @intNegativeB_24hrs, @intNegativeB_48hrs, @intNegativeC_0hrs, @intNegativeC_24hrs, @intNegativeC_48hrs, @intPositiveA_0hrs, @intPositiveA_24hrs, @intPositiveA_48hrs, @intPositiveB_0hrs, @intPositiveB_24hrs, @intPositiveB_48hrs, @intPositiveC_0hrs, @intPositiveC_24hrs, @intPositiveC_48hrs, @intTestA_0hrs, @intTestB_0hrs, @intTestC_0hrs, @intTestA_24hrs, @intTestB_24hrs, @intTestC_24hrs, @intTestA_48hrs, @intTestB_48hrs, @intTestC_48hrs)">
        <SelectParameters>
            <asp:ControlParameter ControlID="StudyDropDownList" Name="StudyDropDownList" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="txtPositiveControl" />
            <asp:Parameter Name="txtNegativeControl" />
			<asp:Parameter Name="txtUntreatedControl" />
            <asp:Parameter Name="txtExtractSterilized" />
            <asp:Parameter Name="dteExperimentDate_0hrs" />
            <asp:Parameter Name="dteExperimentDate_24hrs" />
            <asp:Parameter Name="dteExperimentDate_48hrs" />
            <asp:Parameter Name="intMediaA_0hrs" />
            <asp:Parameter Name="intMediaA_24hrs" />
            <asp:Parameter Name="intMediaA_48hrs" />
            <asp:Parameter Name="intMediaB_0hrs" />
            <asp:Parameter Name="intMediaB_24hrs" />
            <asp:Parameter Name="intMediaB_48hrs" />
            <asp:Parameter Name="intMediaC_0hrs" />
            <asp:Parameter Name="intMediaC_24hrs" />
            <asp:Parameter Name="intMediaC_48hrs" />
            <asp:Parameter Name="intNegativeA_0hrs" />
            <asp:Parameter Name="intNegativeA_24hrs" />
            <asp:Parameter Name="intNegativeA_48hrs" />
            <asp:Parameter Name="intNegativeB_0hrs" />
            <asp:Parameter Name="intNegativeB_24hrs" />
            <asp:Parameter Name="intNegativeB_48hrs" />
            <asp:Parameter Name="intNegativeC_0hrs" />
            <asp:Parameter Name="intNegativeC_24hrs" />
            <asp:Parameter Name="intNegativeC_48hrs" />
            <asp:Parameter Name="intPositiveA_0hrs" />
            <asp:Parameter Name="intPositiveA_24hrs" />
            <asp:Parameter Name="intPositiveA_48hrs" />
            <asp:Parameter Name="intPositiveB_0hrs" />
            <asp:Parameter Name="intPositiveB_24hrs" />
            <asp:Parameter Name="intPositiveB_48hrs" />
            <asp:Parameter Name="intPositiveC_0hrs" />
            <asp:Parameter Name="intPositiveC_24hrs" />
            <asp:Parameter Name="intPositiveC_48hrs" />
            <asp:Parameter Name="intTestA_0hrs" />
			<asp:Parameter Name="intTestB_0hrs" />
			<asp:Parameter Name="intTestC_0hrs" />
			<asp:Parameter Name="intTestA_24hrs" />
			<asp:Parameter Name="intTestB_24hrs" />
			<asp:Parameter Name="intTestC_24hrs" />
			<asp:Parameter Name="intTestA_48hrs" />
			<asp:Parameter Name="intTestB_48hrs" />
			<asp:Parameter Name="intTestC_48hrs" />
            <asp:ControlParameter ControlID="StudyDropDownList" Name="txtStudyNumber" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
        <InsertParameters>
			<asp:ControlParameter ControlID="StudyDropDownList2" Name="txtStudyNumber" 
                PropertyName="SelectedValue" />
            <asp:Parameter Name="txtPositiveControl" />
            <asp:Parameter Name="txtNegativeControl" />
			<asp:Parameter Name="txtUntreatedControl" />
            <asp:Parameter Name="txtExtractSterilized" />
            <asp:Parameter Name="dteExperimentDate_0hrs" />
            <asp:Parameter Name="dteExperimentDate_24hrs" />
            <asp:Parameter Name="dteExperimentDate_48hrs" />
            <asp:Parameter Name="intMediaA_0hrs" />
            <asp:Parameter Name="intMediaA_24hrs" />
            <asp:Parameter Name="intMediaA_48hrs" />
            <asp:Parameter Name="intMediaB_0hrs" />
            <asp:Parameter Name="intMediaB_24hrs" />
            <asp:Parameter Name="intMediaB_48hrs" />
            <asp:Parameter Name="intMediaC_0hrs" />
            <asp:Parameter Name="intMediaC_24hrs" />
            <asp:Parameter Name="intMediaC_48hrs" />
            <asp:Parameter Name="intNegativeA_0hrs" />
            <asp:Parameter Name="intNegativeA_24hrs" />
            <asp:Parameter Name="intNegativeA_48hrs" />
            <asp:Parameter Name="intNegativeB_0hrs" />
            <asp:Parameter Name="intNegativeB_24hrs" />
            <asp:Parameter Name="intNegativeB_48hrs" />
            <asp:Parameter Name="intNegativeC_0hrs" />
            <asp:Parameter Name="intNegativeC_24hrs" />
            <asp:Parameter Name="intNegativeC_48hrs" />
            <asp:Parameter Name="intPositiveA_0hrs" />
            <asp:Parameter Name="intPositiveA_24hrs" />
            <asp:Parameter Name="intPositiveA_48hrs" />
            <asp:Parameter Name="intPositiveB_0hrs" />
            <asp:Parameter Name="intPositiveB_24hrs" />
            <asp:Parameter Name="intPositiveB_48hrs" />
            <asp:Parameter Name="intPositiveC_0hrs" />
            <asp:Parameter Name="intPositiveC_24hrs" />
            <asp:Parameter Name="intPositiveC_48hrs" />
            <asp:Parameter Name="intTestA_0hrs" />
			<asp:Parameter Name="intTestB_0hrs" />
			<asp:Parameter Name="intTestC_0hrs" />
			<asp:Parameter Name="intTestA_24hrs" />
			<asp:Parameter Name="intTestB_24hrs" />
			<asp:Parameter Name="intTestC_24hrs" />
			<asp:Parameter Name="intTestA_48hrs" />
			<asp:Parameter Name="intTestB_48hrs" />
			<asp:Parameter Name="intTestC_48hrs" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>"
        SelectCommand="SELECT [txtStudyNumber] FROM [tblMemElution] UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="SELECT tblProjects.txtStudyNumber FROM tblProjects WHERE tblProjects.txtProtocolNumber in (select txtProtocolName from tblProtocols where txtWebForm = 'memelution.aspx') EXCEPT SELECT tblMEMElution.txtStudyNumber FROM tblMEMElution UNION SELECT txtEmpty FROM tblEmpty ORDER BY 1">
        </asp:SqlDataSource>
    <table>
        <tr>
            <td>
                <img alt="Logo" height="29" width="142" src="logo.jpg" />
            </td>
            <td align="right" style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                Report Automation
            </td>
        </tr>
    </table>
    <table class="selection">
        <tr>
            <td align="right" width="115px">
                Select a Study:
            </td>
            <td width="100px">
                <asp:DropDownList ID="StudyDropDownList" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="txtStudyNumber" DataValueField="txtStudyNumber" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td align="right" width="100px"> or click 
                <asp:Button ID="Button1" runat="server" Text="New" CausesValidation="false" /></td>
            <td align="right" width="130px">
                and select a Study:
            </td>
            <td align="left">
                <asp:DropDownList ID="StudyDropDownList2" runat="server" DataSourceID="SqlDataSource3"
                    DataTextField="txtStudyNumber" DataValueField="txtStudyNumber" 
                    Enabled="False" AutoPostBack="True">
                </asp:DropDownList>
                <asp:Button ID="InsertCancelBeforeSelectButton" runat="server" CausesValidation="False"
                            Text="Cancel" Visible="False" />
            </td>
        </tr>
    </table>
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="txtStudyNumber" DataSourceID="SqlDataSource1"
        DefaultMode="Edit">
        <EditItemTemplate>
           
      <table class="info" width="650px">
        <tr>
            <th colspan="2">
                <h1>MEM Elution</h1>
            </th>
        </tr>
        <tr>
            <td align="right" width="50%">
                Study Number:
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="txtStudyNumberTextBox" runat="server" Enabled="False" Text='<%# Eval("txtStudyNumber") %>' />
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                Study Director:
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="txtFullNameTextBox" runat="server" Enabled="False" Text='<%# Eval("txtFullName") %>' />
                <asp:TextBox ID="txtEmailTextBox" runat="server" Enabled="False" 
                    Text='<%# Eval("txtEmail") %>' Visible="False" Width="16px" />
            </td>
        </tr>
    </table>
    <br />
            <table class="results" width="650px">
                <tr>
                    <th colspan="2">
                        <b>Test Results</b>
                    </th>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Positive Control QC#:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtPositiveControlTextBox" runat="server" Text='<%# Bind("txtPositiveControl") %>' maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Negative Control QC#:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtNegativeControlTextBox" runat="server" Text='<%# Bind("txtNegativeControl") %>' maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Extractant for test article: MEM complete:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtUntreatedControlTextBox" runat="server" Text='<%# Bind("txtUntreatedControl") %>' maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Extract was sterilized through 0.22 um filter:
                    </td>
                    <td align="left" width="50%">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            SelectedValue='<%# Bind("txtExtractSterilized") %>'>
                            <asp:ListItem>was</asp:ListItem>
                            <asp:ListItem>was not</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Date
                                </th>
                                <th scope="col">
                                    Time<br />
                                    (Hours)
                                </th>
                                <th scope="col">
                                    Dish
                                </th>
                                <th scope="col">
                                    Media
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Experimental
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_0hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_0hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px"/>
							        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="3">
                                    0
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_0hrsTextBox" runat="server" Text='<%# Bind("intMediaA_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaA_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeA_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveA_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_0hrsTextBox" runat="server" Text='<%# Bind("intTestA_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestA_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_0hrsTextBox" runat="server" Text='<%# Bind("intMediaB_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator8" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaB_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator9" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeB_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator10" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveB_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_0hrsTextBox" runat="server" Text='<%# Bind("intTestB_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestB_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_0hrsTextBox" runat="server" Text='<%# Bind("intMediaC_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator12" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaC_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator13" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeC_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator14" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveC_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_0hrsTextBox" runat="server" Text='<%# Bind("intTestC_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator15" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestC_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_24hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_24hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="3">
                                    24
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_24hrsTextBox" runat="server" Text='<%# Bind("intMediaA_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator16" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaA_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator17" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeA_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator18" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveA_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_24hrsTextBox" runat="server" Text='<%# Bind("intTestA_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator19" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestA_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_24hrsTextBox" runat="server" Text='<%# Bind("intMediaB_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator20" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaB_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator21" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeB_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator22" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveB_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_24hrsTextBox" runat="server" Text='<%# Bind("intTestB_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator23" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestB_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_24hrsTextBox" runat="server" Text='<%# Bind("intMediaC_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator24" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaC_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator25" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeC_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator26" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveC_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_24hrsTextBox" runat="server" Text='<%# Bind("intTestC_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestC_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_48hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_48hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="3">
                                    48
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_48hrsTextBox" runat="server" Text='<%# Bind("intMediaA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator28" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator29" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator30" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_48hrsTextBox" runat="server" Text='<%# Bind("intTestA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator31" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_48hrsTextBox" runat="server" Text='<%# Bind("intMediaB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator32" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaB_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator33" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeB_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator34" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveB_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_48hrsTextBox" runat="server" Text='<%# Bind("intTestB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator35" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestB_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_48hrsTextBox" runat="server" Text='<%# Bind("intMediaC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator36" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaC_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator37" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeC_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator38" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveC_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_48hrsTextBox" runat="server" Text='<%# Bind("intTestC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator39" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestC_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <asp:Button ID="UpdateButton0" runat="server" CausesValidation="True" Text="Update and Start Workflow"
                            OnClick="SubmitButton_Click" />
                        &nbsp;
                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                            OnClick="UpdateButton_Click" Text="Update" />
                        &nbsp;
                        <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" Text="Cancel"
                            OnClick="UpdateCancelButton_Click" />
                    </td>
                </tr>
            </table>
            <br />
        </EditItemTemplate>
        <InsertItemTemplate>
            
            <table class="info" width="100%">
        <tr>
            <th colspan="2">
                <h1>MEM Elution</h1>
            </th>
        </tr>
        <tr>
            <td align="right" width="50%">
                Study Number:
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="txtStudyNumberTextBox" runat="server" Enabled="False" Text='<%# Eval("txtStudyNumber") %>' />
            </td>
        </tr>
    </table>
    <br />
            <table class="results" width="650px">
                <tr>
                    <th colspan="2">
                        <b>Test Results</b>
                    </th>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Positive Control QC#:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtPositiveControlTextBox" runat="server" Text='<%# Bind("txtPositiveControl") %>' maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Negative Control QC#:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtNegativeControlTextBox" runat="server" Text='<%# Bind("txtNegativeControl") %>' maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Extractant for test article: MEM complete:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtUntreatedControlTextBox" runat="server" Text='<%# Bind("txtUntreatedControl") %>' maxlength="50" /> 
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Extract was sterilized through 0.22 um filter:
                    </td>
                    <td align="left" width="50%">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            SelectedValue='<%# Bind("txtExtractSterilized") %>'>
                            <asp:ListItem>was</asp:ListItem>
                            <asp:ListItem>was not</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Date
                                </th>
                                <th scope="col">
                                    Time<br />
                                    (Hours)
                                </th>
                                <th scope="col">
                                    Dish
                                </th>
                                <th scope="col">
                                    Media
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Experimental
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_0hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_0hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px"/>
							        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="3">
                                    0
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_0hrsTextBox" runat="server" Text='<%# Bind("intMediaA_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaA_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeA_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveA_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_0hrsTextBox" runat="server" Text='<%# Bind("intTestA_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestA_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_0hrsTextBox" runat="server" Text='<%# Bind("intMediaB_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator8" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaB_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator9" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeB_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator10" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveB_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_0hrsTextBox" runat="server" Text='<%# Bind("intTestB_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestB_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_0hrsTextBox" runat="server" Text='<%# Bind("intMediaC_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator12" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaC_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator13" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeC_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator14" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveC_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_0hrsTextBox" runat="server" Text='<%# Bind("intTestC_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator15" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestC_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_24hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_24hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="3">
                                    24
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_24hrsTextBox" runat="server" Text='<%# Bind("intMediaA_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator16" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaA_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator17" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeA_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator18" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveA_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_24hrsTextBox" runat="server" Text='<%# Bind("intTestA_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator19" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestA_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_24hrsTextBox" runat="server" Text='<%# Bind("intMediaB_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator20" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaB_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator21" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeB_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator22" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveB_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_24hrsTextBox" runat="server" Text='<%# Bind("intTestB_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator23" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestB_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_24hrsTextBox" runat="server" Text='<%# Bind("intMediaC_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator24" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaC_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator25" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeC_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator26" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveC_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_24hrsTextBox" runat="server" Text='<%# Bind("intTestC_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestC_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_48hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_48hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="3">
                                    48
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_48hrsTextBox" runat="server" Text='<%# Bind("intMediaA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator28" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator29" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator30" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_48hrsTextBox" runat="server" Text='<%# Bind("intTestA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator31" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_48hrsTextBox" runat="server" Text='<%# Bind("intMediaB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator32" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaB_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator33" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeB_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator34" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveB_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_48hrsTextBox" runat="server" Text='<%# Bind("intTestB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator35" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestB_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_48hrsTextBox" runat="server" Text='<%# Bind("intMediaC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator36" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intMediaC_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator37" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeC_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator38" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveC_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_48hrsTextBox" runat="server" Text='<%# Bind("intTestC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator39" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestC_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="left" width="75%">
                        To start or restart the workflow for this report, edit the results and click the 
                        &quot;Update and Start Workflow&quot; button&nbsp;
                    </td>
                    <td align="right" width="25%">
                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" Text="Save"
                            OnClick="InsertButton_Click" />
                        &nbsp;
                        <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" Text="Cancel"
                            OnClick="InsertCancelButton_Click" />
                    </td>
                </tr>
            </table>
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            
            <table class="info" width="100%">
        <tr>
            <th colspan="2">
                <h1>MEM Elution</h1>
            </th>
        </tr>
        <tr>
            <td align="right" width="50%">
                Study Number:
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="txtStudyNumberTextBox" runat="server" Enabled="False" Text='<%# Eval("txtStudyNumber") %>' />
            </td>
        </tr>
        <tr>
            <td align="right" width="50%">
                Study Director:
            </td>
            <td align="left" width="50%">
                <asp:TextBox ID="txtFullNameTextBox" runat="server" Enabled="False" Text='<%# Eval("txtFullName") %>' />
            </td>
        </tr>
    </table>
    <br />
            <table class="results" width="650px">
                <tr>
                    <th colspan="2">
                        <b>Test Results</b>
                    </th>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Positive Control QC#:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtPositiveControlTextBox" runat="server" Text='<%# Bind("txtPositiveControl") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Negative Control QC#:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtNegativeControlTextBox" runat="server" Text='<%# Bind("txtNegativeControl") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Extractant for test article: MEM complete:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtUntreatedControlTextBox" runat="server" Text='<%# Bind("txtUntreatedControl") %>' /> 
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Extract was sterilized through 0.22 um filter:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtExtractSterilizedTextBox" runat="server" Text='<%# Bind("txtExtractSterilized") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Date
                                </th>
                                <th scope="col">
                                    Time<br />
                                    (Hours)
                                </th>
                                <th scope="col">
                                    Dish
                                </th>
                                <th scope="col">
                                    Media
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Experimental
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_0hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_0hrs","{0:MM/dd/yyyy}") %>' />
                                </td>
                                <td rowspan="3">
                                    0
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_0hrsTextBox" runat="server" Text='<%# Bind("intMediaA_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_0hrsTextBox" runat="server" Text='<%# Bind("intTestA_0hrs") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_0hrsTextBox" runat="server" Text='<%# Bind("intMediaB_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_0hrsTextBox" runat="server" Text='<%# Bind("intTestB_0hrs") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_0hrsTextBox" runat="server" Text='<%# Bind("intMediaC_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_0hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_0hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_0hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_0hrsTextBox" runat="server" Text='<%# Bind("intTestC_0hrs") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_24hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_24hrs","{0:MM/dd/yyyy}") %>' />
                                </td>
                                <td rowspan="3">
                                    24
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_24hrsTextBox" runat="server" Text='<%# Bind("intMediaA_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_24hrsTextBox" runat="server" Text='<%# Bind("intTestA_24hrs") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_24hrsTextBox" runat="server" Text='<%# Bind("intMediaB_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_24hrsTextBox" runat="server" Text='<%# Bind("intTestB_24hrs") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_24hrsTextBox" runat="server" Text='<%# Bind("intMediaC_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_24hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_24hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_24hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_24hrsTextBox" runat="server" Text='<%# Bind("intTestC_24hrs") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    <asp:TextBox ID="dteExperimentDate_48hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_48hrs","{0:MM/dd/yyyy}") %>' />
                                </td>
                                <td rowspan="3">
                                    48
                                </td>
                                <td>
                                    A
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaA_48hrsTextBox" runat="server" Text='<%# Bind("intMediaA_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeA_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeA_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveA_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveA_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestA_48hrsTextBox" runat="server" Text='<%# Bind("intTestA_48hrs") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    B
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaB_48hrsTextBox" runat="server" Text='<%# Bind("intMediaB_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeB_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeB_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveB_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveB_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestB_48hrsTextBox" runat="server" Text='<%# Bind("intTestB_48hrs") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    C
                                </td>
                                <td>
                                    <asp:TextBox ID="intMediaC_48hrsTextBox" runat="server" Text='<%# Bind("intMediaC_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeC_48hrsTextBox" runat="server" Text='<%# Bind("intNegativeC_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveC_48hrsTextBox" runat="server" Text='<%# Bind("intPositiveC_48hrs") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestC_48hrsTextBox" runat="server" Text='<%# Bind("intTestC_48hrs") %>' />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                            Text="Edit" />
                        &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                            Text="New" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table>
                <tr>
                    <th>
                        <h1>MEM Elution</h1>
                    </th>
                </tr>
                <tr>
                    <td>
                        Please select a study number to edit -or- click the New button to enter new results.
                        <br />
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="samples.aspx">Return to Samples</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="studies.aspx">Return to Studies</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <FooterTemplate>
        </FooterTemplate>
        <HeaderTemplate>
        </HeaderTemplate>
    </asp:FormView>
    </form>
    <asp:Label ID="LabelUsername" runat="server" Text="Username"></asp:Label>&nbsp;
    <asp:Label ID="LabelDB" runat="server" Text="DB"></asp:Label>
</body>
</html>
