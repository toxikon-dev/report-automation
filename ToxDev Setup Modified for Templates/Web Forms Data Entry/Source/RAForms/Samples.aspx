<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Samples.aspx.vb" Inherits="RAForms.Samples, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Samples/Test Request Form</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource 
        ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        SelectCommand="SELECT txtSampleNumber, txtSponsorName, txtSponsorAddress1, txtSponsorAddress2, txtSponsorAddress3, txtSponsorContact, txtSponsorEmail, txtPONumber, txtTestArticleName, txtLotBatch, txtTestArticleReceiptDate, txtQuantity, txtCASCode, txtPhysicalState, txtColor, txtExpirationDate, txtDensity, txtStability, txtSolubility, txtPH, txtStorageConditions, booConfidentialityAgreement, txtDisposition, txtTestType, txtSafetyPrecautions FROM tblSamples WHERE (txtSampleNumber = @DropDownList1)" 
        
        UpdateCommand="UPDATE tblSamples SET txtSponsorAddress1 = @txtSponsorAddress1, txtSponsorAddress2 = @txtSponsorAddress2, txtSponsorAddress3 = @txtSponsorAddress3, txtSponsorContact = @txtSponsorContact, txtSponsorName = @txtSponsorName, txtSponsorEmail = @txtSponsorEmail, txtPONumber = @txtPONumber, txtTestArticleName = @txtTestArticleName, txtLotBatch = @txtLotBatch, txtTestArticleReceiptDate = @txtTestArticleReceiptDate, txtQuantity = @txtQuantity, txtCASCode = @txtCASCode, txtPhysicalState = @txtPhysicalState, txtColor = @txtColor, txtDensity = @txtDensity, txtExpirationDate = @txtExpirationDate, txtStability = @txtStability, txtSolubility = @txtSolubility, txtPH = @txtPH, txtTestType = @txtTestType, txtDisposition = @txtDisposition, booConfidentialityAgreement = @booConfidentialityAgreement, txtStorageConditions = @txtStorageConditions, txtSafetyPrecautions = @txtSafetyPrecautions WHERE (txtSampleNumber = @txtSampleNumber)" 

        InsertCommand="INSERT INTO tblSamples(txtTestArticleReceiptDate, txtSampleNumber, txtSponsorName, txtSponsorContact, txtPONumber, txtSponsorEmail, txtTestArticleName, txtLotBatch, txtQuantity, txtCASCode, txtPhysicalState, txtColor, txtExpirationDate, txtDensity, txtStability, txtSolubility, txtPH, txtStorageConditions, booConfidentialityAgreement, txtDisposition, txtTestType, txtSponsorAddress1, txtSponsorAddress2, txtSponsorAddress3, txtSafetyPrecautions) VALUES (@txtTestArticleReceiptDate, @txtSampleNumber, @txtSponsorName, @txtSponsorContact, @txtPONumber, @txtSponsorEmail, @txtTestArticleName, @txtLotBatch, @txtQuantity, @txtCASCode, @txtPhysicalState, @txtColor, @txtExpirationDate, @txtDensity, @txtStability, @txtSolubility, @txtPH, @txtStorageConditions, @booConfidentialityAgreement, @txtDisposition, @txtTestType, @txtSponsorAddress1, @txtSponsorAddress2, @txtSponsorAddress3, @txtSafetyPrecautions)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" 
                Name="DropDownList1" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="txtSponsorAddress1" />
            <asp:Parameter Name="txtSponsorAddress2" />
            <asp:Parameter Name="txtSponsorAddress3" />
            <asp:Parameter Name="txtSponsorContact" />
            <asp:Parameter Name="txtSponsorName" />
            <asp:Parameter Name="txtSponsorEmail" />
            <asp:Parameter Name="txtPONumber" />
            <asp:Parameter Name="txtTestArticleName" />
            <asp:Parameter Name="txtLotBatch" />
            <asp:Parameter Name="txtTestArticleReceiptDate" />
            <asp:Parameter Name="txtQuantity" />
            <asp:Parameter Name="txtCASCode" />
            <asp:Parameter Name="txtPhysicalState" />
            <asp:Parameter Name="txtColor" />
            <asp:Parameter Name="txtDensity" />
            <asp:Parameter Name="txtExpirationDate" />
            <asp:Parameter Name="txtStability" />
            <asp:Parameter Name="txtSolubility" />
            <asp:Parameter Name="txtPH" />
            <asp:Parameter Name="txtTestType" />
            <asp:Parameter Name="txtDisposition" />
            <asp:Parameter Name="booConfidentialityAgreement" />
            <asp:Parameter Name="txtStorageConditions" />
            <asp:Parameter Name="txtSafetyPrecautions" />
            <asp:Parameter Name="txtSampleNumber" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="txtTestArticleReceiptDate" />
            <asp:Parameter Name="txtSampleNumber" />
            <asp:Parameter Name="txtSponsorName" />
            <asp:Parameter Name="txtSponsorContact" />
            <asp:Parameter Name="txtPONumber" />
            <asp:Parameter Name="txtSponsorEmail" />
            <asp:Parameter Name="txtTestArticleName" />
            <asp:Parameter Name="txtLotBatch" />
            <asp:Parameter Name="txtQuantity" />
            <asp:Parameter Name="txtCASCode" />
            <asp:Parameter Name="txtPhysicalState" />
            <asp:Parameter Name="txtColor" />
            <asp:Parameter Name="txtExpirationDate" />
            <asp:Parameter Name="txtDensity" />
            <asp:Parameter Name="txtStability" />
            <asp:Parameter Name="txtSolubility" />
            <asp:Parameter Name="txtPH" />
            <asp:Parameter Name="txtStorageConditions" />
            <asp:Parameter Name="booConfidentialityAgreement" />
            <asp:Parameter Name="txtDisposition" />
            <asp:Parameter Name="txtTestType" />
            <asp:Parameter Name="txtSponsorAddress1" />
            <asp:Parameter Name="txtSponsorAddress2" />
            <asp:Parameter Name="txtSponsorAddress3" />
            <asp:Parameter Name="txtSafetyPrecautions" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT [txtSampleNumber] FROM [tblSamples] UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1"></asp:SqlDataSource>
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
                Select a Sample</td>
            <td class="style3">
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="txtSampleNumber" 
        DataValueField="txtSampleNumber" AutoPostBack="True">
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="txtSampleNumber" 
        DataSourceID="SqlDataSource1" DefaultMode="Edit">
        <EditItemTemplate>
           <table>
                <tr>
                    <td align="center" colspan="2">
                        <h1>Test Request Form</h1></td>
                </tr>
                <tr>
                    <td align="left" colspan="2" style="height: 40px; font-weight: bold">
                        Sponsor Information</td>
                </tr>
                <tr>
                    <td align="right">
                        Sample Number:</td>
                    <td>
                        <asp:TextBox ID="txtSampleNumberTextBox" runat="server" Enabled="False" 
                            Text='<%# Bind("txtSampleNumber") %>' Width="128px" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Name:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorNameTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorName") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtSponsorNameTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Address 1:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorAddress1TextBox" runat="server" 
                            Text='<%# Bind("txtSponsorAddress1") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtSponsorAddress1TextBox" 
                            ErrorMessage="Required field" Text='<%# Eval("txtSponsorAddress1") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Address 2:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorAddress2TextBox" runat="server" 
                            Text='<%# Bind("txtSponsorAddress2") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                            ControlToValidate="txtSponsorAddress2TextBox" 
                            ErrorMessage="Required field" Text='<%# Eval("txtSponsorAddress2") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Address 3:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorAddress3TextBox" runat="server" 
                            Text='<%# Bind("txtSponsorAddress3") %>' Width="320px" maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Contact:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorContactTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorContact") %>' Width="320px" maxlength="100" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtSponsorContactTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Email:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorEmailTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorEmail") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtSponsorEmailTextBox" ErrorMessage="Required field" 
                            Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtSponsorEmailTextBox" ErrorMessage="Invalid email address" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        PO Number:</td>
                    <td>
                        <asp:TextBox ID="txtPONumberTextBox" runat="server" 
                            Text='<%# Bind("txtPONumber") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtPONumberTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="2" style="height: 40px; font-weight: bold">
                        Test Article Information</td>
                </tr>
                <tr>
                    <td align="right">
                        Test Article Name:</td>
                    <td>
                        <asp:TextBox ID="txtTestArticleNameTextBox" runat="server" 
                            Text='<%# Bind("txtTestArticleName") %>' Width="320px" MaxLength="100" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtTestArticleNameTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Lot Batch:</td>
                    <td>
                        <asp:TextBox ID="txtLotBatchTextBox" runat="server" 
                            Text='<%# Bind("txtLotBatch") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtLotBatchTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Test Article Receipt Date:</td>
                    <td>
                        <asp:TextBox ID="txtTestArticleReceiptDateTextBox" runat="server" 
                            Text='<%# Bind("txtTestArticleReceiptDate") %>' 
                            ToolTip="Format: mm/dd/yyyy" maxlength="50" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Date (or N/S)" 
                            ControlToValidate="txtTestArticleReceiptDateTextBox" 
                            
                            ValidationExpression="(^(?:(?:0?[13578]|1[02])|(?:0?[469]|11)(?!\/31)|(?:0?2)(?:(?!\/3[01]|\/29\/(?:(?:0[^48]|[13579][^26]|[2468][^048])00|(?:\d{2}(?:0[^48]|[13579][^26]|[2468][^048]))))))\/(?:0?[1-9]|[12][0-9]|3[01])\/\d{4}$)|(^N/S$)" 
                            Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtTestArticleReceiptDateTextBox" 
                            ErrorMessage="Required field" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Quantity:</td>
                    <td>
                        <asp:TextBox ID="txtQuantityTextBox" runat="server" 
                            Text='<%# Bind("txtQuantity") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtQuantityTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        CAS Code:</td>
                    <td>
                        <asp:TextBox ID="txtCASCodeTextBox" runat="server" 
                            Text='<%# Bind("txtCASCode") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtCASCodeTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Physical State:</td>
                    <td>
                        <asp:TextBox ID="txtPhysicalStateTextBox" runat="server" 
                            Text='<%# Bind("txtPhysicalState") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtPhysicalStateTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Color:</td>
                    <td>
                        <asp:TextBox ID="txtColorTextBox" runat="server" 
                            Text='<%# Bind("txtColor") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtColorTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Expiration Date:</td>
                    <td>
                        <asp:TextBox ID="txtExpirationDateTextBox" runat="server" 
                            Text='<%# Bind("txtExpirationDate") %>' 
                            ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Date (or N/S)" 
                            ControlToValidate="txtExpirationDateTextBox" 
                            
                            ValidationExpression="(^(?:(?:0?[13578]|1[02])|(?:0?[469]|11)(?!\/31)|(?:0?2)(?:(?!\/3[01]|\/29\/(?:(?:0[^48]|[13579][^26]|[2468][^048])00|(?:\d{2}(?:0[^48]|[13579][^26]|[2468][^048]))))))\/(?:0?[1-9]|[12][0-9]|3[01])\/\d{4}$)|(^N/S$)" 
                            Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtExpirationDateTextBox" ErrorMessage="Required field" 
                            Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Density:</td>
                    <td>
                        <asp:TextBox ID="txtDensityTextBox" runat="server" 
                            Text='<%# Bind("txtDensity") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="txtDensityTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Stability:</td>
                    <td>
                        <asp:TextBox ID="txtStabilityTextBox" runat="server" 
                            Text='<%# Bind("txtStability") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="txtStabilityTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Solubility:</td>
                    <td>
                        <asp:TextBox ID="txtSolubilityTextBox" runat="server" 
                            Text='<%# Bind("txtSolubility") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtSolubilityTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        pH:</td>
                    <td>
                        <asp:TextBox ID="txtPHTextBox" runat="server" Text='<%# Bind("txtPH") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtPHTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Storage Conditions:
                    </td>
                    <td>
                        <asp:TextBox ID="txtStorageConditionsTextBox" runat="server" 
                            Text='<%# Bind("txtStorageConditions") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="txtStorageConditionsTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Safety Precautions:
                    </td>
                    <td>
                        <asp:TextBox ID="txtSafetyPrecautionsTextBox" runat="server" 
                            Text='<%# Bind("txtSafetyPrecautions") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                            ControlToValidate="txtSafetyPrecautionsTextBox" ErrorMessage="Required field" 
                            Text='<%# Eval("txtSafetyPrecautions") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Confidentiality Agreement:</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" 
                            Checked='<%# bind("booConfidentialityAgreement") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Disposition:</td>
                    <td>
                        <asp:TextBox ID="txtDispositionTextBox" runat="server" 
                            Text='<%# Bind("txtDisposition") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ControlToValidate="txtDispositionTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Test Type:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            SelectedValue='<%# Bind("txtTestType") %>'>
                            <asp:ListItem Value="G">GLP</asp:ListItem>
                            <asp:ListItem Value="N">Non-GLP</asp:ListItem>
                            <asp:ListItem Value="M">GMP</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="2" style="color: #0000FF">
                        Optional for non-GLP Tests</td>
                </tr>
            </table>
            <br />
            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                Text="Save" onClick="UpdateButton_Click" />
            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" Text="Cancel" onClick="UpdateCancelButton_Click" /> 
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="studies.aspx">Studies</asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table>
                <tr>
                    <td align="center" colspan="2">
                        <h1>Test Request Form</h1></td>
                </tr>
                <tr>
                    <td align="left" colspan="2" style="height: 40px; font-weight: bold">
                        Sponsor Information</td>
                </tr>
                <tr>
                    <td align="right">
                        Sample Number:</td>
                    <td>
                        <asp:TextBox ID="txtSampleNumberTextBox" runat="server" 
                            Text='<%# Bind("txtSampleNumber") %>' Width="128px" maxlength="20" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtSampleNumberTextBox" ErrorMessage="Required field" 
                            Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtSampleNumberTextBox" Display="Dynamic" 
                            ErrorMessage="Invalid sample number" ValidationExpression="^\d{2}-\d{4}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Name:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorNameTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorName") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtSponsorNameTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Address 1:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorAddress1TextBox" runat="server" 
                            Text='<%# Bind("txtSponsorAddress1") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtSponsorAddress1TextBox" 
                            ErrorMessage="Required field" Text='<%# Eval("txtSponsorAddress1") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Address 2:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorAddress2TextBox" runat="server" 
                            Text='<%# Bind("txtSponsorAddress2") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                            ControlToValidate="txtSponsorAddress2TextBox" 
                            ErrorMessage="Required field" Text='<%# Eval("txtSponsorAddress2") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Address 3:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorAddress3TextBox" runat="server" 
                            Text='<%# Bind("txtSponsorAddress3") %>' Width="320px" maxlength="50"  />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Contact:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorContactTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorContact") %>' Width="320px" maxlength="100" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtSponsorContactTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Sponsor Email:</td>
                    <td>
                        <asp:TextBox ID="txtSponsorEmailTextBox" runat="server" 
                            Text='<%# Bind("txtSponsorEmail") %>' Width="320px" maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtSponsorEmailTextBox" ErrorMessage="Required field" 
                            Display="Dynamic"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtSponsorEmailTextBox" ErrorMessage="Invalid email address" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            Display="Dynamic"></asp:RegularExpressionValidator>
                   </td>
                </tr>
                <tr>
                    <td align="right">
                        PO Number:</td>
                    <td>
                        <asp:TextBox ID="txtPONumberTextBox" runat="server" 
                            Text='<%# Bind("txtPONumber") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtPONumberTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="2" style="height: 40px; font-weight: bold">
                        Test Article Information</td>
                </tr>
                <tr>
                    <td align="right">
                        Test Article Name:</td>
                    <td>
                        <asp:TextBox ID="txtTestArticleNameTextBox" runat="server" 
                            Text='<%# Bind("txtTestArticleName") %>' Width="320px" MaxLength="100" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtTestArticleNameTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Lot Batch:</td>
                    <td>
                        <asp:TextBox ID="txtLotBatchTextBox" runat="server" 
                            Text='<%# Bind("txtLotBatch") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtLotBatchTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Test Article Receipt Date:</td>
                    <td>
                        <asp:TextBox ID="txtTestArticleReceiptDateTextBox" runat="server" 
                            Text='<%# Bind("txtTestArticleReceiptDate") %>' 
                            ToolTip="Format: mm/dd/yyyy" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Date (or N/S)" 
                            ControlToValidate="txtTestArticleReceiptDateTextBox" 
                            
                            ValidationExpression="(^(?:(?:0?[13578]|1[02])|(?:0?[469]|11)(?!\/31)|(?:0?2)(?:(?!\/3[01]|\/29\/(?:(?:0[^48]|[13579][^26]|[2468][^048])00|(?:\d{2}(?:0[^48]|[13579][^26]|[2468][^048]))))))\/(?:0?[1-9]|[12][0-9]|3[01])\/\d{4}$)|(^N/S$)" 
                            Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtTestArticleReceiptDateTextBox" 
                            ErrorMessage="Required field" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Quantity:</td>
                    <td>
                        <asp:TextBox ID="txtQuantityTextBox" runat="server" 
                            Text='<%# Bind("txtQuantity") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtQuantityTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        CAS Code:</td>
                    <td>
                        <asp:TextBox ID="txtCASCodeTextBox" runat="server" 
                            Text='<%# Bind("txtCASCode") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtCASCodeTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Physical State:</td>
                    <td>
                        <asp:TextBox ID="txtPhysicalStateTextBox" runat="server" 
                            Text='<%# Bind("txtPhysicalState") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtPhysicalStateTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Color:</td>
                    <td>
                        <asp:TextBox ID="txtColorTextBox" runat="server" 
                            Text='<%# Bind("txtColor") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtColorTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Expiration Date:</td>
                    <td>
                        <asp:TextBox ID="txtExpirationDateTextBox" runat="server" 
                            Text='<%# Bind("txtExpirationDate") %>' 
                            ToolTip="Format: mm/dd/yyyy" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Date (or N/S)" 
                            ControlToValidate="txtExpirationDateTextBox" 
                            
                            ValidationExpression="(^(?:(?:0?[13578]|1[02])|(?:0?[469]|11)(?!\/31)|(?:0?2)(?:(?!\/3[01]|\/29\/(?:(?:0[^48]|[13579][^26]|[2468][^048])00|(?:\d{2}(?:0[^48]|[13579][^26]|[2468][^048]))))))\/(?:0?[1-9]|[12][0-9]|3[01])\/\d{4}$)|(^N/S$)" 
                            Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtExpirationDateTextBox" ErrorMessage="Required field" 
                            Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Density:</td>
                    <td>
                        <asp:TextBox ID="txtDensityTextBox" runat="server" 
                            Text='<%# Bind("txtDensity") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="txtDensityTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Stability:</td>
                    <td>
                        <asp:TextBox ID="txtStabilityTextBox" runat="server" 
                            Text='<%# Bind("txtStability") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="txtStabilityTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Solubility:</td>
                    <td>
                        <asp:TextBox ID="txtSolubilityTextBox" runat="server" 
                            Text='<%# Bind("txtSolubility") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtSolubilityTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        pH:</td>
                    <td>
                        <asp:TextBox ID="txtPHTextBox" runat="server" Text='<%# Bind("txtPH") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtPHTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Storage Conditions:
                    </td>
                    <td>
                        <asp:TextBox ID="txtStorageConditionsTextBox" runat="server" 
                            Text='<%# Bind("txtStorageConditions") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="txtStorageConditionsTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="color: #0000FF">
                        Safety Precautions:</td>
                    <td>
                        <asp:TextBox ID="txtSafetyPrecautionsTextBox" runat="server" 
                            Text='<%# Bind("txtSafetyPrecautions", "{0}") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                            ControlToValidate="txtSafetyPrecautionsTextBox" ErrorMessage="Required field" 
                            Text='<%# Eval("txtSafetyPrecautions") %>'></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Confidentiality Agreement:</td>
                    <td>
                        <asp:CheckBox ID="CheckBox2" runat="server" 
                            Checked='<%# bind("booConfidentialityAgreement") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Disposition:</td>
                    <td>
                        <asp:TextBox ID="txtDispositionTextBox" runat="server" 
                            Text='<%# Bind("txtDisposition") %>' maxlength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ControlToValidate="txtDispositionTextBox" ErrorMessage="Required field"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Test Type:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("txtTestType") %>'>
                            <asp:ListItem Value="G" Selected="True">GLP</asp:ListItem>
                            <asp:ListItem Value="N">Non-GLP</asp:ListItem>
                            <asp:ListItem Value="M">GMP</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="2" style="color: #0000FF">
                        Optional for non-GLP Tests</td>
                </tr>
            </table>
            <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                 Text="Save" onclick="InsertButton_Click" />
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" 
                CausesValidation="False" Text="Cancel" OnClick="InsertCancelButton_Click" />
             &nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="studies.aspx">Studies</asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
           <table>
                <tr>
                    <td align="right">
                        Sample Number:</td>
                    <td>
                        <asp:Label ID="txtSampleNumberTextBox" runat="server" 
                            Text='<%# Bind("txtSampleNumber") %>' />
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
                        <asp:Label ID="txtExpirationDateTextBox" runat="server" 
                            Text='<%# Bind("txtExpirationDate", "{0:d}") %>' />
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
            <tr><td align="center"><h1>Test Request Form</h1></td></tr>
            <tr><td style="height: 80px;">Please select a sample to edit -or- click the New button to enter a new sample.<br />
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="_default.aspx">Main</asp:LinkButton>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="studies.aspx">Studies</asp:LinkButton>
                </td></tr>
            </table>
        </EmptyDataTemplate>
        <FooterTemplate>
        </FooterTemplate>
        <HeaderTemplate>
        </HeaderTemplate>
    </asp:FormView>
    <asp:Label ID="LabelUsername" runat="server" Text="Username"></asp:Label>&nbsp;
    <asp:Label ID="LabelDB" runat="server" Text="DB"></asp:Label>
    </form>
</body>
</html>
