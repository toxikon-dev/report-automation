<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LabSchedule.aspx.vb" Inherits="RAForms.LabSchedule, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lab Schedule</title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
    
    <br />
    
    <table width="650px" class="results">
                <tr>
                    <th colspan="2">

                    </th>
                </tr>
        </table>
    
    <table class="style1">
        <tr>
            <td class="style2">
                Select Study Number</td>
            <td class="style3">
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="txtStudyNumber" 
        DataValueField="txtStudyNumber" AutoPostBack="True">
    </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
        
        <table width="650px" class="results">
                <tr>
                    <th colspan="2">
                    <b>Lab Schedule</b>
                    </th>
                </tr>
        </table>
                   
        <asp:FormView ID="FormView1" runat="server" 
                DataSourceID="SqlDataSource3" DefaultMode="Edit">
            <EditItemTemplate>
            <table>
            <tr>
                <td align="right">
                Test Article Number:</td>
                <td>
                <asp:TextBox ID="txtTestArticleNameTextBox" runat="server" 
                    Text='<%# Bind("txtTestArticleName") %>' Enabled="false"/>
                </td>
            </tr>
            <tr>
                <td align="right">
                Protocol Name:</td>
                <td>
                <asp:TextBox ID="txtProtocolNumberTextBox" runat="server" 
                    Text='<%# Bind("txtProtocolNumber") %>' Enabled="false"/>
                </td>
            </tr>
            </table>
                <table width="650px" class="results">
                <tr>
                    <th colspan="2">
                        <b>Study Dates</b>
                    </th>
                </tr>
                </table>
            <table>
            <tr>
            <td>
            <table>
                <tr>
                    <td align="right">
                Study Initiation:</td>
                    <td>
                    <asp:TextBox ID="dteStudyInitiationDateTextBox" runat="server" 
                    Text='<%# Bind("dteStudyInitiationDate","{0:d}") %>' 
                    ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="SIDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dteStudyInitiationDateTextBox" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                <td align="right">
                Test Initiation:</td>
                    <td>
                    <asp:TextBox ID="dteTestInitiationDateTextBox" runat="server" 
                    Text='<%# Bind("dteTestInitiationDate","{0:d}") %>' 
                    ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />                    
                    <asp:CompareValidator ID="TICompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dteTestInitiationDateTextBox" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                <td align="right">
                Extraction Start:</td>
                <td>
                    <asp:TextBox ID="dteExtractionStartDateTextBox" runat="server" 
                    Text='<%# Bind("dteExtractionStartDate","{0:d}") %>' 
                    ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="EDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dteExtractionStartDateTextBox" Display="Dynamic"></asp:CompareValidator>
                </td>
                </tr>
                </table>
                </td>
            <td>
            <table>
             <tr>
                <td align="right">
                Project Log:</td>
                <td>
                <asp:TextBox ID="dteProjectLogDateTextBox" runat="server" 
                    Text='<%# Bind("dteProjectLogDate","{0:d}") %>' 
                    ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="PLCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dteProjectLogDateTextBox" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
                       <tr>
                <td align="right">
                Test Completion:</td>
                <td>
                <asp:TextBox ID="dteTestCompletionDateTextBox" runat="server" 
                    Text='<%# Bind("dteTestCompletionDate","{0:d}") %>' 
                    ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="TCCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dteTestCompletionDateTextBox" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                Extraction End:</td>
                <td>
                <asp:TextBox ID="dteExtractionEndDateTextBox" runat="server" 
                    Text='<%# Bind("dteExtractionEndDate","{0:d}") %>' 
                    ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="EEDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dteExtractionEndDateTextBox" Display="Dynamic"></asp:CompareValidator>
                </td>
             </tr>
             <tr>
                <td>
                <asp:TextBox ID="TextBox1" runat="server" 
                    Text='<%# Bind("txtSampleNumber") %>'  Visible="false"/>
                </td>
             </tr>
             </table>
             </td>
           </tr>            
          </table>
                <br />
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" onClick="UpdateButton_Click" />
                &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" onClick="CancelButton_Click"/>
            </EditItemTemplate>
            <ItemTemplate>
            <table>
            <tr>
                <td align="right">
                Test Article Name:</td>
                <td>
                <asp:Label ID="txtTestArticleNameLabel" runat="server" 
                    Text='<%# Bind("txtTestArticleName") %>' />
                </td>
            </tr>
            <tr>
                <td align="right">
                Protocol Name:</td>
                <td>
                <asp:Label ID="Label1" runat="server" 
                    Text='<%# Bind("txtProtocolNumber") %>' />
                </td>
            </tr>
            </table>
                <asp:Label ID="Label2" runat="server" Text="Study Dates"></asp:Label>
                <br />
            <table>
            <tr>
            <td>
            <table>
            <tr>
                <td align="right">
                Study Initiation:</td>
                <td>
                <asp:Label ID="dteStudyInitiationDateLabel" runat="server" 
                    Text='<%# Bind("dteStudyInitiationDate","{0:d}") %>' />
                </td>
            </tr>
            <tr>
                <td align="right">
                Test Initiation:</td>
                <td>
                <asp:Label ID="dteTestInitiationDateLabel" runat="server" 
                    Text='<%# Bind("dteTestInitiationDate","{0:d}") %>' />
                </td>
            </tr>
            <tr>
                <td align="right">
                Report:</td>
                <td>
                <asp:Label ID="dteReportDateLabel" runat="server" 
                    Text='<%# Bind("dteReportDate","{0:d}") %>' />
                </td>
            </tr>
            <tr>
                <td align="right">
                Extraction Start:</td>
                <td>
                <asp:Label ID="dteExtractionStartDateLabel" runat="server" 
                    Text='<%# Bind("dteExtractionStartDate","{0:d}") %>' />
                </td>
            </tr>
            </table>
            </td>
            <td>
            <table>
            <tr>
            <td align="right">
                Test Completion:</td>
                <td>
                <asp:Label ID="dteTestCompletionDateLabel" runat="server" 
                    Text='<%# Bind("dteTestCompletionDate","{0:d}") %>' />
                </td>
            </tr>
            <tr>
            <td align="right">
                Project Log:</td>
                <td>
                <asp:Label ID="dteProjectLogDateLabel" runat="server" 
                    Text='<%# Bind("dteProjectLogDate","{0:d}") %>' />
                </td>
            </tr>
            <tr>
            <td align="right">
                Extraction End:</td>
                <td>
                <asp:Label ID="dteExtractionEndDateLabel" runat="server" 
                    Text='<%# Bind("dteExtractionEndDate","{0:d}") %>' />
                </td>
            </tr>
            <tr>
                <td>
                <asp:Label ID="Label3" runat="server" 
                    Text='<%# Bind("txtSampleNumber") %>' Visible="false" />
                </td>
            </tr>
            </table>
            </td>
            </tr>
            </table>
            </ItemTemplate>
            <EmptyDataTemplate>
            <table>
                <tr>
                    <td>Please select a study to edit.<br />
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="_default.aspx">Main</asp:LinkButton>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="samples.aspx">Samples/TRF</asp:LinkButton>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="studies.aspx">Studies</asp:LinkButton>

                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        </asp:FormView>
    

    
    </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
            SelectCommand="SELECT Distinct [txtStudyNumber] FROM [tblProjects] UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
            
            SelectCommand="SELECT txtProtocolNumber, dteStudyInitiationDate, dteTestInitiationDate, dteExtractionStartDate, dteExtractionEndDate, dteTestCompletionDate, dteProjectLogDate, txtTestArticleName, txtSampleNumber FROM LabScheduleVw WHERE (txtStudyNumber = @txtStudyNumber)" 
            
        UpdateCommand="UPDATE tblProjects SET dteTestInitiationDate = @dteTestInitiationDate, dteTestCompletionDate = @dteTestCompletionDate, dteProjectLogDate = @dteProjectLogDate, dteStudyInitiationDate = @dteStudyInitiationDate, dteExtractionStartDate = @dteExtractionStartDate, dteExtractionEndDate = @dteExtractionEndDate WHERE (txtStudyNumber = @txtStudyNumber)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="txtStudyNumber" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="dteTestInitiationDate" />
                <asp:Parameter Name="dteTestCompletionDate" />
                <asp:Parameter Name="dteProjectLogDate" />
                <asp:Parameter Name="dteStudyInitiationDate" />
                <asp:Parameter Name="dteExtractionStartDate" />
                <asp:Parameter Name="dteExtractionEndDate" />
                <asp:ControlParameter ControlID="DropDownList1" Name="txtStudyNumber" 
                    PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    To start or restart the workflow for a report, edit its results and click the "Update and Start Workflow" button <br />
    <asp:Label ID="LabelUsername" runat="server" Text="Username"></asp:Label>&nbsp;
    <asp:Label ID="LabelDB" runat="server" Text="DB"></asp:Label>
</body>
</html>
