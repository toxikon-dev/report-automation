<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Proxies.aspx.vb" Inherits="RAForms.Proxies, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Test Request Form</title>
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
            width: 100%;
        }
        .style6
        {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource 
        ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="SELECT intUserID, intProxyID, dteExpires FROM tblProxies WHERE (lngProxyID = @DropDownList1)" 
        
        UpdateCommand="UPDATE tblUsers SET txtUsername = @txtUsername, txtUserRole = @txtUserRole, txtEmail = @txtEmail, txtFullName = @txtFullName, txtPhone = @txtPhone, bloSignature = @bloSignature, txtPassword = @txtPassword WHERE txtUsername = @txtUsername" 

        
        InsertCommand="INSERT INTO tblUsers(txtUsername, txtUserRole, txtEmail, txtFullName, txtPhone, bloSignature, txtPassword) VALUES (@txtUsername, @txtUserRole, @txtEmail, @txtFullName, @txtPhone, @bloSignature, @txtPassword)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" 
                Name="DropDownList1" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="txtUsername" />
            <asp:Parameter Name="txtUserRole" />
            <asp:Parameter Name="txtEmail" />
            <asp:Parameter Name="txtFullName" />
            <asp:Parameter Name="txtPhone" />
            <asp:Parameter Name="bloSignature" />
            <asp:Parameter Name="txtPassword" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="txtUsername" />
            <asp:Parameter Name="txtUserRole" />
            <asp:Parameter Name="txtEmail" />
            <asp:Parameter Name="txtFullName" />
            <asp:Parameter Name="txtPhone" />
            <asp:Parameter Name="bloSignature" />
            <asp:Parameter Name="txtPassword" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT lngProxyID, p.txtFullName + ' FOR ' + s.txtFullName + ' UNTIL ' + convert(varchar(10), dteexpires, 1) FROM [tblProxies] inner join tblUsers p on tblProxies.intProxyID = p.intUserID inner join tblUsers s on tblProxies.intUserID = s.intUserID where dteExpires >= getdate() ORDER BY 2"></asp:SqlDataSource>
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
                Select a User</td>
            <td class="style3">
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="txtUsername" 
        DataValueField="txtUsername" AutoPostBack="True">
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="intUserID" 
        DataSourceID="SqlDataSource1" DefaultMode="Edit">
        <EditItemTemplate>
            <table class="style5">
                <tr>
                    <td align="center" colspan="2">
                        <h1>User</h1></td>
                </tr>
                <tr>
                    <td class="style6">
                        Username:</td>
                    <td>
                        <asp:TextBox ID="txtUsernameTextBox" runat="server" 
                            Text='<%# Bind("txtUsername") %>' Enabled="False" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtUsernameTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        UserRole:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            SelectedValue='<%# Bind("txtUserRole") %>'>
                            <asp:ListItem>Study Director</asp:ListItem>
                            <asp:ListItem>QA</asp:ListItem>
                            <asp:ListItem>DPS</asp:ListItem>
                            <asp:ListItem>QC</asp:ListItem>
                            <asp:ListItem>Study Supervisor</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmailTextBox" runat="server" 
                            Text='<%# Bind("txtEmail") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtEmailTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Full Name:</td>
                    <td>
                        <asp:TextBox ID="txtFullNameTextBox" runat="server" 
                            Text='<%# Bind("txtFullName") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtFullNameTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Phone:</td>
                    <td>
                        <asp:TextBox ID="txtPhoneTextBox" runat="server" 
                            Text='<%# Bind("txtPhone") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Signature:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="bloSignatureTextBox" runat="server" 
                            Text='<%# Bind("bloSignature") %>' />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Password:</td>
                    <td>
                        <asp:TextBox ID="txtPasswordTextBox" runat="server" 
                            Text='<%# Bind("txtPassword") %>' TextMode="Password" />
                    </td>
                </tr>
            </table>
            <br />
                 <asp:Button ID="Button2" runat="server" CausesValidation="True" 
                Text="Save" onClick="UpdateButton_Click" />&nbsp;
                <asp:Button ID="Button3" runat="server" 
                CausesValidation="False" Text="Cancel" OnClick="UpdateCancelButton_Click" /> 
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="style5">
                <tr>
                    <td align="center" colspan="2">
                        <h1>User</h1></td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Username:</td>
                    <td>
                        <asp:TextBox ID="txtUsernameTextBox" runat="server" 
                            Text='<%# Bind("txtUsername") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtUsernameTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        UserRole:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            SelectedValue='<%# Bind("txtUserRole") %>'>
                            <asp:ListItem>Study Director</asp:ListItem>
                            <asp:ListItem>QA</asp:ListItem>
                            <asp:ListItem>DPS</asp:ListItem>
                            <asp:ListItem>QC</asp:ListItem>
                            <asp:ListItem>Study Supervisor</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmailTextBox" runat="server" 
                            Text='<%# Bind("txtEmail") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtEmailTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Full Name:</td>
                    <td>
                        <asp:TextBox ID="txtFullNameTextBox" runat="server" 
                            Text='<%# Bind("txtFullName") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtFullNameTextBox" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Phone:</td>
                    <td>
                        <asp:TextBox ID="txtPhoneTextBox" runat="server" 
                            Text='<%# Bind("txtPhone") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Signature:</td>
                    <td>
                        <asp:TextBox ID="bloSignatureTextBox" runat="server" 
                            Text='<%# Bind("bloSignature") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        Password:</td>
                    <td>
                        <asp:TextBox ID="txtPasswordTextBox" runat="server" 
                            Text='<%# Bind("txtPassword") %>' TextMode="Password" />
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
            intUserID:
            <asp:Label ID="intUserIDLabel" runat="server" Text='<%# Eval("intUserID") %>' />
            <br />
            txtUsername:
            <asp:Label ID="txtUsernameLabel" runat="server" 
                Text='<%# Bind("txtUsername") %>' />
            <br />
            txtUserRole:
            <asp:Label ID="txtUserRoleLabel" runat="server" 
                Text='<%# Bind("txtUserRole") %>' />
            <br />
            txtEmail:
            <asp:Label ID="txtEmailLabel" runat="server" Text='<%# Bind("txtEmail") %>' />
            <br />
            txtFullName:
            <asp:Label ID="txtFullNameLabel" runat="server" 
                Text='<%# Bind("txtFullName") %>' />
            <br />
            txtPhone:
            <asp:Label ID="txtPhoneLabel" runat="server" Text='<%# Bind("txtPhone") %>' />
            <br />
            bloSignature:
            <asp:Label ID="bloSignatureLabel" runat="server" 
                Text='<%# Bind("bloSignature") %>' />
            <br />
            txtPassword:
            <asp:Label ID="txtPasswordLabel" runat="server" 
                Text='<%# Bind("txtPassword") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
        <EmptyDataTemplate>
            <table>
            <tr><td align="center"><h1>User</h1></td></tr>
            <tr><td style="height: 80px;">Please select a user to edit -or- click the New button to enter a new user.<br />
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="_default.aspx">Main</asp:LinkButton>&nbsp;&nbsp;
                </td></tr>
            </table>
        </EmptyDataTemplate>
        <FooterTemplate>
        </FooterTemplate>
        <HeaderTemplate>
        </HeaderTemplate>
    </asp:FormView>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
    </asp:Repeater>
    </form>
</body>
</html>
