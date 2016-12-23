<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Kligman.aspx.vb" Inherits="RAForms.Kligman, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kligman</title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>"
        SelectCommand="SELECT tblUsers.txtFullName, tblUsers.txtEmail, tblKligman.* FROM tblProjects INNER JOIN tblUsers ON tblProjects.intStudyDirector = tblUsers.intUserID INNER JOIN tblKligman ON tblProjects.txtStudyNumber = tblKligman.txtStudyNumber WHERE (tblKligman.txtStudyNumber = @StudyDropDownList)"
        UpdateCommand="UPDATE tblKligman SET intReaction = @intReaction where txtStudyNumber = @txtStudyNumber"       
        InsertCommand="INSERT INTO tblKligman(txtStudyNumber, intReaction) VALUES (@txtStudyNumber, @intReaction)">
        <SelectParameters>
            <asp:ControlParameter ControlID="StudyDropDownList" Name="StudyDropDownList" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="intReaction" />
            <asp:ControlParameter ControlID="StudyDropDownList2" Name="txtStudyNumber" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="StudyDropDownList2" Name="txtStudyNumber" 
                PropertyName="SelectedValue" />
            <asp:Parameter Name="intReaction" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>"
        
        SelectCommand="SELECT [txtStudyNumber] FROM [tblKligman] UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT tblProjects.txtStudyNumber FROM tblProjects WHERE tblProjects.txtProtocolNumber in (select txtProtocolName from tblProtocols where txtWebForm = 'kligman.aspx') EXCEPT SELECT tblKligman.txtStudyNumber FROM tblKligman UNION SELECT txtEmpty FROM tblEmpty ORDER BY 1">
    </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        
        SelectCommand="SELECT tblUsers.txtFullName + '#' + tblUsers.txtEmail FROM tblUsers,tblProjects WHERE tblUsers.intUserID = tblProjects.intStudyDirector and tblProjects.txtStudyNumber = @StudyDropDownList2">
         <SelectParameters>
             <asp:ControlParameter ControlID="StudyDropDownList2" Name="StudyDropDownList2" 
                 PropertyName="SelectedValue" />
         </SelectParameters>
    </asp:SqlDataSource>   
    <table>
        <tr>
            <td>
                <img alt="Logo" height="29" style="width: 142" src="logo.jpg" />
            </td>
            <td align="right" style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                Report Automation
            </td>
        </tr>
    </table>
    <table class="selection">
        <tr>
            <td align="right" style="width: 115px">
                Select a Study:
            </td>
            <td style="width: 100px">
                <asp:DropDownList ID="StudyDropDownList" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="txtStudyNumber" DataValueField="txtStudyNumber" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td align="right" style="width: 100px"> or click 
                <asp:Button ID="Button1" runat="server" Text="New" CausesValidation="false" /></td>
            <td align="right" style="width: 130px">
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
           
      <table class="info" style="width: 650px">
        <tr>
            <th colspan="2">
                <h1>Kligman Non-G</h1>
            </th>
        </tr>
        <tr>
            <td align="right" style="width: 50%">
                Study Number:
            </td>
            <td align="left" style="width: 50%">
                <asp:TextBox ID="txtStudyNumberTextBox" runat="server" Enabled="False" Text='<%# Eval("txtStudyNumber") %>' />
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 50%">
                Study Director:
            </td>
            <td align="left" style="width: 50%">
                <asp:TextBox ID="txtFullNameTextBox" runat="server" Enabled="False" Text='<%# Eval("txtFullName") %>' />
                <asp:TextBox ID="txtEmailTextBox" runat="server" Enabled="False" 
                    Text='<%# Eval("txtEmail") %>' Visible="False" style="width: 16px" />
            </td>
        </tr>
    </table>
    <br />
            <table class="results" style="width: 650px">
                <tr>
                    <th colspan="2">
                        <b>Test Results</b>
                    </th>
                </tr>
                <tr>
                    <td align="right" style="width: 50%">
                        Reaction:
                    </td>
                    <td align="left" style="width: 50%">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            SelectedValue='<%# Bind("intReaction") %>'>
                            <asp:ListItem Value="1">no</asp:ListItem>
                            <asp:ListItem Value="2">little</asp:ListItem>
                            <asp:ListItem Value="3">moderate</asp:ListItem>
                            <asp:ListItem Value="4">significant</asp:ListItem>
                            <asp:ListItem Value="5">severe</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <asp:Button ID="UpdateButton0" runat="server" CausesValidation="True" 
                            OnClick="SubmitButton_Click" Text="Update and Start Workflow" />
                        &nbsp;
                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" Text="Update"
                            OnClick="UpdateButton_Click" />
                        &nbsp;
                        <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" Text="Cancel"
                            OnClick="UpdateCancelButton_Click" />
                    </td>
                </tr>
            </table>
            <br />
        </EditItemTemplate>
        <InsertItemTemplate>
            
            <table class="info" style="width: 100%">
        <tr>
            <th colspan="2">
                <h1>Kligman Non-G</h1>
            </th>
        </tr>
        <tr>
            <td align="right" style="width: 50%">
                Study Number:
            </td>
            <td align="left" style="width: 50%">
                <asp:TextBox ID="txtStudyNumberTextBox" runat="server" Enabled="False" Text='<%# Eval("txtStudyNumber") %>' />
            </td>
        </tr>
    </table>
    <br />
            <table class="results" style="width: 650px">
                <tr>
                    <th colspan="2">
                        <b>Test Results</b>
                    </th>
                </tr>
                <tr>
                    <td align="right" style="width: 50%">
                        Reaction:
                    </td>
                    <td align="left" style="width: 50%">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            SelectedValue='<%# Bind("intReaction") %>'>
                            <asp:ListItem Value="1">no</asp:ListItem>
                            <asp:ListItem Value="2">little</asp:ListItem>
                            <asp:ListItem Value="3">moderate</asp:ListItem>
                            <asp:ListItem Value="4">significant</asp:ListItem>
                            <asp:ListItem Value="5">severe</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 75%">
                        To start or restart the workflow for this report, edit the results and click the 
                        &quot;Update and Start Workflow&quot; button&nbsp;
                    </td>
                    <td align="right" style="width: 25%">
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
            
            <table class="info" style="width: 100%">
        <tr>
            <th colspan="2">
                <h1>Kligman Non-G</h1>
            </th>
        </tr>
        <tr>
            <td align="right" style="width: 50%">
                Study Number:
            </td>
            <td align="left" style="width: 50%">
                <asp:TextBox ID="txtStudyNumberTextBox" runat="server" Enabled="False" Text='<%# Eval("txtStudyNumber") %>' />
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 50%">
                Study Director:
            </td>
            <td align="left" style="width: 50%">
                <asp:TextBox ID="txtFullNameTextBox" runat="server" Enabled="False" Text='<%# Eval("txtFullName") %>' />
            </td>
        </tr>
    </table>
    <br />
            <table class="results" style="width: 650px">
                <tr>
                    <th colspan="2">
                        <b>Test Results</b>
                    </th>
                </tr>
                <tr>
                    <td align="right" style="width: 50%">
                        Reaction:
                    </td>
                    <td align="left" style="width: 50%">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            SelectedValue='<%# Eval("intReaction") %>'>
                            <asp:ListItem Value="1">no</asp:ListItem>
                            <asp:ListItem Value="2">little</asp:ListItem>
                            <asp:ListItem Value="3">moderate</asp:ListItem>
                            <asp:ListItem Value="4">significant</asp:ListItem>
                            <asp:ListItem Value="5">severe</asp:ListItem>
                        </asp:DropDownList>
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
                        <h1>Kligman Non-G</h1>
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
