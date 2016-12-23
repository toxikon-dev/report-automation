<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Protocols.aspx.vb" Inherits="RAForms.Protocols, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" EnableSessionState="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Protocols</title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 47%;
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
            width: 100px;
            text-align: right;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource 
        ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="SELECT * FROM tblProtocols WHERE (txtProtocolName = @DropDownList1)" 
        
        UpdateCommand="UPDATE tblProtocols SET txtProtocolName = @txtProtocolName, txtReportQuery = @txtReportQuery, txtProtocolType = @txtProtocolType, booQAReview = @booQAReview, txtWebForm = @txtWebForm WHERE txtProtocolName = @txtProtocolName" 

        InsertCommand="INSERT INTO tblProtocols(txtProtocolName, txtProtocolType, txtReportQuery, booQAReview, txtWebForm) VALUES (@txtProtocolName, @txtProtocolType, @txtReportQuery, @booQAReview, @txtWebForm)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" 
                Name="DropDownList1" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="txtProtocolName" />
            <asp:Parameter Name="txtReportQuery" />
            <asp:Parameter Name="txtProtocolType" />
            <asp:Parameter Name="booQAReview" />
            <asp:Parameter Name="txtWebForm" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="txtProtocolName" />
            <asp:Parameter Name="txtProtocolType" />
            <asp:Parameter Name="txtReportQuery" />
            <asp:Parameter Name="booQAReview" />
            <asp:Parameter Name="txtWebForm" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        
        SelectCommand="SELECT [txtProtocolName] FROM [tblProtocols] UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1"></asp:SqlDataSource>
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
                Select a Protocol</td>
            <td class="style3">
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="txtProtocolName" 
        DataValueField="txtProtocolName" AutoPostBack="True">
    </asp:DropDownList>
            </td>
            <td class="style4">
                or click
            </td>
            <td>
    <asp:Button ID="Button1" runat="server" Text="New" causesvalidation="false" />
            </td>
        </tr>
    </table>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="intProtocolID" 
        DataSourceID="SqlDataSource1" DefaultMode="Edit">
        <EditItemTemplate>
            <table>
                <tr>
                    <td align="center" colspan="2">
                        <h1>Protocol</h1></td>
                </tr>
                <tr>
                    <td class="style5">
                        Protocol Name:</td>
                    <td>
                        <asp:TextBox ID="txtProtocolNameTextBox" runat="server" 
                            Text='<%# Bind("txtProtocolName") %>' Height="22px" Width="400px" 
                            Enabled="False" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtProtocolNameTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Protocol Type:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            SelectedValue='<%# Bind("txtProtocolType") %>'>
                            <asp:ListItem Value="G">GLP</asp:ListItem>
                            <asp:ListItem Value="N">non-GLP</asp:ListItem>
                            <asp:ListItem Value="M">GMP</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Report Query:</td>
                    <td>
                        <asp:TextBox ID="txtReportQueryTextBox" runat="server" 
                            Text='<%# Bind("txtReportQuery") %>' Height="124px" TextMode="MultiLine" 
                            Width="410px" maxlength="2000" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtReportQueryTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        QA Review:</td>
                    <td>
                        <asp:CheckBox ID="booQAReviewCheckBox" runat="server" 
                            Checked='<%# Bind("booQAReview") %>' Text="QA Review" />
                        &nbsp;(non-GLP ONLY)</td>
                </tr>
                <tr>
                    <td class="style5">
                        Web Form:</td>
                    <td>
                        <asp:TextBox ID="txtWebFormTextBox" runat="server" 
                            Text='<%# Bind("txtWebForm") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtWebFormTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
                <asp:Button ID="Button4" runat="server" CausesValidation="True" 
                Text="Clone" onclick="CloneButton_Click" />&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="True" 
                Text="Save" onClick="UpdateButton_Click" />&nbsp;
                <asp:Button ID="Button3" runat="server" 
                CausesValidation="False" Text="Cancel" OnClick="UpdateCancelButton_Click" /> 
        </EditItemTemplate>
        <InsertItemTemplate>
                <table>
                <tr>
                    <td align="center" colspan="2">
                        <h1>Protocol</h1></td>
                </tr>
                <tr>
                    <td class="style5">
                        Protocol Name:</td>
                    <td>
                        <asp:TextBox ID="txtProtocolNameTextBox" runat="server" 
                            Text='<%# Bind("txtProtocolName") %>' Height="22px" Width="400px" maxlength="50" />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtProtocolNameTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Protocol Type:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            SelectedValue='<%# Bind("txtProtocolType") %>'>
                            <asp:ListItem Value="G">GLP</asp:ListItem>
                            <asp:ListItem Value="N">non-GLP</asp:ListItem>
                            <asp:ListItem Value="M">GMP</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Report Query:</td>
                    <td>
                        <asp:TextBox ID="txtReportQueryTextBox" runat="server" 
                            Text='<%# Bind("txtReportQuery") %>' Height="124px" TextMode="MultiLine" 
                            Width="410px" maxlength="2000" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtReportQueryTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:CheckBox ID="booQAReviewCheckBox" runat="server" 
                            Checked='<%# Bind("booQAReview") %>' Text="QA Review (non-GLP ONLY)" />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Web Form:</td>
                    <td>
                        <asp:TextBox ID="txtWebFormTextBox" runat="server" 
                            Text='<%# Bind("txtWebForm") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtWebFormTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                </table>
                <br />
                 <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                 Text="Save" onclick="InsertButton_Click" />&nbsp;
                <asp:Button ID="InsertCancelButton" runat="server" 
                CausesValidation="False" Text="Cancel" OnClick="InsertCancelButton_Click"  />
        </InsertItemTemplate>
        <ItemTemplate>
            intProtocolID:
            <asp:Label ID="intProtocolIDLabel" runat="server" 
                Text='<%# Eval("intProtocolID") %>' />
            <br />
            txtProtocolName:
            <asp:Label ID="txtProtocolNameLabel" runat="server" 
                Text='<%# Bind("txtProtocolName") %>' />
            <br />
            txtProtocolType:
            <asp:Label ID="txtProtocolTypeLabel" runat="server" 
                Text='<%# Bind("txtProtocolType") %>' />
            <br />
            txtReportQuery:
            <asp:Label ID="txtReportQueryLabel" runat="server" 
                Text='<%# Bind("txtReportQuery") %>' />
            <br />
            booQAReview:
            <asp:CheckBox ID="booQAReviewCheckBox" runat="server" 
                Checked='<%# Bind("booQAReview") %>' Enabled="false" />
            <br />
            txtWebForm:
            <asp:Label ID="txtWebFormLabel" runat="server" 
                Text='<%# Bind("txtWebForm") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <EmptyDataTemplate>
            <table>
            <tr><td align="center"><h1>Protocol</h1></td></tr>
            <tr><td style="height: 80px;">Please select a protocol to edit -or- click the New button to enter a new protocol.
                </td></tr>
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
