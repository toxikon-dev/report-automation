<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inspection.aspx.vb" Inherits="RAForms.Inspection, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Inspections</title>
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
                    <b>Inspection Information</b>
                    </th>
                </tr>
        </table>
        
 
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
            SelectCommand="SELECT Distinct [txtStudyNumber] FROM [tblProjects] UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1">
        </asp:SqlDataSource>
        
        <asp:FormView ID="FormView1" runat="server" 
                DefaultMode="Edit" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
            
            <table>
            <tr>
                <td align="right">
                Test Article Number:</td>
                <td>
                <asp:TextBox ID="TextBox1" runat="server" 
                    Text='<%# Bind("txtTestArticleName") %>' Enabled="false" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    Protocol Name:</td>
                <td>
                <asp:TextBox ID="txtTestArticleNameTextBox" runat="server" 
                    Text='<%# Bind("txtProtocolNumber") %>' Enabled="false" />
                </td>
            </tr>
            </table>
            
            <table width="650px" class="results">
                <tr>
                    <th colspan="2">
                    <b>QAU Inspection Dates</b>
                    </th>
                </tr>
            </table>
            <div style="overflow:hidden">
                <table width="100%" border="1" class="data_entry" >
                            <tr>
                                <th scope="col">
                                    Inspection Type
                                </th>
                                <th scope="col">
                                    Inspection 
                                </th>
                                <th scope="col">
                                    Report to Study Director
                                </th>
                                <th scope="col">
                                    Report to Management
                                </th>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase1TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase1Text") %>' maxlength="50" />                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase1InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase1InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P1IDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase1InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase1SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase1SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P1SDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase1SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase1MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase1MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P1MDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase1MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase2TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase2Text") %>' maxlength="50" />                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase2InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase2InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P2IDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase2InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase2SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase2SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P2SDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase2SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase2MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase2MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P2MDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase2MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase3TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase3Text") %>' maxlength="50" />                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase3InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase3InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P3IDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase3InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase3SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase3SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P3SDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase3SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase3MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase3MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P3MDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase3MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase4TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase4Text") %>' maxlength="50" />                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase4InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase4InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P4IDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase4InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase4SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase4SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P4SDCompareValidator" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase4SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase4MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase4MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="P4MDCompareValidator1" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase4MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase5TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase5Text") %>' maxlength="50" />                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase5InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase5InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator12" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase5InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase5SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase5SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator13" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase5SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase5MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase5MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator14" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase5MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase6TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase6Text") %>' maxlength="50" />                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase6InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase6InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator15" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase6InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase6SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase6SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator16" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase6SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase6MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase6MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator17" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase6MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase7TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase7Text") %>' maxlength="50" />                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase7InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase7InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator18" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase7InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase7SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase7SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator19" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase7SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase7MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase7MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator20" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase7MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase8TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase8Text") %>' maxlength="50" />                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase8InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase8InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator21" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase8InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase8SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase8SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator22" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase8SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase8MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase8MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator23" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase8MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase9TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase9Text") %>' maxlength="50" />                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase9InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase9InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator24" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase9InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase9SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase9SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator25" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase9SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase9MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase9MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator26" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase9MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase10TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase10Text") %>' maxlength="50" />                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase10InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase10InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator27" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase10InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase10SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase10SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator28" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase10SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase10MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase10MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator29" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase10MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase11TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase11Text") %>' maxlength="50" />                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase11InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase11InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator30" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase11InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase11SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase11SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator31" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase11SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase11MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase11MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator32" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase11MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase12TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase12Text") %>' maxlength="50" />                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase12InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase12InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator33" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase12InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase12SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase12SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator34" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase12SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase12MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase12MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator35" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase12MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase13TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase13Text") %>' maxlength="50" />                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase13InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase13InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator36" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase13InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase13SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase13SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator37" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase13SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase13MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase13MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator38" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase13MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase14TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase14Text") %>' maxlength="50" />                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase14InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase14InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator39" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase14InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase14SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase14SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator40" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase14SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase14MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase14MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator41" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase14MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                    
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase15TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase15Text") %>' maxlength="50" />                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase15InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase15InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator42" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase15InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase15SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase15SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator43" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase15SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase15MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase15MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator44" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase15MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                   
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase16TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase16Text") %>' maxlength="50" />                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase16InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase16InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator45" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase16InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase16SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase16SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator46" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase16SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase16MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase16MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator47" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase16MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase17TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase17Text") %>' maxlength="50" />                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase17InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase17InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator48" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase17InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase17SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase17SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator49" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase17SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase17MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase17MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator50" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase17MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase18TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase18Text") %>' maxlength="50" />                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase18InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase18InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator51" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase18InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase18SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase18SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator52" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase18SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase18MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase18MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator53" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase18MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase19TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase19Text") %>' maxlength="50" />                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase19InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase19InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator54" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase19InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase19SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase19SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator55" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase19SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase19MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase19MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator56" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase19MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase20TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase20Text") %>' maxlength="50" />                               
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase20InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase20InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator57" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase20InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase20SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase20SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator58" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase20SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase20MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase20MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator59" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase20MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase21TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase21Text") %>' maxlength="50" />                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase21InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase21InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator60" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase21InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase21SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase21SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator61" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase21SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase21MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase21MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator62" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase21MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase22TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase22Text") %>' maxlength="50" />                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase22InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase22InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator63" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase22InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase22SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase22SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator64" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase22SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase22MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase22MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator65" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase22MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase23TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase23Text") %>' maxlength="50" />                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase23InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase23InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator66" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase23InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase23SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase23SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator67" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase23SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase23MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase23MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator68" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase23MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase24TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase24Text") %>' maxlength="50" />                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase24InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase24InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator69" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase24InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase24SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase24SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator70" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase24SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase24MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase24MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator71" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase24MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase25TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase25Text") %>' maxlength="50" />                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase25InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase25InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator72" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase25InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase25SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase25SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator73" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase25SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase25MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase25MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator74" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase25MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase26TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase26Text") %>' maxlength="50" />                             
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase26InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase26InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator75" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase26InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                  
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase26SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase26SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator76" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase26SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase26MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase26MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator77" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase26MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase27TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase27Text") %>' maxlength="50" />                             
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase27InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase27InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator78" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase27InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase27SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase27SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator79" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase27SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase27MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase27MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator80" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase27MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase28TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase28Text") %>' maxlength="50" />                             
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase28InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase28InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator81" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase28InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase28SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase28SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator82" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase28SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase28MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase28MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator83" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase28MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase29TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase29Text") %>' maxlength="50" />                             
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase29InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase29InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator84" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase29InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase29SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase29SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator85" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase29SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase29MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase29MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator86" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase29MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase30TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase30Text") %>' maxlength="50" />                            
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase30InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase30InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator87" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase30InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase30SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase30SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator88" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase30SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase30MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase30MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator89" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase30MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase31TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase31Text") %>' maxlength="50" />                            
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase31InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase31InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator90" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase31InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase31SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase31SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator91" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase31SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase31MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase31MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator92" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase31MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase32TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase32Text") %>' maxlength="50" />                            
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase32InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase32InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator93" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase32InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase32SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase32SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator94" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase32SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase32MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase32MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator95" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase32MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase33TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase33Text") %>' maxlength="50" />                          
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase33InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase33InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator96" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase33InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase33SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase33SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator97" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase33SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase33MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase33MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator98" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase33MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase34TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase34Text") %>' maxlength="50" />                         
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase34InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase34InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator99" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase34InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase34SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase34SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator100" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase34SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                              
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase34MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase34MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator101" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase34MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                 
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase35TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase35Text") %>' maxlength="50" />                         
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase35InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase35InspectionDate") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator102" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase35InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase35SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase35SDReportDate") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator103" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase35SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                              
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase35MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase35MgtReportDate") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator104" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase35MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase36TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase36Text") %>' maxlength="50" />                         
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase36InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase36InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator105" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase36InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase36SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase36SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator106" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase36SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                              
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase36MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase36MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator107" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase36MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                                
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase37TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase37Text") %>' maxlength="50" />                       
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase37InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase37InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator108" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase37InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase37SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase37SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator109" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase37SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                              
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase37MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase37MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator110" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase37MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase38TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase38Text") %>' maxlength="50" />                      
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase38InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase38InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator111" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase38InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase38SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase38SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator112" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase38SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                             
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase38MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase38MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator113" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase38MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                            
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    <asp:TextBox ID="txtPhase39TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase39Text") %>' maxlength="50" />                      
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase39InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase39InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator114" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase39InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase39SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase39SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator115" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase39SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                             
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase39MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase39MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator116" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase39MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                            
                                </td>
                            </tr>
                            <tr>
                                <td >
                                     <asp:TextBox ID="txtPhase40TextTextBox" runat="server" 
                                    Text='<%# Bind("txtPhase40Text") %>' maxlength="50" />                     
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase40InspectionDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase40InspectionDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator117" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase40InspectionDateTextBox" Display="Dynamic"></asp:CompareValidator>                               
                                </td>
                                <td >
                                   <asp:TextBox ID="dtePhase40SDReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase40SDReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator118" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase40SDReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                           
                                </td>
                                <td >
                                    <asp:TextBox ID="dtePhase40MgtReportDateTextBox" runat="server" 
                                    Text='<%# Bind("dtePhase40MgtReportDate","{0:d}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                    <asp:CompareValidator ID="CompareValidator119" runat="server" 
                            ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" 
                            ControlToValidate="dtePhase40MgtReportDateTextBox" Display="Dynamic"></asp:CompareValidator>                            
                                </td>
                            </tr>
                
                </table>
                </div>

                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" onClick="UpdateButton_Click" />
                &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" onClick="CancelButton_Click" />
            </EditItemTemplate>
            <InsertItemTemplate>
                txtProtocolNumber:
                <asp:TextBox ID="txtProtocolNumberTextBox" runat="server" 
                    Text='<%# Bind("txtProtocolNumber") %>' />
                <br />
                txtPhase1Text:
                <asp:TextBox ID="txtPhase1TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase1Text") %>' maxlength="50" />
                <br />
                dtePhase1InspectionDate:
                <asp:TextBox ID="dtePhase1InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase1InspectionDate") %>' />
                <br />
                dtePhase1SDReportDate:
                <asp:TextBox ID="dtePhase1SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase1SDReportDate") %>' />
                <br />
                dtePhase1MgtReportDate:
                <asp:TextBox ID="dtePhase1MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase1MgtReportDate") %>' />
                <br />
                txtPhase2Text:
                <asp:TextBox ID="txtPhase2TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase2Text") %>' />
                <br />
                dtePhase2InspectionDate:
                <asp:TextBox ID="dtePhase2InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase2InspectionDate") %>' />
                <br />
                dtePhase2SDReportDate:
                <asp:TextBox ID="dtePhase2SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase2SDReportDate") %>' />
                <br />
                dtePhase2MgtReportDate:
                <asp:TextBox ID="dtePhase2MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase2MgtReportDate") %>' />
                <br />
                txtPhase3Text:
                <asp:TextBox ID="txtPhase3TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase3Text") %>' />
                <br />
                dtePhase3InspectionDate:
                <asp:TextBox ID="dtePhase3InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase3InspectionDate") %>' />
                <br />
                dtePhase3SDReportDate:
                <asp:TextBox ID="dtePhase3SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase3SDReportDate") %>' />
                <br />
                dtePhase3MgtReportDate:
                <asp:TextBox ID="dtePhase3MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase3MgtReportDate") %>' />
                <br />
                txtPhase4Text:
                <asp:TextBox ID="txtPhase4TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase4Text") %>' />
                <br />
                dtePhase4InspectionDate:
                <asp:TextBox ID="dtePhase4InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase4InspectionDate") %>' />
                <br />
                dtePhase4SDReportDate:
                <asp:TextBox ID="dtePhase4SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase4SDReportDate") %>' />
                <br />
                dtePhase4MgtReportDate:
                <asp:TextBox ID="dtePhase4MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase4MgtReportDate") %>' />
                <br />
                txtPhase5Text:
                <asp:TextBox ID="txtPhase5TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase5Text") %>' />
                <br />
                dtePhase5InspectionDate:
                <asp:TextBox ID="dtePhase5InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase5InspectionDate") %>' />
                <br />
                dtePhase5SDReportDate:
                <asp:TextBox ID="dtePhase5SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase5SDReportDate") %>' />
                <br />
                dtePhase5MgtReportDate:
                <asp:TextBox ID="dtePhase5MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase5MgtReportDate") %>' />
                <br />
                txtPhase6Text:
                <asp:TextBox ID="txtPhase6TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase6Text") %>' />
                <br />
                dtePhase6InspectionDate:
                <asp:TextBox ID="dtePhase6InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase6InspectionDate") %>' />
                <br />
                dtePhase6SDReportDate:
                <asp:TextBox ID="dtePhase6SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase6SDReportDate") %>' />
                <br />
                dtePhase6MgtReportDate:
                <asp:TextBox ID="dtePhase6MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase6MgtReportDate") %>' />
                <br />
                txtPhase7Text:
                <asp:TextBox ID="txtPhase7TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase7Text") %>' />
                <br />
                dtePhase7InspectionDate:
                <asp:TextBox ID="dtePhase7InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase7InspectionDate") %>' />
                <br />
                dtePhase7SDReportDate:
                <asp:TextBox ID="dtePhase7SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase7SDReportDate") %>' />
                <br />
                dtePhase7MgtReportDate:
                <asp:TextBox ID="dtePhase7MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase7MgtReportDate") %>' />
                <br />
                txtPhase8Text:
                <asp:TextBox ID="txtPhase8TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase8Text") %>' />
                <br />
                dtePhase8InspectionDate:
                <asp:TextBox ID="dtePhase8InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase8InspectionDate") %>' />
                <br />
                dtePhase8SDReportDate:
                <asp:TextBox ID="dtePhase8SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase8SDReportDate") %>' />
                <br />
                dtePhase8MgtReportDate:
                <asp:TextBox ID="dtePhase8MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase8MgtReportDate") %>' />
                <br />
                txtPhase9Text:
                <asp:TextBox ID="txtPhase9TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase9Text") %>' />
                <br />
                dtePhase9InspectionDate:
                <asp:TextBox ID="dtePhase9InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase9InspectionDate") %>' />
                <br />
                dtePhase9SDReportDate:
                <asp:TextBox ID="dtePhase9SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase9SDReportDate") %>' />
                <br />
                dtePhase9MgtReportDate:
                <asp:TextBox ID="dtePhase9MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase9MgtReportDate") %>' />
                <br />
                txtPhase10Text:
                <asp:TextBox ID="txtPhase10TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase10Text") %>' />
                <br />
                dtePhase10InspectionDate:
                <asp:TextBox ID="dtePhase10InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase10InspectionDate") %>' />
                <br />
                dtePhase10SDReportDate:
                <asp:TextBox ID="dtePhase10SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase10SDReportDate") %>' />
                <br />
                dtePhase10MgtReportDate:
                <asp:TextBox ID="dtePhase10MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase10MgtReportDate") %>' />
                <br />
                txtPhase11Text:
                <asp:TextBox ID="txtPhase11TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase11Text") %>' />
                <br />
                dtePhase11InspectionDate:
                <asp:TextBox ID="dtePhase11InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase11InspectionDate") %>' />
                <br />
                dtePhase11SDReportDate:
                <asp:TextBox ID="dtePhase11SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase11SDReportDate") %>' />
                <br />
                dtePhase11MgtReportDate:
                <asp:TextBox ID="dtePhase11MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase11MgtReportDate") %>' />
                <br />
                txtPhase12Text:
                <asp:TextBox ID="txtPhase12TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase12Text") %>' />
                <br />
                dtePhase12InspectionDate:
                <asp:TextBox ID="dtePhase12InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase12InspectionDate") %>' />
                <br />
                dtePhase12SDReportDate:
                <asp:TextBox ID="dtePhase12SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase12SDReportDate") %>' />
                <br />
                dtePhase12MgtReportDate:
                <asp:TextBox ID="dtePhase12MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase12MgtReportDate") %>' />
                <br />
                txtPhase13Text:
                <asp:TextBox ID="txtPhase13TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase13Text") %>' />
                <br />
                dtePhase13InspectionDate:
                <asp:TextBox ID="dtePhase13InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase13InspectionDate") %>' />
                <br />
                dtePhase13SDReportDate:
                <asp:TextBox ID="dtePhase13SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase13SDReportDate") %>' />
                <br />
                dtePhase13MgtReportDate:
                <asp:TextBox ID="dtePhase13MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase13MgtReportDate") %>' />
                <br />
                txtPhase14Text:
                <asp:TextBox ID="txtPhase14TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase14Text") %>' />
                <br />
                dtePhase14InspectionDate:
                <asp:TextBox ID="dtePhase14InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase14InspectionDate") %>' />
                <br />
                dtePhase14SDReportDate:
                <asp:TextBox ID="dtePhase14SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase14SDReportDate") %>' />
                <br />
                dtePhase14MgtReportDate:
                <asp:TextBox ID="dtePhase14MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase14MgtReportDate") %>' />
                <br />
                txtPhase15Text:
                <asp:TextBox ID="txtPhase15TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase15Text") %>' />
                <br />
                dtePhase15InspectionDate:
                <asp:TextBox ID="dtePhase15InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase15InspectionDate") %>' />
                <br />
                dtePhase15SDReportDate:
                <asp:TextBox ID="dtePhase15SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase15SDReportDate") %>' />
                <br />
                dtePhase15MgtReportDate:
                <asp:TextBox ID="dtePhase15MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase15MgtReportDate") %>' />
                <br />
                txtPhase16Text:
                <asp:TextBox ID="txtPhase16TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase16Text") %>' />
                <br />
                dtePhase16InspectionDate:
                <asp:TextBox ID="dtePhase16InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase16InspectionDate") %>' />
                <br />
                dtePhase16SDReportDate:
                <asp:TextBox ID="dtePhase16SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase16SDReportDate") %>' />
                <br />
                dtePhase16MgtReportDate:
                <asp:TextBox ID="dtePhase16MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase16MgtReportDate") %>' />
                <br />
                txtPhase17Text:
                <asp:TextBox ID="txtPhase17TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase17Text") %>' />
                <br />
                dtePhase17InspectionDate:
                <asp:TextBox ID="dtePhase17InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase17InspectionDate") %>' />
                <br />
                dtePhase17SDReportDate:
                <asp:TextBox ID="dtePhase17SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase17SDReportDate") %>' />
                <br />
                dtePhase17MgtReportDate:
                <asp:TextBox ID="dtePhase17MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase17MgtReportDate") %>' />
                <br />
                txtPhase18Text:
                <asp:TextBox ID="txtPhase18TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase18Text") %>' />
                <br />
                dtePhase18InspectionDate:
                <asp:TextBox ID="dtePhase18InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase18InspectionDate") %>' />
                <br />
                dtePhase18SDReportDate:
                <asp:TextBox ID="dtePhase18SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase18SDReportDate") %>' />
                <br />
                dtePhase18MgtReportDate:
                <asp:TextBox ID="dtePhase18MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase18MgtReportDate") %>' />
                <br />
                txtPhase19Text:
                <asp:TextBox ID="txtPhase19TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase19Text") %>' />
                <br />
                dtePhase19InspectionDate:
                <asp:TextBox ID="dtePhase19InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase19InspectionDate") %>' />
                <br />
                dtePhase19SDReportDate:
                <asp:TextBox ID="dtePhase19SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase19SDReportDate") %>' />
                <br />
                dtePhase19MgtReportDate:
                <asp:TextBox ID="dtePhase19MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase19MgtReportDate") %>' />
                <br />
                txtPhase20Text:
                <asp:TextBox ID="txtPhase20TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase20Text") %>' />
                <br />
                dtePhase20InspectionDate:
                <asp:TextBox ID="dtePhase20InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase20InspectionDate") %>' />
                <br />
                dtePhase20SDReportDate:
                <asp:TextBox ID="dtePhase20SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase20SDReportDate") %>' />
                <br />
                dtePhase20MgtReportDate:
                <asp:TextBox ID="dtePhase20MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase20MgtReportDate") %>' />
                <br />
                txtPhase21Text:
                <asp:TextBox ID="txtPhase21TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase21Text") %>' />
                <br />
                dtePhase21InspectionDate:
                <asp:TextBox ID="dtePhase21InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase21InspectionDate") %>' />
                <br />
                dtePhase21SDReportDate:
                <asp:TextBox ID="dtePhase21SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase21SDReportDate") %>' />
                <br />
                dtePhase21MgtReportDate:
                <asp:TextBox ID="dtePhase21MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase21MgtReportDate") %>' />
                <br />
                txtPhase22Text:
                <asp:TextBox ID="txtPhase22TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase22Text") %>' />
                <br />
                dtePhase22InspectionDate:
                <asp:TextBox ID="dtePhase22InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase22InspectionDate") %>' />
                <br />
                dtePhase22SDReportDate:
                <asp:TextBox ID="dtePhase22SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase22SDReportDate") %>' />
                <br />
                dtePhase22MgtReportDate:
                <asp:TextBox ID="dtePhase22MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase22MgtReportDate") %>' />
                <br />
                txtPhase23Text:
                <asp:TextBox ID="txtPhase23TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase23Text") %>' />
                <br />
                dtePhase23InspectionDate:
                <asp:TextBox ID="dtePhase23InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase23InspectionDate") %>' />
                <br />
                dtePhase23SDReportDate:
                <asp:TextBox ID="dtePhase23SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase23SDReportDate") %>' />
                <br />
                dtePhase23MgtReportDate:
                <asp:TextBox ID="dtePhase23MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase23MgtReportDate") %>' />
                <br />
                txtPhase24Text:
                <asp:TextBox ID="txtPhase24TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase24Text") %>' />
                <br />
                dtePhase24InspectionDate:
                <asp:TextBox ID="dtePhase24InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase24InspectionDate") %>' />
                <br />
                dtePhase24SDReportDate:
                <asp:TextBox ID="dtePhase24SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase24SDReportDate") %>' />
                <br />
                dtePhase24MgtReportDate:
                <asp:TextBox ID="dtePhase24MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase24MgtReportDate") %>' />
                <br />
                txtPhase25Text:
                <asp:TextBox ID="txtPhase25TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase25Text") %>' />
                <br />
                dtePhase25InspectionDate:
                <asp:TextBox ID="dtePhase25InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase25InspectionDate") %>' />
                <br />
                dtePhase25SDReportDate:
                <asp:TextBox ID="dtePhase25SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase25SDReportDate") %>' />
                <br />
                dtePhase25MgtReportDate:
                <asp:TextBox ID="dtePhase25MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase25MgtReportDate") %>' />
                <br />
                txtPhase26Text:
                <asp:TextBox ID="txtPhase26TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase26Text") %>' />
                <br />
                dtePhase26InspectionDate:
                <asp:TextBox ID="dtePhase26InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase26InspectionDate") %>' />
                <br />
                dtePhase26SDReportDate:
                <asp:TextBox ID="dtePhase26SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase26SDReportDate") %>' />
                <br />
                dtePhase26MgtReportDate:
                <asp:TextBox ID="dtePhase26MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase26MgtReportDate") %>' />
                <br />
                txtPhase27Text:
                <asp:TextBox ID="txtPhase27TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase27Text") %>' />
                <br />
                dtePhase27InspectionDate:
                <asp:TextBox ID="dtePhase27InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase27InspectionDate") %>' />
                <br />
                dtePhase27SDReportDate:
                <asp:TextBox ID="dtePhase27SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase27SDReportDate") %>' />
                <br />
                dtePhase27MgtReportDate:
                <asp:TextBox ID="dtePhase27MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase27MgtReportDate") %>' />
                <br />
                txtPhase28Text:
                <asp:TextBox ID="txtPhase28TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase28Text") %>' />
                <br />
                dtePhase28InspectionDate:
                <asp:TextBox ID="dtePhase28InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase28InspectionDate") %>' />
                <br />
                dtePhase28SDReportDate:
                <asp:TextBox ID="dtePhase28SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase28SDReportDate") %>' />
                <br />
                dtePhase28MgtReportDate:
                <asp:TextBox ID="dtePhase28MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase28MgtReportDate") %>' />
                <br />
                txtPhase29Text:
                <asp:TextBox ID="txtPhase29TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase29Text") %>' />
                <br />
                dtePhase29InspectionDate:
                <asp:TextBox ID="dtePhase29InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase29InspectionDate") %>' />
                <br />
                dtePhase29SDReportDate:
                <asp:TextBox ID="dtePhase29SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase29SDReportDate") %>' />
                <br />
                dtePhase29MgtReportDate:
                <asp:TextBox ID="dtePhase29MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase29MgtReportDate") %>' />
                <br />
                txtPhase30Text:
                <asp:TextBox ID="txtPhase30TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase30Text") %>' />
                <br />
                dtePhase30InspectionDate:
                <asp:TextBox ID="dtePhase30InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase30InspectionDate") %>' />
                <br />
                dtePhase30SDReportDate:
                <asp:TextBox ID="dtePhase30SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase30SDReportDate") %>' />
                <br />
                dtePhase30MgtReportDate:
                <asp:TextBox ID="dtePhase30MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase30MgtReportDate") %>' />
                <br />
                txtPhase31Text:
                <asp:TextBox ID="txtPhase31TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase31Text") %>' />
                <br />
                dtePhase31InspectionDate:
                <asp:TextBox ID="dtePhase31InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase31InspectionDate") %>' />
                <br />
                dtePhase31SDReportDate:
                <asp:TextBox ID="dtePhase31SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase31SDReportDate") %>' />
                <br />
                dtePhase31MgtReportDate:
                <asp:TextBox ID="dtePhase31MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase31MgtReportDate") %>' />
                <br />
                txtPhase32Text:
                <asp:TextBox ID="txtPhase32TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase32Text") %>' />
                <br />
                dtePhase32InspectionDate:
                <asp:TextBox ID="dtePhase32InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase32InspectionDate") %>' />
                <br />
                dtePhase32SDReportDate:
                <asp:TextBox ID="dtePhase32SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase32SDReportDate") %>' />
                <br />
                dtePhase32MgtReportDate:
                <asp:TextBox ID="dtePhase32MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase32MgtReportDate") %>' />
                <br />
                txtPhase33Text:
                <asp:TextBox ID="txtPhase33TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase33Text") %>' />
                <br />
                dtePhase33InspectionDate:
                <asp:TextBox ID="dtePhase33InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase33InspectionDate") %>' />
                <br />
                dtePhase33SDReportDate:
                <asp:TextBox ID="dtePhase33SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase33SDReportDate") %>' />
                <br />
                dtePhase33MgtReportDate:
                <asp:TextBox ID="dtePhase33MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase33MgtReportDate") %>' />
                <br />
                txtPhase34Text:
                <asp:TextBox ID="txtPhase34TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase34Text") %>' />
                <br />
                dtePhase34InspectionDate:
                <asp:TextBox ID="dtePhase34InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase34InspectionDate") %>' />
                <br />
                dtePhase34SDReportDate:
                <asp:TextBox ID="dtePhase34SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase34SDReportDate") %>' />
                <br />
                dtePhase34MgtReportDate:
                <asp:TextBox ID="dtePhase34MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase34MgtReportDate") %>' />
                <br />
                txtPhase35Text:
                <asp:TextBox ID="txtPhase35TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase35Text") %>' />
                <br />
                dtePhase35InspectionDate:
                <asp:TextBox ID="dtePhase35InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase35InspectionDate") %>' />
                <br />
                dtePhase35SDReportDate:
                <asp:TextBox ID="dtePhase35SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase35SDReportDate") %>' />
                <br />
                dtePhase35MgtReportDate:
                <asp:TextBox ID="dtePhase35MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase35MgtReportDate") %>' />
                <br />
                txtPhase36Text:
                <asp:TextBox ID="txtPhase36TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase36Text") %>' />
                <br />
                dtePhase36InspectionDate:
                <asp:TextBox ID="dtePhase36InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase36InspectionDate") %>' />
                <br />
                dtePhase36SDReportDate:
                <asp:TextBox ID="dtePhase36SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase36SDReportDate") %>' />
                <br />
                dtePhase36MgtReportDate:
                <asp:TextBox ID="dtePhase36MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase36MgtReportDate") %>' />
                <br />
                txtPhase37Text:
                <asp:TextBox ID="txtPhase37TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase37Text") %>' />
                <br />
                dtePhase37InspectionDate:
                <asp:TextBox ID="dtePhase37InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase37InspectionDate") %>' />
                <br />
                dtePhase37SDReportDate:
                <asp:TextBox ID="dtePhase37SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase37SDReportDate") %>' />
                <br />
                dtePhase37MgtReportDate:
                <asp:TextBox ID="dtePhase37MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase37MgtReportDate") %>' />
                <br />
                txtPhase38Text:
                <asp:TextBox ID="txtPhase38TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase38Text") %>' />
                <br />
                dtePhase38InspectionDate:
                <asp:TextBox ID="dtePhase38InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase38InspectionDate") %>' />
                <br />
                dtePhase38SDReportDate:
                <asp:TextBox ID="dtePhase38SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase38SDReportDate") %>' />
                <br />
                dtePhase38MgtReportDate:
                <asp:TextBox ID="dtePhase38MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase38MgtReportDate") %>' />
                <br />
                txtPhase39Text:
                <asp:TextBox ID="txtPhase39TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase39Text") %>' />
                <br />
                dtePhase39InspectionDate:
                <asp:TextBox ID="dtePhase39InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase39InspectionDate") %>' />
                <br />
                dtePhase39SDReportDate:
                <asp:TextBox ID="dtePhase39SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase39SDReportDate") %>' />
                <br />
                dtePhase39MgtReportDate:
                <asp:TextBox ID="dtePhase39MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase39MgtReportDate") %>' />
                <br />
                txtPhase40Text:
                <asp:TextBox ID="txtPhase40TextTextBox" runat="server" 
                    Text='<%# Bind("txtPhase40Text") %>' />
                <br />
                dtePhase40InspectionDate:
                <asp:TextBox ID="dtePhase40InspectionDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase40InspectionDate") %>' />
                <br />
                dtePhase40SDReportDate:
                <asp:TextBox ID="dtePhase40SDReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase40SDReportDate") %>' />
                <br />
                dtePhase40MgtReportDate:
                <asp:TextBox ID="dtePhase40MgtReportDateTextBox" runat="server" 
                    Text='<%# Bind("dtePhase40MgtReportDate") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
            
            </ItemTemplate>
            <EmptyDataTemplate>
            <table>
                <tr>
                    <td>Please select a study to edit <br />
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="_default.aspx">Main</asp:LinkButton>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="samples.aspx">Samples/TRF</asp:LinkButton>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="studies.aspx">Studies</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        </asp:FormView>            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
            
            SelectCommand="SELECT txtProtocolNumber, txtPhase1Text, dtePhase1InspectionDate, dtePhase1SDReportDate, dtePhase1MgtReportDate, txtPhase2Text, dtePhase2InspectionDate, dtePhase2SDReportDate, dtePhase2MgtReportDate, txtPhase3Text, dtePhase3InspectionDate, dtePhase3SDReportDate, dtePhase3MgtReportDate, txtPhase4Text, dtePhase4InspectionDate, dtePhase4SDReportDate, dtePhase4MgtReportDate, txtPhase5Text, dtePhase5InspectionDate, dtePhase5SDReportDate, dtePhase5MgtReportDate, txtPhase6Text, dtePhase6InspectionDate, dtePhase6SDReportDate, dtePhase6MgtReportDate, txtPhase7Text, dtePhase7InspectionDate, dtePhase7SDReportDate, dtePhase7MgtReportDate, txtPhase8Text, dtePhase8InspectionDate, dtePhase8SDReportDate, dtePhase8MgtReportDate, txtPhase9Text, dtePhase9InspectionDate, dtePhase9SDReportDate, dtePhase9MgtReportDate, txtPhase10Text, dtePhase10InspectionDate, dtePhase10SDReportDate, dtePhase10MgtReportDate, txtPhase11Text, dtePhase11InspectionDate, dtePhase11SDReportDate, dtePhase11MgtReportDate, txtPhase12Text, dtePhase12InspectionDate, dtePhase12SDReportDate, dtePhase12MgtReportDate, txtPhase13Text, dtePhase13InspectionDate, dtePhase13SDReportDate, dtePhase13MgtReportDate, txtPhase14Text, dtePhase14InspectionDate, dtePhase14SDReportDate, dtePhase14MgtReportDate, txtPhase15Text, dtePhase15InspectionDate, dtePhase15SDReportDate, dtePhase15MgtReportDate, txtPhase16Text, dtePhase16InspectionDate, dtePhase16SDReportDate, dtePhase16MgtReportDate, txtPhase17Text, dtePhase17InspectionDate, dtePhase17SDReportDate, dtePhase17MgtReportDate, txtPhase18Text, dtePhase18InspectionDate, dtePhase18SDReportDate, dtePhase18MgtReportDate, txtPhase19Text, dtePhase19InspectionDate, dtePhase19SDReportDate, dtePhase19MgtReportDate, txtPhase20Text, dtePhase20InspectionDate, dtePhase20SDReportDate, dtePhase20MgtReportDate, txtPhase21Text, dtePhase21InspectionDate, dtePhase21SDReportDate, dtePhase21MgtReportDate, txtPhase22Text, dtePhase22InspectionDate, dtePhase22SDReportDate, dtePhase22MgtReportDate, txtPhase23Text, dtePhase23InspectionDate, dtePhase23SDReportDate, dtePhase23MgtReportDate, txtPhase24Text, dtePhase24InspectionDate, dtePhase24SDReportDate, dtePhase24MgtReportDate, txtPhase25Text, dtePhase25InspectionDate, dtePhase25SDReportDate, dtePhase25MgtReportDate, txtPhase26Text, dtePhase26InspectionDate, dtePhase26SDReportDate, dtePhase26MgtReportDate, txtPhase27Text, dtePhase27InspectionDate, dtePhase27SDReportDate, dtePhase27MgtReportDate, txtPhase28Text, dtePhase28InspectionDate, dtePhase28SDReportDate, dtePhase28MgtReportDate, txtPhase29Text, dtePhase29InspectionDate, dtePhase29SDReportDate, dtePhase29MgtReportDate, txtPhase30Text, dtePhase30InspectionDate, dtePhase30SDReportDate, dtePhase30MgtReportDate, txtPhase31Text, dtePhase31InspectionDate, dtePhase31SDReportDate, dtePhase31MgtReportDate, txtPhase32Text, dtePhase32InspectionDate, dtePhase32SDReportDate, dtePhase32MgtReportDate, txtPhase33Text, dtePhase33InspectionDate, dtePhase33SDReportDate, dtePhase33MgtReportDate, txtPhase34Text, dtePhase34InspectionDate, dtePhase34SDReportDate, dtePhase34MgtReportDate, txtPhase35Text, dtePhase35InspectionDate, dtePhase35SDReportDate, dtePhase35MgtReportDate, txtPhase36Text, dtePhase36InspectionDate, dtePhase36SDReportDate, dtePhase36MgtReportDate, txtPhase37Text, dtePhase37InspectionDate, dtePhase37SDReportDate, dtePhase37MgtReportDate, txtPhase38Text, dtePhase38InspectionDate, dtePhase38SDReportDate, dtePhase38MgtReportDate, txtPhase39Text, dtePhase39InspectionDate, dtePhase39SDReportDate, dtePhase39MgtReportDate, txtPhase40Text, dtePhase40InspectionDate, dtePhase40SDReportDate, dtePhase40MgtReportDate, txtTestArticleName FROM LabScheduleVw WHERE (txtStudyNumber = @txtStudyNumber)" 
            
            UpdateCommand="UPDATE tblProjects SET txtPhase1Text = @txtPhase1Text, dtePhase1InspectionDate = @dtePhase1InspectionDate, dtePhase1SDReportDate = @dtePhase1SDReportDate, dtePhase1MgtReportDate = @dtePhase1MgtReportDate, txtPhase2Text = @txtPhase2Text, dtePhase2InspectionDate = @dtePhase2InspectionDate, dtePhase2SDReportDate = @dtePhase2SDReportDate, dtePhase2MgtReportDate = @dtePhase2MgtReportDate, txtPhase3Text = @txtPhase3Text, dtePhase3InspectionDate = @dtePhase3InspectionDate, dtePhase3SDReportDate = @dtePhase3SDReportDate, dtePhase3MgtReportDate = @dtePhase3MgtReportDate, txtPhase4Text = @txtPhase4Text, dtePhase4InspectionDate = @dtePhase4InspectionDate, dtePhase4SDReportDate = @dtePhase4SDReportDate, dtePhase4MgtReportDate = @dtePhase4MgtReportDate, txtPhase5Text = @txtPhase5Text, dtePhase5InspectionDate = @dtePhase5InspectionDate, dtePhase5SDReportDate = @dtePhase5SDReportDate, dtePhase5MgtReportDate = @dtePhase5MgtReportDate, txtPhase6Text = @txtPhase6Text, dtePhase6InspectionDate = @dtePhase6InspectionDate, dtePhase6SDReportDate = @dtePhase6SDReportDate, dtePhase6MgtReportDate = @dtePhase6MgtReportDate, txtPhase7Text = @txtPhase7Text, dtePhase7InspectionDate = @dtePhase7InspectionDate, dtePhase7SDReportDate = @dtePhase7SDReportDate, dtePhase7MgtReportDate = @dtePhase7MgtReportDate, txtPhase8Text = @txtPhase8Text, dtePhase8InspectionDate = @dtePhase8InspectionDate, dtePhase8SDReportDate = @dtePhase8SDReportDate, dtePhase8MgtReportDate = @dtePhase8MgtReportDate, txtPhase9Text = @txtPhase9Text, dtePhase9InspectionDate = @dtePhase9InspectionDate, dtePhase9SDReportDate = @dtePhase9SDReportDate, dtePhase9MgtReportDate = @dtePhase9MgtReportDate, txtPhase10Text = @txtPhase10Text, dtePhase10InspectionDate = @dtePhase10InspectionDate, dtePhase10SDReportDate = @dtePhase10SDReportDate, dtePhase10MgtReportDate = @dtePhase10MgtReportDate, txtPhase11Text = @txtPhase11Text, dtePhase11InspectionDate = @dtePhase11InspectionDate, dtePhase11SDReportDate = @dtePhase11SDReportDate, dtePhase11MgtReportDate = @dtePhase11MgtReportDate, txtPhase12Text = @txtPhase12Text, dtePhase12InspectionDate = @dtePhase12InspectionDate, dtePhase12SDReportDate = @dtePhase12SDReportDate, dtePhase12MgtReportDate = @dtePhase12MgtReportDate, txtPhase13Text = @txtPhase13Text, dtePhase13InspectionDate = @dtePhase13InspectionDate, dtePhase13SDReportDate = @dtePhase13SDReportDate, dtePhase13MgtReportDate = @dtePhase13MgtReportDate, txtPhase14Text = @txtPhase14Text, dtePhase14InspectionDate = @dtePhase14InspectionDate, dtePhase14SDReportDate = @dtePhase14SDReportDate, dtePhase14MgtReportDate = @dtePhase14MgtReportDate, txtPhase15Text = @txtPhase15Text, dtePhase15InspectionDate = @dtePhase15InspectionDate, dtePhase15SDReportDate = @dtePhase15SDReportDate, dtePhase15MgtReportDate = @dtePhase15MgtReportDate, txtPhase16Text = @txtPhase16Text, dtePhase16InspectionDate = @dtePhase16InspectionDate, dtePhase16SDReportDate = @dtePhase16SDReportDate, dtePhase16MgtReportDate = @dtePhase16MgtReportDate, txtPhase17Text = @txtPhase17Text, dtePhase17InspectionDate = @dtePhase17InspectionDate, dtePhase17SDReportDate = @dtePhase17SDReportDate, dtePhase17MgtReportDate = @dtePhase17MgtReportDate, txtPhase18Text = @txtPhase18Text, dtePhase18InspectionDate = @dtePhase18InspectionDate, dtePhase18SDReportDate = @dtePhase18SDReportDate, dtePhase18MgtReportDate = @dtePhase18MgtReportDate, txtPhase19Text = @txtPhase19Text, dtePhase19InspectionDate = @dtePhase19InspectionDate, dtePhase19SDReportDate = @dtePhase19SDReportDate, dtePhase19MgtReportDate = @dtePhase19MgtReportDate, txtPhase20Text = @txtPhase20Text, dtePhase20InspectionDate = @dtePhase20InspectionDate, dtePhase20SDReportDate = @dtePhase20SDReportDate, dtePhase20MgtReportDate = @dtePhase20MgtReportDate, txtPhase21Text = @txtPhase21Text, dtePhase21InspectionDate = @dtePhase21InspectionDate, dtePhase21SDReportDate = @dtePhase21SDReportDate, dtePhase21MgtReportDate = @dtePhase21MgtReportDate, txtPhase22Text = @txtPhase22Text, dtePhase22InspectionDate = @dtePhase22InspectionDate, dtePhase22SDReportDate = @dtePhase22SDReportDate, dtePhase22MgtReportDate = @dtePhase22MgtReportDate, txtPhase23Text = @txtPhase23Text, dtePhase23InspectionDate = @dtePhase23InspectionDate, dtePhase23SDReportDate = @dtePhase23SDReportDate, dtePhase23MgtReportDate = @dtePhase23MgtReportDate, txtPhase24Text = @txtPhase24Text, dtePhase24InspectionDate = @dtePhase24InspectionDate, dtePhase24SDReportDate = @dtePhase24SDReportDate, dtePhase24MgtReportDate = @dtePhase24MgtReportDate, txtPhase25Text = @txtPhase25Text, dtePhase25InspectionDate = @dtePhase25InspectionDate, dtePhase25SDReportDate = @dtePhase25SDReportDate, dtePhase25MgtReportDate = @dtePhase25MgtReportDate, txtPhase26Text = @txtPhase26Text, dtePhase26InspectionDate = @dtePhase26InspectionDate, dtePhase26SDReportDate = @dtePhase26SDReportDate, dtePhase26MgtReportDate = @dtePhase26MgtReportDate, txtPhase27Text = @txtPhase27Text, dtePhase27InspectionDate = @dtePhase27InspectionDate, dtePhase27SDReportDate = @dtePhase27SDReportDate, dtePhase27MgtReportDate = @dtePhase27MgtReportDate, txtPhase28Text = @txtPhase28Text, dtePhase28InspectionDate = @dtePhase28InspectionDate, dtePhase28SDReportDate = @dtePhase28SDReportDate, dtePhase28MgtReportDate = @dtePhase28MgtReportDate, txtPhase29Text = @txtPhase29Text, dtePhase29InspectionDate = @dtePhase29InspectionDate, dtePhase29SDReportDate = @dtePhase29SDReportDate, dtePhase29MgtReportDate = @dtePhase29MgtReportDate, txtPhase30Text = @txtPhase30Text, dtePhase30InspectionDate = @dtePhase30InspectionDate, dtePhase30SDReportDate = @dtePhase30SDReportDate, dtePhase30MgtReportDate = @dtePhase30MgtReportDate, txtPhase31Text = @txtPhase31Text, dtePhase31SDReportDate = @dtePhase31SDReportDate, dtePhase31InspectionDate = @dtePhase31InspectionDate, dtePhase31MgtReportDate = @dtePhase31MgtReportDate, txtPhase32Text = @txtPhase32Text, dtePhase32InspectionDate = @dtePhase32InspectionDate, dtePhase32SDReportDate = @dtePhase32SDReportDate, dtePhase32MgtReportDate = @dtePhase32MgtReportDate, txtPhase33Text = @txtPhase33Text, dtePhase33InspectionDate = @dtePhase33InspectionDate, dtePhase33SDReportDate = @dtePhase33SDReportDate, dtePhase33MgtReportDate = @dtePhase33MgtReportDate, txtPhase34Text = @txtPhase34Text, dtePhase34InspectionDate = @dtePhase34InspectionDate, dtePhase34SDReportDate = @dtePhase34SDReportDate, dtePhase34MgtReportDate = @dtePhase34MgtReportDate, txtPhase35Text = @txtPhase35Text, dtePhase35InspectionDate = @dtePhase35InspectionDate, dtePhase35SDReportDate = @dtePhase35SDReportDate, dtePhase35MgtReportDate = @dtePhase35MgtReportDate, txtPhase36Text = @txtPhase36Text, dtePhase36InspectionDate = @dtePhase36InspectionDate, dtePhase36SDReportDate = @dtePhase36SDReportDate, dtePhase36MgtReportDate = @dtePhase36MgtReportDate, txtPhase37Text = @txtPhase37Text, dtePhase37InspectionDate = @dtePhase37InspectionDate, dtePhase37SDReportDate = @dtePhase37SDReportDate, dtePhase37MgtReportDate = @dtePhase37MgtReportDate, txtPhase38Text = @txtPhase38Text, dtePhase38InspectionDate = @dtePhase38InspectionDate, dtePhase38SDReportDate = @dtePhase38SDReportDate, dtePhase38MgtReportDate = @dtePhase38MgtReportDate, txtPhase39Text = @txtPhase39Text, dtePhase39InspectionDate = @dtePhase39InspectionDate, dtePhase39SDReportDate = @dtePhase39SDReportDate, dtePhase39MgtReportDate = @dtePhase39MgtReportDate, txtPhase40Text = @txtPhase40Text, dtePhase40InspectionDate = @dtePhase40InspectionDate, dtePhase40SDReportDate = @dtePhase40SDReportDate, dtePhase40MgtReportDate = @dtePhase40MgtReportDate WHERE (txtStudyNumber = @txtStudyNumber)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="txtStudyNumber" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="txtPhase1Text" />
                <asp:Parameter Name="dtePhase1InspectionDate" />
                <asp:Parameter Name="dtePhase1SDReportDate" />
                <asp:Parameter Name="dtePhase1MgtReportDate" />
                <asp:Parameter Name="txtPhase2Text" />
                <asp:Parameter Name="dtePhase2InspectionDate" />
                <asp:Parameter Name="dtePhase2SDReportDate" />
                <asp:Parameter Name="dtePhase2MgtReportDate" />
                <asp:Parameter Name="txtPhase3Text" />
                <asp:Parameter Name="dtePhase3InspectionDate" />
                <asp:Parameter Name="dtePhase3SDReportDate" />
                <asp:Parameter Name="dtePhase3MgtReportDate" />
                <asp:Parameter Name="txtPhase4Text" />
                <asp:Parameter Name="dtePhase4InspectionDate" />
                <asp:Parameter Name="dtePhase4SDReportDate" />
                <asp:Parameter Name="dtePhase4MgtReportDate" />
                <asp:Parameter Name="txtPhase5Text" />
                <asp:Parameter Name="dtePhase5InspectionDate" />
                <asp:Parameter Name="dtePhase5SDReportDate" />
                <asp:Parameter Name="dtePhase5MgtReportDate" />
                <asp:Parameter Name="txtPhase6Text" />
                <asp:Parameter Name="dtePhase6InspectionDate" />
                <asp:Parameter Name="dtePhase6SDReportDate" />
                <asp:Parameter Name="dtePhase6MgtReportDate" />
                <asp:Parameter Name="txtPhase7Text" />
                <asp:Parameter Name="dtePhase7InspectionDate" />
                <asp:Parameter Name="dtePhase7SDReportDate" />
                <asp:Parameter Name="dtePhase7MgtReportDate" />
                <asp:Parameter Name="txtPhase8Text" />
                <asp:Parameter Name="dtePhase8InspectionDate" />
                <asp:Parameter Name="dtePhase8SDReportDate" />
                <asp:Parameter Name="dtePhase8MgtReportDate" />
                <asp:Parameter Name="txtPhase9Text" />
                <asp:Parameter Name="dtePhase9InspectionDate" />
                <asp:Parameter Name="dtePhase9SDReportDate" />
                <asp:Parameter Name="dtePhase9MgtReportDate" />
                <asp:Parameter Name="txtPhase10Text" />
                <asp:Parameter Name="dtePhase10InspectionDate" />
                <asp:Parameter Name="dtePhase10SDReportDate" />
                <asp:Parameter Name="dtePhase10MgtReportDate" />
                <asp:Parameter Name="txtPhase11Text" />
                <asp:Parameter Name="dtePhase11InspectionDate" />
                <asp:Parameter Name="dtePhase11SDReportDate" />
                <asp:Parameter Name="dtePhase11MgtReportDate" />
                <asp:Parameter Name="txtPhase12Text" />
                <asp:Parameter Name="dtePhase12InspectionDate" />
                <asp:Parameter Name="dtePhase12SDReportDate" />
                <asp:Parameter Name="dtePhase12MgtReportDate" />
                <asp:Parameter Name="txtPhase13Text" />
                <asp:Parameter Name="dtePhase13InspectionDate" />
                <asp:Parameter Name="dtePhase13SDReportDate" />
                <asp:Parameter Name="dtePhase13MgtReportDate" />
                <asp:Parameter Name="txtPhase14Text" />
                <asp:Parameter Name="dtePhase14InspectionDate" />
                <asp:Parameter Name="dtePhase14SDReportDate" />
                <asp:Parameter Name="dtePhase14MgtReportDate" />
                <asp:Parameter Name="txtPhase15Text" />
                <asp:Parameter Name="dtePhase15InspectionDate" />
                <asp:Parameter Name="dtePhase15SDReportDate" />
                <asp:Parameter Name="dtePhase15MgtReportDate" />
                <asp:Parameter Name="txtPhase16Text" />
                <asp:Parameter Name="dtePhase16InspectionDate" />
                <asp:Parameter Name="dtePhase16SDReportDate" />
                <asp:Parameter Name="dtePhase16MgtReportDate" />
                <asp:Parameter Name="txtPhase17Text" />
                <asp:Parameter Name="dtePhase17InspectionDate" />
                <asp:Parameter Name="dtePhase17SDReportDate" />
                <asp:Parameter Name="dtePhase17MgtReportDate" />
                <asp:Parameter Name="txtPhase18Text" />
                <asp:Parameter Name="dtePhase18InspectionDate" />
                <asp:Parameter Name="dtePhase18SDReportDate" />
                <asp:Parameter Name="dtePhase18MgtReportDate" />
                <asp:Parameter Name="txtPhase19Text" />
                <asp:Parameter Name="dtePhase19InspectionDate" />
                <asp:Parameter Name="dtePhase19SDReportDate" />
                <asp:Parameter Name="dtePhase19MgtReportDate" />
                <asp:Parameter Name="txtPhase20Text" />
                <asp:Parameter Name="dtePhase20InspectionDate" />
                <asp:Parameter Name="dtePhase20SDReportDate" />
                <asp:Parameter Name="dtePhase20MgtReportDate" />
                <asp:Parameter Name="txtPhase21Text" />
                <asp:Parameter Name="dtePhase21InspectionDate" />
                <asp:Parameter Name="dtePhase21SDReportDate" />
                <asp:Parameter Name="dtePhase21MgtReportDate" />
                <asp:Parameter Name="txtPhase22Text" />
                <asp:Parameter Name="dtePhase22InspectionDate" />
                <asp:Parameter Name="dtePhase22SDReportDate" />
                <asp:Parameter Name="dtePhase22MgtReportDate" />
                <asp:Parameter Name="txtPhase23Text" />
                <asp:Parameter Name="dtePhase23InspectionDate" />
                <asp:Parameter Name="dtePhase23SDReportDate" />
                <asp:Parameter Name="dtePhase23MgtReportDate" />
                <asp:Parameter Name="txtPhase24Text" />
                <asp:Parameter Name="dtePhase24InspectionDate" />
                <asp:Parameter Name="dtePhase24SDReportDate" />
                <asp:Parameter Name="dtePhase24MgtReportDate" />
                <asp:Parameter Name="txtPhase25Text" />
                <asp:Parameter Name="dtePhase25InspectionDate" />
                <asp:Parameter Name="dtePhase25SDReportDate" />
                <asp:Parameter Name="dtePhase25MgtReportDate" />
                <asp:Parameter Name="txtPhase26Text" />
                <asp:Parameter Name="dtePhase26InspectionDate" />
                <asp:Parameter Name="dtePhase26SDReportDate" />
                <asp:Parameter Name="dtePhase26MgtReportDate" />
                <asp:Parameter Name="txtPhase27Text" />
                <asp:Parameter Name="dtePhase27InspectionDate" />
                <asp:Parameter Name="dtePhase27SDReportDate" />
                <asp:Parameter Name="dtePhase27MgtReportDate" />
                <asp:Parameter Name="txtPhase28Text" />
                <asp:Parameter Name="dtePhase28InspectionDate" />
                <asp:Parameter Name="dtePhase28SDReportDate" />
                <asp:Parameter Name="dtePhase28MgtReportDate" />
                <asp:Parameter Name="txtPhase29Text" />
                <asp:Parameter Name="dtePhase29InspectionDate" />
                <asp:Parameter Name="dtePhase29SDReportDate" />
                <asp:Parameter Name="dtePhase29MgtReportDate" />
                <asp:Parameter Name="txtPhase30Text" />
                <asp:Parameter Name="dtePhase30InspectionDate" />
                <asp:Parameter Name="dtePhase30SDReportDate" />
                <asp:Parameter Name="dtePhase30MgtReportDate" />
                <asp:Parameter Name="txtPhase31Text" />
                <asp:Parameter Name="dtePhase31SDReportDate" />
                <asp:Parameter Name="dtePhase31InspectionDate" />
                <asp:Parameter Name="dtePhase31MgtReportDate" />
                <asp:Parameter Name="txtPhase32Text" />
                <asp:Parameter Name="dtePhase32InspectionDate" />
                <asp:Parameter Name="dtePhase32SDReportDate" />
                <asp:Parameter Name="dtePhase32MgtReportDate" />
                <asp:Parameter Name="txtPhase33Text" />
                <asp:Parameter Name="dtePhase33InspectionDate" />
                <asp:Parameter Name="dtePhase33SDReportDate" />
                <asp:Parameter Name="dtePhase33MgtReportDate" />
                <asp:Parameter Name="txtPhase34Text" />
                <asp:Parameter Name="dtePhase34InspectionDate" />
                <asp:Parameter Name="dtePhase34SDReportDate" />
                <asp:Parameter Name="dtePhase34MgtReportDate" />
                <asp:Parameter Name="txtPhase35Text" />
                <asp:Parameter Name="dtePhase35InspectionDate" />
                <asp:Parameter Name="dtePhase35SDReportDate" />
                <asp:Parameter Name="dtePhase35MgtReportDate" />
                <asp:Parameter Name="txtPhase36Text" />
                <asp:Parameter Name="dtePhase36InspectionDate" />
                <asp:Parameter Name="dtePhase36SDReportDate" />
                <asp:Parameter Name="dtePhase36MgtReportDate" />
                <asp:Parameter Name="txtPhase37Text" />
                <asp:Parameter Name="dtePhase37InspectionDate" />
                <asp:Parameter Name="dtePhase37SDReportDate" />
                <asp:Parameter Name="dtePhase37MgtReportDate" />
                <asp:Parameter Name="txtPhase38Text" />
                <asp:Parameter Name="dtePhase38InspectionDate" />
                <asp:Parameter Name="dtePhase38SDReportDate" />
                <asp:Parameter Name="dtePhase38MgtReportDate" />
                <asp:Parameter Name="txtPhase39Text" />
                <asp:Parameter Name="dtePhase39InspectionDate" />
                <asp:Parameter Name="dtePhase39SDReportDate" />
                <asp:Parameter Name="dtePhase39MgtReportDate" />
                <asp:Parameter Name="txtPhase40Text" />
                <asp:Parameter Name="dtePhase40InspectionDate" />
                <asp:Parameter Name="dtePhase40SDReportDate" />
                <asp:Parameter Name="dtePhase40MgtReportDate" />
                <asp:ControlParameter ControlID="DropDownList1" Name="txtStudyNumber" 
                    PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
    To start or restart the workflow for a report, edit its results and click the "Update and Start Workflow" button <br />
    <asp:Label ID="LabelUsername" runat="server" Text="Username"></asp:Label>&nbsp;
    <asp:Label ID="LabelDB" runat="server" Text="DB"></asp:Label>
</body>
</html>
