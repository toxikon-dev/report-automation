<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AmesTestResultsForm.aspx.vb" Inherits="RAForms.Ames_Test_Results_Form, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ames Test Result</title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" title="Ames Test Results">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>"
        
        SelectCommand="SELECT [txtStudyNumber] FROM [tblAmes] UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
                
        SelectCommand="SELECT tblProjects.txtStudyNumber FROM tblProjects WHERE tblProjects.txtProtocolNumber in (select txtProtocolName from tblProtocols where txtWebForm = 'AmesTestResultsForm.aspx') EXCEPT SELECT tblAmes.txtStudyNumber FROM tblAmes UNION SELECT txtEmpty FROM tblEmpty ORDER BY 1">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT tblUsers.txtFullName, tblUsers.txtEmail, tblAmes.txtStudyNumber, tblAmes.intNonActivatedTA98Rep1Positive, tblAmes.intNonActivatedTA98Rep2Positive, tblAmes.intNonActivatedTA98Rep3Positive, tblAmes.intNonActivatedTA98Rep1NegativeNaCl, tblAmes.intNonActivatedTA98Rep2NegativeNaCl, tblAmes.intNonActivatedTA98Rep3NegativeNaCl, tblAmes.intNonActivatedTA98Rep1NegativeCSO, tblAmes.intNonActivatedTA98Rep2NegativeCSO, tblAmes.intNonActivatedTA98Rep3NegativeCSO, tblAmes.intNonActivatedTA98Rep1TestNaCl, tblAmes.intNonActivatedTA98Rep2TestNaCl, tblAmes.intNonActivatedTA98Rep3TestNaCl, tblAmes.intNonActivatedTA98Rep1TestCSO, tblAmes.intNonActivatedTA98Rep2TestCSO, tblAmes.intNonActivatedTA98Rep3TestCSO, tblAmes.intNonActivatedTA100Rep1Positive, tblAmes.intNonActivatedTA100Rep2Positive, tblAmes.intNonActivatedTA100Rep3Positive, tblAmes.intNonActivatedTA100Rep1NegativeNaCl, tblAmes.intNonActivatedTA100Rep2NegativeNaCl, tblAmes.intNonActivatedTA100Rep3NegativeNaCl, tblAmes.intNonActivatedTA100Rep1NegativeCSO, tblAmes.intNonActivatedTA100Rep2NegativeCSO, tblAmes.intNonActivatedTA100Rep3NegativeCSO, tblAmes.intNonActivatedTA100Rep1TestNaCl, tblAmes.intNonActivatedTA100Rep2TestNaCl, tblAmes.intNonActivatedTA100Rep3TestNaCl, tblAmes.intNonActivatedTA100Rep1TestCSO, tblAmes.intNonActivatedTA100Rep2TestCSO, tblAmes.intNonActivatedTA100Rep3TestCSO, tblAmes.intNonActivatedTA1535Rep1Positive, tblAmes.intNonActivatedTA1535Rep2Positive, tblAmes.intNonActivatedTA1535Rep3Positive, tblAmes.intNonActivatedTA1535Rep1NegativeNaCl, tblAmes.intNonActivatedTA1535Rep2NegativeNaCl, tblAmes.intNonActivatedTA1535Rep3NegativeNaCl, tblAmes.intNonActivatedTA1535Rep1NegativeCSO, tblAmes.intNonActivatedTA1535Rep2NegativeCSO, tblAmes.intNonActivatedTA1535Rep3NegativeCSO, tblAmes.intNonActivatedTA1535Rep1TestNaCl, tblAmes.intNonActivatedTA1535Rep2TestNaCl, tblAmes.intNonActivatedTA1535Rep3TestNaCl, tblAmes.intNonActivatedTA1535Rep1TestCSO, tblAmes.intNonActivatedTA1535Rep2TestCSO, tblAmes.intNonActivatedTA1535Rep3TestCSO, tblAmes.intNonActivatedTA1537Rep1Positive, tblAmes.intNonActivatedTA1537Rep2Positive, tblAmes.intNonActivatedTA1537Rep3Positive, tblAmes.intNonActivatedTA1537Rep1NegativeNaCl, tblAmes.intNonActivatedTA1537Rep2NegativeNaCl, tblAmes.intNonActivatedTA1537Rep3NegativeNaCl, tblAmes.intNonActivatedTA1537Rep1NegativeCSO, tblAmes.intNonActivatedTA1537Rep2NegativeCSO, tblAmes.intNonActivatedTA1537Rep3NegativeCSO, tblAmes.intNonActivatedTA1537Rep1TestNaCl, tblAmes.intNonActivatedTA1537Rep2TestNaCl, tblAmes.intNonActivatedTA1537Rep3TestNaCl, tblAmes.intNonActivatedTA1537Rep1TestCSO, tblAmes.intNonActivatedTA1537Rep2TestCSO, tblAmes.intNonActivatedTA1537Rep3TestCSO, tblAmes.intNonActivatedWP2Rep1Positive, tblAmes.intNonActivatedWP2Rep2Positive, tblAmes.intNonActivatedWP2Rep3Positive, tblAmes.intNonActivatedWP2Rep1NegativeNaCl, tblAmes.intNonActivatedWP2Rep2NegativeNaCl, tblAmes.intNonActivatedWP2Rep3NegativeNaCl, tblAmes.intNonActivatedWP2Rep1NegativeCSO, tblAmes.intNonActivatedWP2Rep2NegativeCSO, tblAmes.intNonActivatedWP2Rep3NegativeCSO, tblAmes.intNonActivatedWP2Rep1TestNaCl, tblAmes.intNonActivatedWP2Rep2TestNaCl, tblAmes.intNonActivatedWP2Rep3TestNaCl, tblAmes.intNonActivatedWP2Rep1TestCSO, tblAmes.intNonActivatedWP2Rep2TestCSO, tblAmes.intNonActivatedWP2Rep3TestCSO, tblAmes.intActivatedTA98Rep1Positive, tblAmes.intActivatedTA98Rep2Positive, tblAmes.intActivatedTA98Rep3Positive, tblAmes.intActivatedTA98Rep1NegativeNaCl, tblAmes.intActivatedTA98Rep2NegativeNaCl, tblAmes.intActivatedTA98Rep3NegativeNaCl, tblAmes.intActivatedTA98Rep1NegativeCSO, tblAmes.intActivatedTA98Rep2NegativeCSO, tblAmes.intActivatedTA98Rep3NegativeCSO, tblAmes.intActivatedTA98Rep1TestNaCl, tblAmes.intActivatedTA98Rep2TestNaCl, tblAmes.intActivatedTA98Rep3TestNaCl, tblAmes.intActivatedTA98Rep1TestCSO, tblAmes.intActivatedTA98Rep2TestCSO, tblAmes.intActivatedTA98Rep3TestCSO, tblAmes.intActivatedTA100Rep1Positive, tblAmes.intActivatedTA100Rep2Positive, tblAmes.intActivatedTA100Rep3Positive, tblAmes.intActivatedTA100Rep1NegativeNaCl, tblAmes.intActivatedTA100Rep2NegativeNaCl, tblAmes.intActivatedTA100Rep3NegativeNaCl, tblAmes.intActivatedTA100Rep1NegativeCSO, tblAmes.intActivatedTA100Rep2NegativeCSO, tblAmes.intActivatedTA100Rep3NegativeCSO, tblAmes.intActivatedTA100Rep1TestNaCl, tblAmes.intActivatedTA100Rep2TestNaCl, tblAmes.intActivatedTA100Rep3TestNaCl, tblAmes.intActivatedTA100Rep1TestCSO, tblAmes.intActivatedTA100Rep2TestCSO, tblAmes.intActivatedTA100Rep3TestCSO, tblAmes.intActivatedTA1535Rep1Positive, tblAmes.intActivatedTA1535Rep2Positive, tblAmes.intActivatedTA1535Rep3Positive, tblAmes.intActivatedTA1535Rep1NegativeNaCl, tblAmes.intActivatedTA1535Rep2NegativeNaCl, tblAmes.intActivatedTA1535Rep3NegativeNaCl, tblAmes.intActivatedTA1535Rep1NegativeCSO, tblAmes.intActivatedTA1535Rep2NegativeCSO, tblAmes.intActivatedTA1535Rep3NegativeCSO, tblAmes.intActivatedTA1535Rep1TestNaCl, tblAmes.intActivatedTA1535Rep2TestNaCl, tblAmes.intActivatedTA1535Rep3TestNaCl, tblAmes.intActivatedTA1535Rep1TestCSO, tblAmes.intActivatedTA1535Rep2TestCSO, tblAmes.intActivatedTA1535Rep3TestCSO, tblAmes.intActivatedTA1537Rep1Positive, tblAmes.intActivatedTA1537Rep2Positive, tblAmes.intActivatedTA1537Rep3Positive, tblAmes.intActivatedTA1537Rep1NegativeNaCl, tblAmes.intActivatedTA1537Rep2NegativeNaCl, tblAmes.intActivatedTA1537Rep3NegativeNaCl, tblAmes.intActivatedTA1537Rep1NegativeCSO, tblAmes.intActivatedTA1537Rep2NegativeCSO, tblAmes.intActivatedTA1537Rep3NegativeCSO, tblAmes.intActivatedTA1537Rep1TestNaCl, tblAmes.intActivatedTA1537Rep2TestNaCl, tblAmes.intActivatedTA1537Rep3TestNaCl, tblAmes.intActivatedTA1537Rep1TestCSO, tblAmes.intActivatedTA1537Rep2TestCSO, tblAmes.intActivatedTA1537Rep3TestCSO, tblAmes.intActivatedWP2Rep1Positive, tblAmes.intActivatedWP2Rep2Positive, tblAmes.intActivatedWP2Rep3Positive, tblAmes.intActivatedWP2Rep1NegativeNaCl, tblAmes.intActivatedWP2Rep2NegativeNaCl, tblAmes.intActivatedWP2Rep3NegativeNaCl, tblAmes.intActivatedWP2Rep1NegativeCSO, tblAmes.intActivatedWP2Rep2NegativeCSO, tblAmes.intActivatedWP2Rep3NegativeCSO, tblAmes.intActivatedWP2Rep1TestNaCl, tblAmes.intActivatedWP2Rep2TestNaCl, tblAmes.intActivatedWP2Rep3TestNaCl, tblAmes.intActivatedWP2Rep1TestCSO, tblAmes.intActivatedWP2Rep2TestCSO, tblAmes.intActivatedWP2Rep3TestCSO FROM tblProjects INNER JOIN tblUsers ON tblProjects.intStudyDirector = tblUsers.intUserID INNER JOIN tblAmes ON tblProjects.txtStudyNumber = tblAmes.txtStudyNumber WHERE (tblAmes.txtStudyNumber = @StudyDropDownList)" 
        
        UpdateCommand="UPDATE tblAmes SET intNonActivatedTA98Rep1Positive = @intNonActivatedTA98Rep1Positive, intNonActivatedTA98Rep2Positive = @intNonActivatedTA98Rep2Positive, intNonActivatedTA98Rep3Positive = @intNonActivatedTA98Rep3Positive, intNonActivatedTA98Rep1NegativeNaCl = @intNonActivatedTA98Rep1NegativeNaCl, intNonActivatedTA98Rep2NegativeNaCl = @intNonActivatedTA98Rep2NegativeNaCl, intNonActivatedTA98Rep3NegativeNaCl = @intNonActivatedTA98Rep3NegativeNaCl, intNonActivatedTA98Rep1NegativeCSO = @intNonActivatedTA98Rep1NegativeCSO, intNonActivatedTA98Rep2NegativeCSO = @intNonActivatedTA98Rep2NegativeCSO, intNonActivatedTA98Rep3NegativeCSO = @intNonActivatedTA98Rep3NegativeCSO, intNonActivatedTA98Rep1TestNaCl = @intNonActivatedTA98Rep1TestNaCl, intNonActivatedTA98Rep2TestNaCl = @intNonActivatedTA98Rep2TestNaCl, intNonActivatedTA98Rep3TestNaCl = @intNonActivatedTA98Rep3TestNaCl, intNonActivatedTA98Rep1TestCSO = @intNonActivatedTA98Rep1TestCSO, intNonActivatedTA98Rep2TestCSO = @intNonActivatedTA98Rep2TestCSO, intNonActivatedTA98Rep3TestCSO = @intNonActivatedTA98Rep3TestCSO, intNonActivatedTA100Rep1Positive = @intNonActivatedTA100Rep1Positive, intNonActivatedTA100Rep2Positive = @intNonActivatedTA100Rep2Positive, intNonActivatedTA100Rep3Positive = @intNonActivatedTA100Rep3Positive, intNonActivatedTA100Rep1NegativeNaCl = @intNonActivatedTA100Rep1NegativeNaCl, intNonActivatedTA100Rep2NegativeNaCl = @intNonActivatedTA100Rep2NegativeNaCl, intNonActivatedTA100Rep3NegativeNaCl = @intNonActivatedTA100Rep3NegativeNaCl, intNonActivatedTA100Rep1NegativeCSO = @intNonActivatedTA100Rep1NegativeCSO, intNonActivatedTA100Rep2NegativeCSO = @intNonActivatedTA100Rep2NegativeCSO, intNonActivatedTA100Rep3NegativeCSO = @intNonActivatedTA100Rep3NegativeCSO, intNonActivatedTA100Rep1TestNaCl = @intNonActivatedTA100Rep1TestNaCl, intNonActivatedTA100Rep2TestNaCl = @intNonActivatedTA100Rep2TestNaCl, intNonActivatedTA100Rep3TestNaCl = @intNonActivatedTA100Rep3TestNaCl, intNonActivatedTA100Rep1TestCSO = @intNonActivatedTA100Rep1TestCSO, intNonActivatedTA100Rep2TestCSO = @intNonActivatedTA100Rep2TestCSO, intNonActivatedTA100Rep3TestCSO = @intNonActivatedTA100Rep3TestCSO, intNonActivatedTA1535Rep1Positive = @intNonActivatedTA1535Rep1Positive, intNonActivatedTA1535Rep2Positive = @intNonActivatedTA1535Rep2Positive, intNonActivatedTA1535Rep1NegativeNaCl = @intNonActivatedTA1535Rep1NegativeNaCl, intNonActivatedTA1535Rep3Positive = @intNonActivatedTA1535Rep3Positive, intNonActivatedTA1535Rep2NegativeNaCl = @intNonActivatedTA1535Rep2NegativeNaCl, intNonActivatedTA1535Rep3NegativeNaCl = @intNonActivatedTA1535Rep3NegativeNaCl, intNonActivatedTA1535Rep2NegativeCSO = @intNonActivatedTA1535Rep2NegativeCSO, intNonActivatedTA1535Rep1NegativeCSO = @intNonActivatedTA1535Rep1NegativeCSO, intNonActivatedTA1535Rep3NegativeCSO = @intNonActivatedTA1535Rep3NegativeCSO, intNonActivatedTA1535Rep1TestNaCl = @intNonActivatedTA1535Rep1TestNaCl, intNonActivatedTA1535Rep2TestNaCl = @intNonActivatedTA1535Rep2TestNaCl, intNonActivatedTA1535Rep3TestNaCl = @intNonActivatedTA1535Rep3TestNaCl, intNonActivatedTA1535Rep1TestCSO = @intNonActivatedTA1535Rep1TestCSO, intNonActivatedTA1535Rep2TestCSO = @intNonActivatedTA1535Rep2TestCSO, intNonActivatedTA1535Rep3TestCSO = @intNonActivatedTA1535Rep3TestCSO, intNonActivatedTA1537Rep1Positive = @intNonActivatedTA1537Rep1Positive, intNonActivatedTA1537Rep2Positive = @intNonActivatedTA1537Rep2Positive, intNonActivatedTA1537Rep3Positive = @intNonActivatedTA1537Rep3Positive, intNonActivatedTA1537Rep1NegativeNaCl = @intNonActivatedTA1537Rep1NegativeNaCl, intNonActivatedTA1537Rep2NegativeNaCl = @intNonActivatedTA1537Rep2NegativeNaCl, intNonActivatedTA1537Rep3NegativeNaCl = @intNonActivatedTA1537Rep3NegativeNaCl, intNonActivatedTA1537Rep1NegativeCSO = @intNonActivatedTA1537Rep1NegativeCSO, intNonActivatedTA1537Rep2NegativeCSO = @intNonActivatedTA1537Rep2NegativeCSO, intNonActivatedTA1537Rep3NegativeCSO = @intNonActivatedTA1537Rep3NegativeCSO, intNonActivatedTA1537Rep1TestNaCl = @intNonActivatedTA1537Rep1TestNaCl, intNonActivatedTA1537Rep2TestNaCl = @intNonActivatedTA1537Rep2TestNaCl, intNonActivatedTA1537Rep3TestNaCl = @intNonActivatedTA1537Rep3TestNaCl, intNonActivatedTA1537Rep1TestCSO = @intNonActivatedTA1537Rep1TestCSO, intNonActivatedTA1537Rep2TestCSO = @intNonActivatedTA1537Rep2TestCSO, intNonActivatedTA1537Rep3TestCSO = @intNonActivatedTA1537Rep3TestCSO, intNonActivatedWP2Rep1Positive = @intNonActivatedWP2Rep1Positive, intNonActivatedWP2Rep2Positive = @intNonActivatedWP2Rep2Positive, intNonActivatedWP2Rep3Positive = @intNonActivatedWP2Rep3Positive, intNonActivatedWP2Rep1NegativeNaCl = @intNonActivatedWP2Rep1NegativeNaCl, intNonActivatedWP2Rep2NegativeNaCl = @intNonActivatedWP2Rep2NegativeNaCl, intNonActivatedWP2Rep3NegativeNaCl = @intNonActivatedWP2Rep3NegativeNaCl, intNonActivatedWP2Rep1NegativeCSO = @intNonActivatedWP2Rep1NegativeCSO, intNonActivatedWP2Rep2NegativeCSO = @intNonActivatedWP2Rep2NegativeCSO, intNonActivatedWP2Rep3NegativeCSO = @intNonActivatedWP2Rep3NegativeCSO, intNonActivatedWP2Rep1TestNaCl = @intNonActivatedWP2Rep1TestNaCl, intNonActivatedWP2Rep2TestNaCl = @intNonActivatedWP2Rep2TestNaCl, intNonActivatedWP2Rep3TestNaCl = @intNonActivatedWP2Rep3TestNaCl, intNonActivatedWP2Rep1TestCSO = @intNonActivatedWP2Rep1TestCSO, intNonActivatedWP2Rep2TestCSO = @intNonActivatedWP2Rep2TestCSO, intNonActivatedWP2Rep3TestCSO = @intNonActivatedWP2Rep3TestCSO, intActivatedTA98Rep1Positive = @intActivatedTA98Rep1Positive, intActivatedTA98Rep2Positive = @intActivatedTA98Rep2Positive, intActivatedTA98Rep3Positive = @intActivatedTA98Rep3Positive, intActivatedTA98Rep1NegativeNaCl = @intActivatedTA98Rep1NegativeNaCl, intActivatedTA98Rep2NegativeNaCl = @intActivatedTA98Rep2NegativeNaCl, intActivatedTA98Rep3NegativeNaCl = @intActivatedTA98Rep3NegativeNaCl, intActivatedTA98Rep1NegativeCSO = @intActivatedTA98Rep1NegativeCSO, intActivatedTA98Rep2NegativeCSO = @intActivatedTA98Rep2NegativeCSO, intActivatedTA98Rep3NegativeCSO = @intActivatedTA98Rep3NegativeCSO, intActivatedTA98Rep1TestNaCl = @intActivatedTA98Rep1TestNaCl, intActivatedTA98Rep2TestNaCl = @intActivatedTA98Rep2TestNaCl, intActivatedTA98Rep3TestNaCl = @intActivatedTA98Rep3TestNaCl, intActivatedTA98Rep1TestCSO = @intActivatedTA98Rep1TestCSO, intActivatedTA98Rep2TestCSO = @intActivatedTA98Rep2TestCSO, intActivatedTA98Rep3TestCSO = @intActivatedTA98Rep3TestCSO, intActivatedTA100Rep1Positive = @intActivatedTA100Rep1Positive, intActivatedTA100Rep2Positive = @intActivatedTA100Rep2Positive, intActivatedTA100Rep3Positive = @intActivatedTA100Rep3Positive, intActivatedTA100Rep1NegativeNaCl = @intActivatedTA100Rep1NegativeNaCl, intActivatedTA100Rep2NegativeNaCl = @intActivatedTA100Rep2NegativeNaCl, intActivatedTA100Rep3NegativeNaCl = @intActivatedTA100Rep3NegativeNaCl, intActivatedTA100Rep1NegativeCSO = @intActivatedTA100Rep1NegativeCSO, intActivatedTA100Rep2NegativeCSO = @intActivatedTA100Rep2NegativeCSO, intActivatedTA100Rep3NegativeCSO = @intActivatedTA100Rep3NegativeCSO, intActivatedTA100Rep1TestNaCl = @intActivatedTA100Rep1TestNaCl, intActivatedTA100Rep2TestNaCl = @intActivatedTA100Rep2TestNaCl, intActivatedTA100Rep3TestNaCl = @intActivatedTA100Rep3TestNaCl, intActivatedTA100Rep1TestCSO = @intActivatedTA100Rep1TestCSO, intActivatedTA100Rep2TestCSO = @intActivatedTA100Rep2TestCSO, intActivatedTA100Rep3TestCSO = @intActivatedTA100Rep3TestCSO, intActivatedTA1535Rep1Positive = @intActivatedTA1535Rep1Positive, intActivatedTA1535Rep2Positive = @intActivatedTA1535Rep2Positive, intActivatedTA1535Rep3Positive = @intActivatedTA1535Rep3Positive, intActivatedTA1535Rep1NegativeNaCl = @intActivatedTA1535Rep1NegativeNaCl, intActivatedTA1535Rep2NegativeNaCl = @intActivatedTA1535Rep2NegativeNaCl, intActivatedTA1535Rep3NegativeNaCl = @intActivatedTA1535Rep3NegativeNaCl, intActivatedTA1535Rep1NegativeCSO = @intActivatedTA1535Rep1NegativeCSO, intActivatedTA1535Rep2NegativeCSO = @intActivatedTA1535Rep2NegativeCSO, intActivatedTA1535Rep3NegativeCSO = @intActivatedTA1535Rep3NegativeCSO, intActivatedTA1535Rep1TestNaCl = @intActivatedTA1535Rep1TestNaCl, intActivatedTA1535Rep2TestNaCl = @intActivatedTA1535Rep2TestNaCl, intActivatedTA1535Rep3TestNaCl = @intActivatedTA1535Rep3TestNaCl, intActivatedTA1535Rep1TestCSO = @intActivatedTA1535Rep1TestCSO, intActivatedTA1535Rep2TestCSO = @intActivatedTA1535Rep2TestCSO, intActivatedTA1535Rep3TestCSO = @intActivatedTA1535Rep3TestCSO, intActivatedTA1537Rep1Positive = @intActivatedTA1537Rep1Positive, intActivatedTA1537Rep2Positive = @intActivatedTA1537Rep2Positive, intActivatedTA1537Rep3Positive = @intActivatedTA1537Rep3Positive, intActivatedTA1537Rep1NegativeNaCl = @intActivatedTA1537Rep1NegativeNaCl, intActivatedTA1537Rep2NegativeNaCl = @intActivatedTA1537Rep2NegativeNaCl, intActivatedTA1537Rep3NegativeNaCl = @intActivatedTA1537Rep3NegativeNaCl, intActivatedTA1537Rep1NegativeCSO = @intActivatedTA1537Rep1NegativeCSO, intActivatedTA1537Rep2NegativeCSO = @intActivatedTA1537Rep2NegativeCSO, intActivatedTA1537Rep3NegativeCSO = @intActivatedTA1537Rep3NegativeCSO, intActivatedTA1537Rep1TestNaCl = @intActivatedTA1537Rep1TestNaCl, intActivatedTA1537Rep2TestNaCl = @intActivatedTA1537Rep2TestNaCl, intActivatedTA1537Rep3TestNaCl = @intActivatedTA1537Rep3TestNaCl, intActivatedTA1537Rep1TestCSO = @intActivatedTA1537Rep1TestCSO, intActivatedTA1537Rep2TestCSO = @intActivatedTA1537Rep2TestCSO, intActivatedTA1537Rep3TestCSO = @intActivatedTA1537Rep3TestCSO, intActivatedWP2Rep1Positive = @intActivatedWP2Rep1Positive, intActivatedWP2Rep2Positive = @intActivatedWP2Rep2Positive, intActivatedWP2Rep3Positive = @intActivatedWP2Rep3Positive, intActivatedWP2Rep1NegativeNaCl = @intActivatedWP2Rep1NegativeNaCl, intActivatedWP2Rep2NegativeNaCl = @intActivatedWP2Rep2NegativeNaCl, intActivatedWP2Rep3NegativeNaCl = @intActivatedWP2Rep3NegativeNaCl, intActivatedWP2Rep1NegativeCSO = @intActivatedWP2Rep1NegativeCSO, intActivatedWP2Rep2NegativeCSO = @intActivatedWP2Rep2NegativeCSO, intActivatedWP2Rep3NegativeCSO = @intActivatedWP2Rep3NegativeCSO, intActivatedWP2Rep1TestNaCl = @intActivatedWP2Rep1TestNaCl, intActivatedWP2Rep2TestNaCl = @intActivatedWP2Rep2TestNaCl, intActivatedWP2Rep3TestNaCl = @intActivatedWP2Rep3TestNaCl, intActivatedWP2Rep1TestCSO = @intActivatedWP2Rep1TestCSO, intActivatedWP2Rep2TestCSO = @intActivatedWP2Rep2TestCSO, intActivatedWP2Rep3TestCSO = @intActivatedWP2Rep3TestCSO WHERE (txtStudyNumber = @txtStudyNumber)" 
        
        InsertCommand="INSERT INTO tblAmes(txtStudyNumber, intNonActivatedTA98Rep1Positive, intNonActivatedTA98Rep2Positive, intNonActivatedTA98Rep3Positive, intNonActivatedTA98Rep1NegativeNaCl, intNonActivatedTA98Rep2NegativeNaCl, intNonActivatedTA98Rep3NegativeNaCl, intNonActivatedTA98Rep1NegativeCSO, intNonActivatedTA98Rep2NegativeCSO, intNonActivatedTA98Rep3NegativeCSO, intNonActivatedTA98Rep1TestNaCl, intNonActivatedTA98Rep2TestNaCl, intNonActivatedTA98Rep3TestNaCl, intNonActivatedTA98Rep1TestCSO, intNonActivatedTA98Rep2TestCSO, intNonActivatedTA98Rep3TestCSO, intNonActivatedTA100Rep1Positive, intNonActivatedTA100Rep2Positive, intNonActivatedTA100Rep3Positive, intNonActivatedTA100Rep1NegativeNaCl, intNonActivatedTA100Rep2NegativeNaCl, intNonActivatedTA100Rep3NegativeNaCl, intNonActivatedTA100Rep1NegativeCSO, intNonActivatedTA100Rep2NegativeCSO, intNonActivatedTA100Rep3NegativeCSO, intNonActivatedTA100Rep1TestNaCl, intNonActivatedTA100Rep2TestNaCl, intNonActivatedTA100Rep3TestNaCl, intNonActivatedTA100Rep1TestCSO, intNonActivatedTA100Rep2TestCSO, intNonActivatedTA100Rep3TestCSO, intNonActivatedTA1535Rep1Positive, intNonActivatedTA1535Rep2Positive, intNonActivatedTA1535Rep3Positive, intNonActivatedTA1535Rep1NegativeNaCl, intNonActivatedTA1535Rep2NegativeNaCl, intNonActivatedTA1535Rep3NegativeNaCl, intNonActivatedTA1535Rep1NegativeCSO, intNonActivatedTA1535Rep2NegativeCSO, intNonActivatedTA1535Rep3NegativeCSO, intNonActivatedTA1535Rep1TestNaCl, intNonActivatedTA1535Rep2TestNaCl, intNonActivatedTA1535Rep3TestNaCl, intNonActivatedTA1535Rep1TestCSO, intNonActivatedTA1535Rep2TestCSO, intNonActivatedTA1535Rep3TestCSO, intNonActivatedTA1537Rep1Positive, intNonActivatedTA1537Rep2Positive, intNonActivatedTA1537Rep3Positive, intNonActivatedTA1537Rep1NegativeNaCl, intNonActivatedTA1537Rep2NegativeNaCl, intNonActivatedTA1537Rep3NegativeNaCl, intNonActivatedTA1537Rep1NegativeCSO, intNonActivatedTA1537Rep2NegativeCSO, intNonActivatedTA1537Rep3NegativeCSO, intNonActivatedTA1537Rep1TestNaCl, intNonActivatedTA1537Rep2TestNaCl, intNonActivatedTA1537Rep3TestNaCl, intNonActivatedTA1537Rep1TestCSO, intNonActivatedTA1537Rep2TestCSO, intNonActivatedTA1537Rep3TestCSO, intNonActivatedWP2Rep1Positive, intNonActivatedWP2Rep2Positive, intNonActivatedWP2Rep3Positive, intNonActivatedWP2Rep2NegativeNaCl, intNonActivatedWP2Rep1NegativeNaCl, intNonActivatedWP2Rep3NegativeNaCl, intNonActivatedWP2Rep1NegativeCSO, intNonActivatedWP2Rep2NegativeCSO, intNonActivatedWP2Rep3NegativeCSO, intNonActivatedWP2Rep1TestNaCl, intNonActivatedWP2Rep2TestNaCl, intNonActivatedWP2Rep3TestNaCl, intNonActivatedWP2Rep1TestCSO, intNonActivatedWP2Rep2TestCSO, intNonActivatedWP2Rep3TestCSO, intActivatedTA98Rep1Positive, intActivatedTA98Rep2Positive, intActivatedTA98Rep3Positive, intActivatedTA98Rep1NegativeNaCl, intActivatedTA98Rep2NegativeNaCl, intActivatedTA98Rep3NegativeNaCl, intActivatedTA98Rep1NegativeCSO, intActivatedTA98Rep2NegativeCSO, intActivatedTA98Rep3NegativeCSO, intActivatedTA98Rep1TestNaCl, intActivatedTA98Rep2TestNaCl, intActivatedTA98Rep3TestNaCl, intActivatedTA98Rep1TestCSO, intActivatedTA98Rep2TestCSO, intActivatedTA98Rep3TestCSO, intActivatedTA100Rep1Positive, intActivatedTA100Rep2Positive, intActivatedTA100Rep3Positive, intActivatedTA100Rep1NegativeNaCl, intActivatedTA100Rep2NegativeNaCl, intActivatedTA100Rep3NegativeNaCl, intActivatedTA100Rep1NegativeCSO, intActivatedTA100Rep2NegativeCSO, intActivatedTA100Rep3NegativeCSO, intActivatedTA100Rep1TestNaCl, intActivatedTA100Rep2TestNaCl, intActivatedTA100Rep3TestNaCl, intActivatedTA100Rep1TestCSO, intActivatedTA100Rep2TestCSO, intActivatedTA100Rep3TestCSO, intActivatedTA1535Rep1Positive, intActivatedTA1535Rep2Positive, intActivatedTA1535Rep3Positive, intActivatedTA1535Rep1NegativeNaCl, intActivatedTA1535Rep2NegativeNaCl, intActivatedTA1535Rep3NegativeNaCl, intActivatedTA1535Rep1NegativeCSO, intActivatedTA1535Rep2NegativeCSO, intActivatedTA1535Rep3NegativeCSO, intActivatedTA1535Rep2TestNaCl, intActivatedTA1535Rep1TestNaCl, intActivatedTA1535Rep3TestNaCl, intActivatedTA1535Rep1TestCSO, intActivatedTA1535Rep2TestCSO, intActivatedTA1535Rep3TestCSO, intActivatedTA1537Rep1Positive, intActivatedTA1537Rep2Positive, intActivatedTA1537Rep3Positive, intActivatedTA1537Rep1NegativeNaCl, intActivatedTA1537Rep2NegativeNaCl, intActivatedTA1537Rep3NegativeNaCl, intActivatedTA1537Rep1NegativeCSO, intActivatedTA1537Rep2NegativeCSO, intActivatedTA1537Rep3NegativeCSO, intActivatedTA1537Rep1TestNaCl, intActivatedTA1537Rep2TestNaCl, intActivatedTA1537Rep3TestNaCl, intActivatedTA1537Rep1TestCSO, intActivatedTA1537Rep2TestCSO, intActivatedTA1537Rep3TestCSO, intActivatedWP2Rep1Positive, intActivatedWP2Rep2Positive, intActivatedWP2Rep3Positive, intActivatedWP2Rep1NegativeNaCl, intActivatedWP2Rep2NegativeNaCl, intActivatedWP2Rep3NegativeNaCl, intActivatedWP2Rep1NegativeCSO, intActivatedWP2Rep2NegativeCSO, intActivatedWP2Rep3NegativeCSO, intActivatedWP2Rep1TestNaCl, intActivatedWP2Rep2TestNaCl, intActivatedWP2Rep3TestNaCl, intActivatedWP2Rep1TestCSO, intActivatedWP2Rep2TestCSO, intActivatedWP2Rep3TestCSO) VALUES (@txtStudyNumber, @intNonActivatedTA98Rep1Positive, @intNonActivatedTA98Rep2Positive, @intNonActivatedTA98Rep3Positive, @intNonActivatedTA98Rep1NegativeNaCl, @intNonActivatedTA98Rep2NegativeNaCl, @intNonActivatedTA98Rep3NegativeNaCl, @intNonActivatedTA98Rep1NegativeCSO, @intNonActivatedTA98Rep2NegativeCSO, @intNonActivatedTA98Rep3NegativeCSO, @intNonActivatedTA98Rep1TestNaCl, @intNonActivatedTA98Rep2TestNaCl, @intNonActivatedTA98Rep3TestNaCl, @intNonActivatedTA98Rep1TestCSO, @intNonActivatedTA98Rep2TestCSO, @intNonActivatedTA98Rep3TestCSO, @intNonActivatedTA100Rep1Positive, @intNonActivatedTA100Rep2Positive, @intNonActivatedTA100Rep3Positive, @intNonActivatedTA100Rep1NegativeNaCl, @intNonActivatedTA100Rep2NegativeNaCl, @intNonActivatedTA100Rep3NegativeNaCl, @intNonActivatedTA100Rep1NegativeCSO, @intNonActivatedTA100Rep2NegativeCSO, @intNonActivatedTA100Rep3NegativeCSO, @intNonActivatedTA100Rep1TestNaCl, @intNonActivatedTA100Rep2TestNaCl, @intNonActivatedTA100Rep3TestNaCl, @intNonActivatedTA100Rep1TestCSO, @intNonActivatedTA100Rep2TestCSO, @intNonActivatedTA100Rep3TestCSO, @intNonActivatedTA1535Rep1Positive, @intNonActivatedTA1535Rep2Positive, @intNonActivatedTA1535Rep3Positive, @intNonActivatedTA1535Rep1NegativeNaCl, @intNonActivatedTA1535Rep2NegativeNaCl, @intNonActivatedTA1535Rep3NegativeNaCl, @intNonActivatedTA1535Rep1NegativeCSO, @intNonActivatedTA1535Rep2NegativeCSO, @intNonActivatedTA1535Rep3NegativeCSO, @intNonActivatedTA1535Rep1TestNaCl, @intNonActivatedTA1535Rep2TestNaCl, @intNonActivatedTA1535Rep3TestNaCl, @intNonActivatedTA1535Rep1TestCSO, @intNonActivatedTA1535Rep2TestCSO, @intNonActivatedTA1535Rep3TestCSO, @intNonActivatedTA1537Rep1Positive, @intNonActivatedTA1537Rep2Positive, @intNonActivatedTA1537Rep3Positive, @intNonActivatedTA1537Rep1NegativeNaCl, @intNonActivatedTA1537Rep2NegativeNaCl, @intNonActivatedTA1537Rep3NegativeNaCl, @intNonActivatedTA1537Rep1NegativeCSO, @intNonActivatedTA1537Rep2NegativeCSO, @intNonActivatedTA1537Rep3NegativeCSO, @intNonActivatedTA1537Rep1TestNaCl, @intNonActivatedTA1537Rep2TestNaCl, @intNonActivatedTA1537Rep3TestNaCl, @intNonActivatedTA1537Rep1TestCSO, @intNonActivatedTA1537Rep2TestCSO, @intNonActivatedTA1537Rep3TestCSO, @intNonActivatedWP2Rep1Positive, @intNonActivatedWP2Rep2Positive, @intNonActivatedWP2Rep3Positive, @intNonActivatedWP2Rep2NegativeNaCl, @intNonActivatedWP2Rep1NegativeNaCl, @intNonActivatedWP2Rep3NegativeNaCl, @intNonActivatedWP2Rep1NegativeCSO, @intNonActivatedWP2Rep2NegativeCSO, @intNonActivatedWP2Rep3NegativeCSO, @intNonActivatedWP2Rep1TestNaCl, @intNonActivatedWP2Rep2TestNaCl, @intNonActivatedWP2Rep3TestNaCl, @intNonActivatedWP2Rep1TestCSO, @intNonActivatedWP2Rep2TestCSO, @intNonActivatedWP2Rep3TestCSO, @intActivatedTA98Rep1Positive, @intActivatedTA98Rep2Positive, @intActivatedTA98Rep3Positive, @intActivatedTA98Rep1NegativeNaCl, @intActivatedTA98Rep2NegativeNaCl, @intActivatedTA98Rep3NegativeNaCl, @intActivatedTA98Rep1NegativeCSO, @intActivatedTA98Rep2NegativeCSO, @intActivatedTA98Rep3NegativeCSO, @intActivatedTA98Rep1TestNaCl, @intActivatedTA98Rep2TestNaCl, @intActivatedTA98Rep3TestNaCl, @intActivatedTA98Rep1TestCSO, @intActivatedTA98Rep2TestCSO, @intActivatedTA98Rep3TestCSO, @intActivatedTA100Rep1Positive, @intActivatedTA100Rep2Positive, @intActivatedTA100Rep3Positive, @intActivatedTA100Rep1NegativeNaCl, @intActivatedTA100Rep2NegativeNaCl, @intActivatedTA100Rep3NegativeNaCl, @intActivatedTA100Rep1NegativeCSO, @intActivatedTA100Rep2NegativeCSO, @intActivatedTA100Rep3NegativeCSO, @intActivatedTA100Rep1TestNaCl, @intActivatedTA100Rep2TestNaCl, @intActivatedTA100Rep3TestNaCl, @intActivatedTA100Rep1TestCSO, @intActivatedTA100Rep2TestCSO, @intActivatedTA100Rep3TestCSO, @intActivatedTA1535Rep1Positive, @intActivatedTA1535Rep2Positive, @intActivatedTA1535Rep3Positive, @intActivatedTA1535Rep1NegativeNaCl, @intActivatedTA1535Rep2NegativeNaCl, @intActivatedTA1535Rep3NegativeNaCl, @intActivatedTA1535Rep1NegativeCSO, @intActivatedTA1535Rep2NegativeCSO, @intActivatedTA1535Rep3NegativeCSO, @intActivatedTA1535Rep2TestNaCl, @intActivatedTA1535Rep1TestNaCl, @intActivatedTA1535Rep3TestNaCl, @intActivatedTA1535Rep1TestCSO, @intActivatedTA1535Rep2TestCSO, @intActivatedTA1535Rep3TestCSO, @intActivatedTA1537Rep1Positive, @intActivatedTA1537Rep2Positive, @intActivatedTA1537Rep3Positive, @intActivatedTA1537Rep1NegativeNaCl, @intActivatedTA1537Rep2NegativeNaCl, @intActivatedTA1537Rep3NegativeNaCl, @intActivatedTA1537Rep1NegativeCSO, @intActivatedTA1537Rep2NegativeCSO, @intActivatedTA1537Rep3NegativeCSO, @intActivatedTA1537Rep1TestNaCl, @intActivatedTA1537Rep2TestNaCl, @intActivatedTA1537Rep3TestNaCl, @intActivatedTA1537Rep1TestCSO, @intActivatedTA1537Rep2TestCSO, @intActivatedTA1537Rep3TestCSO, @intActivatedWP2Rep1Positive, @intActivatedWP2Rep2Positive, @intActivatedWP2Rep3Positive, @intActivatedWP2Rep1NegativeNaCl, @intActivatedWP2Rep2NegativeNaCl, @intActivatedWP2Rep3NegativeNaCl, @intActivatedWP2Rep1NegativeCSO, @intActivatedWP2Rep2NegativeCSO, @intActivatedWP2Rep3NegativeCSO, @intActivatedWP2Rep1TestNaCl, @intActivatedWP2Rep2TestNaCl, @intActivatedWP2Rep3TestNaCl, @intActivatedWP2Rep1TestCSO, @intActivatedWP2Rep2TestCSO, @intActivatedWP2Rep3TestCSO)">
        <SelectParameters>
            <asp:ControlParameter ControlID="StudyDropDownList" Name="StudyDropDownList" 
                PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="intNonActivatedTA98Rep1Positive" />
            <asp:Parameter Name="intNonActivatedTA98Rep2Positive" />
            <asp:Parameter Name="intNonActivatedTA98Rep3Positive" />
            <asp:Parameter Name="intNonActivatedTA98Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep3TestCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep1Positive" />
            <asp:Parameter Name="intNonActivatedTA100Rep2Positive" />
            <asp:Parameter Name="intNonActivatedTA100Rep3Positive" />
            <asp:Parameter Name="intNonActivatedTA100Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep3TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1Positive" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2Positive" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3Positive" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1Positive" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2Positive" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3Positive" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3TestCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep1Positive" />
            <asp:Parameter Name="intNonActivatedWP2Rep2Positive" />
            <asp:Parameter Name="intNonActivatedWP2Rep3Positive" />
            <asp:Parameter Name="intNonActivatedWP2Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep3TestCSO" />
            <asp:Parameter Name="intActivatedTA98Rep1Positive" />
            <asp:Parameter Name="intActivatedTA98Rep2Positive" />
            <asp:Parameter Name="intActivatedTA98Rep3Positive" />
            <asp:Parameter Name="intActivatedTA98Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedTA98Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedTA98Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedTA98Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep1TestCSO" />
            <asp:Parameter Name="intActivatedTA98Rep2TestCSO" />
            <asp:Parameter Name="intActivatedTA98Rep3TestCSO" />
            <asp:Parameter Name="intActivatedTA100Rep1Positive" />
            <asp:Parameter Name="intActivatedTA100Rep2Positive" />
            <asp:Parameter Name="intActivatedTA100Rep3Positive" />
            <asp:Parameter Name="intActivatedTA100Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedTA100Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedTA100Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedTA100Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep1TestCSO" />
            <asp:Parameter Name="intActivatedTA100Rep2TestCSO" />
            <asp:Parameter Name="intActivatedTA100Rep3TestCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep1Positive" />
            <asp:Parameter Name="intActivatedTA1535Rep2Positive" />
            <asp:Parameter Name="intActivatedTA1535Rep3Positive" />
            <asp:Parameter Name="intActivatedTA1535Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep1TestCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep2TestCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep3TestCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep1Positive" />
            <asp:Parameter Name="intActivatedTA1537Rep2Positive" />
            <asp:Parameter Name="intActivatedTA1537Rep3Positive" />
            <asp:Parameter Name="intActivatedTA1537Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep1TestCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep2TestCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep3TestCSO" />
            <asp:Parameter Name="intActivatedWP2Rep1Positive" />
            <asp:Parameter Name="intActivatedWP2Rep2Positive" />
            <asp:Parameter Name="intActivatedWP2Rep3Positive" />
            <asp:Parameter Name="intActivatedWP2Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedWP2Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedWP2Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedWP2Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep1TestCSO" />
            <asp:Parameter Name="intActivatedWP2Rep2TestCSO" />
            <asp:Parameter Name="intActivatedWP2Rep3TestCSO" />
            <asp:ControlParameter ControlID="StudyDropDownList" Name="txtStudyNumber" 
                PropertyName="SelectedValue" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="intNonActivatedTA98Rep2Positive" />
            <asp:Parameter Name="intNonActivatedTA98Rep3Positive" />
            <asp:Parameter Name="intNonActivatedTA98Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA98Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedTA98Rep3TestCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep1Positive" />
            <asp:Parameter Name="intNonActivatedTA100Rep2Positive" />
            <asp:Parameter Name="intNonActivatedTA100Rep3Positive" />
            <asp:Parameter Name="intNonActivatedTA100Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA100Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedTA100Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1Positive" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2Positive" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3Positive" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1535Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1535Rep3TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1Positive" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2Positive" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3Positive" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedTA1537Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedTA1537Rep3TestCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep1Positive" />
            <asp:Parameter Name="intNonActivatedWP2Rep3Positive" />
            <asp:Parameter Name="intNonActivatedWP2Rep2NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep1NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep3NegativeNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep1NegativeCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep2NegativeCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep3NegativeCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep1TestNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep2TestNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep3TestNaCl" />
            <asp:Parameter Name="intNonActivatedWP2Rep1TestCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep2TestCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep3TestCSO" />
            <asp:Parameter Name="intActivatedTA98Rep1Positive" />
            <asp:Parameter Name="intActivatedTA98Rep2Positive" />
            <asp:Parameter Name="intActivatedTA98Rep3Positive" />
            <asp:Parameter Name="intActivatedTA98Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedTA98Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedTA98Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedTA98Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedTA98Rep1TestCSO" />
            <asp:Parameter Name="intActivatedTA98Rep2TestCSO" />
            <asp:Parameter Name="intActivatedTA98Rep3TestCSO" />
            <asp:Parameter Name="intActivatedTA100Rep1Positive" />
            <asp:Parameter Name="intActivatedTA100Rep2Positive" />
            <asp:Parameter Name="intActivatedTA100Rep3Positive" />
            <asp:Parameter Name="intActivatedTA100Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedTA100Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedTA100Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedTA100Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedTA100Rep1TestCSO" />
            <asp:Parameter Name="intActivatedTA100Rep2TestCSO" />
            <asp:Parameter Name="intActivatedTA100Rep3TestCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep1Positive" />
            <asp:Parameter Name="intActivatedTA1535Rep2Positive" />
            <asp:Parameter Name="intActivatedTA1535Rep3Positive" />
            <asp:Parameter Name="intActivatedTA1535Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedTA1535Rep1TestCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep2TestCSO" />
            <asp:Parameter Name="intActivatedTA1535Rep3TestCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep1Positive" />
            <asp:Parameter Name="intActivatedTA1537Rep2Positive" />
            <asp:Parameter Name="intActivatedTA1537Rep3Positive" />
            <asp:Parameter Name="intActivatedTA1537Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedTA1537Rep1TestCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep2TestCSO" />
            <asp:Parameter Name="intActivatedTA1537Rep3TestCSO" />
            <asp:Parameter Name="intActivatedWP2Rep1Positive" />
            <asp:Parameter Name="intActivatedWP2Rep2Positive" />
            <asp:Parameter Name="intActivatedWP2Rep3Positive" />
            <asp:Parameter Name="intActivatedWP2Rep1NegativeNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep2NegativeNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep3NegativeNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep1NegativeCSO" />
            <asp:Parameter Name="intActivatedWP2Rep2NegativeCSO" />
            <asp:Parameter Name="intActivatedWP2Rep3NegativeCSO" />
            <asp:Parameter Name="intActivatedWP2Rep1TestNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep2TestNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep3TestNaCl" />
            <asp:Parameter Name="intActivatedWP2Rep1TestCSO" />
            <asp:Parameter Name="intActivatedWP2Rep2TestCSO" />
            <asp:Parameter Name="intActivatedWP2Rep3TestCSO" />
            <asp:ControlParameter ControlID="StudyDropDownList2" Name="txtStudyNumber" 
                PropertyName="SelectedValue" />
            <asp:Parameter Name="intNonActivatedTA98Rep1Positive" />
            <asp:Parameter Name="intNonActivatedTA100Rep3TestCSO" />
            <asp:Parameter Name="intNonActivatedWP2Rep2Positive" />
        </InsertParameters>
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
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="txtStudyNumber" DataSourceID="SqlDataSource4"
        DefaultMode="Edit">
        <EditItemTemplate>
           
     <table class="info" width="650px">
        <tr>
            <th colspan="2">
                <h1>Ames Test Results</h1>
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
                        <b>Non-activated</b>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Strain
                                </th>
                                <th scope="col">
                                    Replicate
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    CSO
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    CSO
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA98
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="intNonActivatedTA98Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="intNonActivatedTA98Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="intNonActivatedTA98Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator107" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="intNonActivatedTA98Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator108" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="intNonActivatedTA98Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="intNonActivatedTA98Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="intNonActivatedTA98Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator15" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="intNonActivatedTA98Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator109" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="intNonActivatedTA98Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator110" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="intNonActivatedTA98Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator19" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="intNonActivatedTA98Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator23" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="intNonActivatedTA98Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="intNonActivatedTA98Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator111" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="intNonActivatedTA98Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator112" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="intNonActivatedTA98Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA100                                    
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator47" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="intNonActivatedTA100Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator51" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="intNonActivatedTA100Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator55" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="intNonActivatedTA100Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator113" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="intNonActivatedTA100Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator114" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ControlToValidate="intNonActivatedTA100Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator59" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ControlToValidate="intNonActivatedTA100Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator63" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ControlToValidate="intNonActivatedTA100Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator67" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ControlToValidate="intNonActivatedTA100Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator115" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ControlToValidate="intNonActivatedTA100Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator116" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ControlToValidate="intNonActivatedTA100Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator71" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ControlToValidate="intNonActivatedTA100Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator75" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ControlToValidate="intNonActivatedTA100Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator76" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ControlToValidate="intNonActivatedTA100Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator117" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ControlToValidate="intNonActivatedTA100Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator118" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ControlToValidate="intNonActivatedTA100Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1535
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator78" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ControlToValidate="intNonActivatedTA1535Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator79" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ControlToValidate="intNonActivatedTA1535Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator80" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" ControlToValidate="intNonActivatedTA1535Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator119" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" ControlToValidate="intNonActivatedTA1535Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator120" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator35" ControlToValidate="intNonActivatedTA1535Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator81" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator36" ControlToValidate="intNonActivatedTA1535Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator82" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator37" ControlToValidate="intNonActivatedTA1535Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator83" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator38" ControlToValidate="intNonActivatedTA1535Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator121" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator39" ControlToValidate="intNonActivatedTA1535Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator122" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator40" ControlToValidate="intNonActivatedTA1535Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator84" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator41" ControlToValidate="intNonActivatedTA1535Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator85" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator42" ControlToValidate="intNonActivatedTA1535Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator86" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator43" ControlToValidate="intNonActivatedTA1535Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator123" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator44" ControlToValidate="intNonActivatedTA1535Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator124" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator45" ControlToValidate="intNonActivatedTA1535Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1537
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator88" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator46" ControlToValidate="intNonActivatedTA1537Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator89" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator47" ControlToValidate="intNonActivatedTA1537Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator90" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator48" ControlToValidate="intNonActivatedTA1537Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator125" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator49" ControlToValidate="intNonActivatedTA1537Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator126" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator50" ControlToValidate="intNonActivatedTA1537Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator91" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator51" ControlToValidate="intNonActivatedTA1537Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN92" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator52" ControlToValidate="intNonActivatedTA1537Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN93" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator53" ControlToValidate="intNonActivatedTA1537Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN127" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator54" ControlToValidate="intNonActivatedTA1537Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN128" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator55" ControlToValidate="intNonActivatedTA1537Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN94" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator56" ControlToValidate="intNonActivatedTA1537Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN95" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator57" ControlToValidate="intNonActivatedTA1537Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN96" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator58" ControlToValidate="intNonActivatedTA1537Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN129" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator59" ControlToValidate="intNonActivatedTA1537Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN130" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator60" ControlToValidate="intNonActivatedTA1537Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    WP 2 uvrA
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN98" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator61" ControlToValidate="intNonActivatedWP2Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN99" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator62" ControlToValidate="intNonActivatedWP2Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN100" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator63" ControlToValidate="intNonActivatedWP2Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN131" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator64" ControlToValidate="intNonActivatedWP2Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN132" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator65" ControlToValidate="intNonActivatedWP2Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN101" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator66" ControlToValidate="intNonActivatedWP2Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN102" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator67" ControlToValidate="intNonActivatedWP2Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN103" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator68" ControlToValidate="intNonActivatedWP2Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN133" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator69" ControlToValidate="intNonActivatedWP2Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN134" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator70" ControlToValidate="intNonActivatedWP2Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN104" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator71" ControlToValidate="intNonActivatedWP2Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN105" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator72" ControlToValidate="intNonActivatedWP2Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN106" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator73" ControlToValidate="intNonActivatedWP2Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN135" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator74" ControlToValidate="intNonActivatedWP2Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN136" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator75" ControlToValidate="intNonActivatedWP2Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
            </table>
            <br />
            <table class="results" width="650px">
                <tr>
                    <th colspan="2">
                        <b>Activated</b>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Strain
                                </th>
                                <th scope="col">
                                    Replicate
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    CSO
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    CSO
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA98
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator43" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator76" ControlToValidate="intActivatedTA98Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator77" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator77" ControlToValidate="intActivatedTA98Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator87" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator78" ControlToValidate="intActivatedTA98Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator97" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator79" ControlToValidate="intActivatedTA98Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator137" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator80" ControlToValidate="intActivatedTA98Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator138" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator81" ControlToValidate="intActivatedTA98Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator139" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator82" ControlToValidate="intActivatedTA98Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator140" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator83" ControlToValidate="intActivatedTA98Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator141" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator84" ControlToValidate="intActivatedTA98Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator142" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator85" ControlToValidate="intActivatedTA98Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator143" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator86" ControlToValidate="intActivatedTA98Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator144" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator87" ControlToValidate="intActivatedTA98Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator145" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator88" ControlToValidate="intActivatedTA98Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator146" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator89" ControlToValidate="intActivatedTA98Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator147" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator90" ControlToValidate="intActivatedTA98Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA100                                    
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator148" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator91" ControlToValidate="intActivatedTA100Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator149" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator92" ControlToValidate="intActivatedTA100Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator150" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator93" ControlToValidate="intActivatedTA100Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator151" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator94" ControlToValidate="intActivatedTA100Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator152" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator95" ControlToValidate="intActivatedTA100Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator153" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator96" ControlToValidate="intActivatedTA100Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator154" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator97" ControlToValidate="intActivatedTA100Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator155" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator98" ControlToValidate="intActivatedTA100Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator156" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator99" ControlToValidate="intActivatedTA100Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator157" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator100" ControlToValidate="intActivatedTA100Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator158" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator101" ControlToValidate="intActivatedTA100Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator159" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator102" ControlToValidate="intActivatedTA100Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator160" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator103" ControlToValidate="intActivatedTA100Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator161" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator104" ControlToValidate="intActivatedTA100Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator162" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator105" ControlToValidate="intActivatedTA100Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1535
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator163" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator106" ControlToValidate="intActivatedTA1535Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator164" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator107" ControlToValidate="intActivatedTA1535Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator165" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator108" ControlToValidate="intActivatedTA1535Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator166" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator109" ControlToValidate="intActivatedTA1535Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator167" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator110" ControlToValidate="intActivatedTA1535Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator168" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator111" ControlToValidate="intActivatedTA1535Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator169" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator112" ControlToValidate="intActivatedTA1535Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator170" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator113" ControlToValidate="intActivatedTA1535Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator171" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator114" ControlToValidate="intActivatedTA1535Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator172" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator115" ControlToValidate="intActivatedTA1535Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator173" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator116" ControlToValidate="intActivatedTA1535Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator174" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator117" ControlToValidate="intActivatedTA1535Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator175" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator118" ControlToValidate="intActivatedTA1535Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator176" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator119" ControlToValidate="intActivatedTA1535Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator177" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator120" ControlToValidate="intActivatedTA1535Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1537
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator178" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator121" ControlToValidate="intActivatedTA1537Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator179" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator122" ControlToValidate="intActivatedTA1537Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator180" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator123" ControlToValidate="intActivatedTA1537Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator181" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator124" ControlToValidate="intActivatedTA1537Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator182" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator125" ControlToValidate="intActivatedTA1537Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator183" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator126" ControlToValidate="intActivatedTA1537Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator92" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator127" ControlToValidate="intActivatedTA1537Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator93" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator128" ControlToValidate="intActivatedTA1537Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator127" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator129" ControlToValidate="intActivatedTA1537Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator128" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator130" ControlToValidate="intActivatedTA1537Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator94" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator131" ControlToValidate="intActivatedTA1537Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator95" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator132" ControlToValidate="intActivatedTA1537Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator96" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator133" ControlToValidate="intActivatedTA1537Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator129" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator134" ControlToValidate="intActivatedTA1537Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator130" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator135" ControlToValidate="intActivatedTA1537Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    WP 2 uvrA
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator98" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator136" ControlToValidate="intActivatedWP2Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator99" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator137" ControlToValidate="intActivatedWP2Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator100" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator138" ControlToValidate="intActivatedWP2Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator131" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator139" ControlToValidate="intActivatedWP2Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator132" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator140" ControlToValidate="intActivatedWP2Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator101" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator141" ControlToValidate="intActivatedWP2Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator102" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator142" ControlToValidate="intActivatedWP2Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator103" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator143" ControlToValidate="intActivatedWP2Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator133" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator144" ControlToValidate="intActivatedWP2Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator134" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator145" ControlToValidate="intActivatedWP2Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator104" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator146" ControlToValidate="intActivatedWP2Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator105" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator147" ControlToValidate="intActivatedWP2Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator106" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator148" ControlToValidate="intActivatedWP2Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator135" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator149" ControlToValidate="intActivatedWP2Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator136" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator150" ControlToValidate="intActivatedWP2Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                         
                            </tr>
                <tr>
                    <td align="right" colspan="7">
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
            
            <table class="info" width="650px">
        <tr>
            <th colspan="2">
                <h1>Ames Test Results</h1>
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
                        <b>Non-activated</b>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Strain
                                </th>
                                <th scope="col">
                                    Replicate
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    CSO
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    CSO
                                </th>
                            </tr>
                                                       <tr>
                                <td rowspan="3">
                                    TA98
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="intNonActivatedTA98Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="intNonActivatedTA98Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="intNonActivatedTA98Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator107" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="intNonActivatedTA98Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator108" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="intNonActivatedTA98Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="intNonActivatedTA98Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="intNonActivatedTA98Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator15" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="intNonActivatedTA98Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator109" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="intNonActivatedTA98Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator110" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="intNonActivatedTA98Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator19" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="intNonActivatedTA98Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator23" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="intNonActivatedTA98Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="intNonActivatedTA98Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator111" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="intNonActivatedTA98Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator112" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="intNonActivatedTA98Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA100                                    
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator47" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="intNonActivatedTA100Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator51" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="intNonActivatedTA100Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator55" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="intNonActivatedTA100Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator113" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="intNonActivatedTA100Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator114" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ControlToValidate="intNonActivatedTA100Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator59" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ControlToValidate="intNonActivatedTA100Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator63" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ControlToValidate="intNonActivatedTA100Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator67" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ControlToValidate="intNonActivatedTA100Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator115" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ControlToValidate="intNonActivatedTA100Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator116" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ControlToValidate="intNonActivatedTA100Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator71" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ControlToValidate="intNonActivatedTA100Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator75" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ControlToValidate="intNonActivatedTA100Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator76" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ControlToValidate="intNonActivatedTA100Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator117" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ControlToValidate="intNonActivatedTA100Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator118" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ControlToValidate="intNonActivatedTA100Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1535
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator78" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ControlToValidate="intNonActivatedTA1535Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator79" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ControlToValidate="intNonActivatedTA1535Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator80" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" ControlToValidate="intNonActivatedTA1535Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator119" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" ControlToValidate="intNonActivatedTA1535Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator120" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator35" ControlToValidate="intNonActivatedTA1535Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator81" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator36" ControlToValidate="intNonActivatedTA1535Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator82" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator37" ControlToValidate="intNonActivatedTA1535Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator83" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator38" ControlToValidate="intNonActivatedTA1535Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator121" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator39" ControlToValidate="intNonActivatedTA1535Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator122" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator40" ControlToValidate="intNonActivatedTA1535Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator84" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator41" ControlToValidate="intNonActivatedTA1535Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator85" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator42" ControlToValidate="intNonActivatedTA1535Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator86" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator43" ControlToValidate="intNonActivatedTA1535Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator123" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator44" ControlToValidate="intNonActivatedTA1535Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator124" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator45" ControlToValidate="intNonActivatedTA1535Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1537
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator88" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator46" ControlToValidate="intNonActivatedTA1537Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator89" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator47" ControlToValidate="intNonActivatedTA1537Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator90" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator48" ControlToValidate="intNonActivatedTA1537Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator125" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator49" ControlToValidate="intNonActivatedTA1537Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator126" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator50" ControlToValidate="intNonActivatedTA1537Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator91" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator51" ControlToValidate="intNonActivatedTA1537Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN92" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator52" ControlToValidate="intNonActivatedTA1537Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN93" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator53" ControlToValidate="intNonActivatedTA1537Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN127" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator54" ControlToValidate="intNonActivatedTA1537Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN128" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator55" ControlToValidate="intNonActivatedTA1537Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN94" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator56" ControlToValidate="intNonActivatedTA1537Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN95" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator57" ControlToValidate="intNonActivatedTA1537Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN96" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator58" ControlToValidate="intNonActivatedTA1537Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN129" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator59" ControlToValidate="intNonActivatedTA1537Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN130" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator60" ControlToValidate="intNonActivatedTA1537Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    WP 2 uvrA
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN98" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator61" ControlToValidate="intNonActivatedWP2Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN99" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator62" ControlToValidate="intNonActivatedWP2Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN100" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator63" ControlToValidate="intNonActivatedWP2Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN131" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator64" ControlToValidate="intNonActivatedWP2Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN132" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator65" ControlToValidate="intNonActivatedWP2Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN101" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator66" ControlToValidate="intNonActivatedWP2Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN102" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator67" ControlToValidate="intNonActivatedWP2Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN103" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator68" ControlToValidate="intNonActivatedWP2Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN133" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator69" ControlToValidate="intNonActivatedWP2Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN134" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator70" ControlToValidate="intNonActivatedWP2Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN104" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator71" ControlToValidate="intNonActivatedWP2Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN105" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator72" ControlToValidate="intNonActivatedWP2Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN106" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator73" ControlToValidate="intNonActivatedWP2Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN135" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator74" ControlToValidate="intNonActivatedWP2Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN136" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator75" ControlToValidate="intNonActivatedWP2Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
            </table>
            <br />
            <table class="results" width="650px">
                <tr>
                    <th colspan="2">
                        <b>Activated</b>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Strain
                                </th>
                                <th scope="col">
                                    Replicate
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    CSO
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    CSO
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA98
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator43" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator76" ControlToValidate="intActivatedTA98Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator77" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator77" ControlToValidate="intActivatedTA98Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator87" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator78" ControlToValidate="intActivatedTA98Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator97" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator79" ControlToValidate="intActivatedTA98Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator137" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator80" ControlToValidate="intActivatedTA98Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator138" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator81" ControlToValidate="intActivatedTA98Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator139" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator82" ControlToValidate="intActivatedTA98Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator140" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator83" ControlToValidate="intActivatedTA98Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator141" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator84" ControlToValidate="intActivatedTA98Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator142" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator85" ControlToValidate="intActivatedTA98Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator143" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator86" ControlToValidate="intActivatedTA98Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator144" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator87" ControlToValidate="intActivatedTA98Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator145" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator88" ControlToValidate="intActivatedTA98Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator146" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator89" ControlToValidate="intActivatedTA98Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator147" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator90" ControlToValidate="intActivatedTA98Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA100                                    
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator148" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator91" ControlToValidate="intActivatedTA100Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator149" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator92" ControlToValidate="intActivatedTA100Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator150" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator93" ControlToValidate="intActivatedTA100Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator151" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator94" ControlToValidate="intActivatedTA100Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator152" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator95" ControlToValidate="intActivatedTA100Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator153" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator96" ControlToValidate="intActivatedTA100Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator154" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator97" ControlToValidate="intActivatedTA100Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator155" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator98" ControlToValidate="intActivatedTA100Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator156" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator99" ControlToValidate="intActivatedTA100Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator157" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator100" ControlToValidate="intActivatedTA100Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator158" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator101" ControlToValidate="intActivatedTA100Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator159" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator102" ControlToValidate="intActivatedTA100Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator160" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator103" ControlToValidate="intActivatedTA100Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator161" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator104" ControlToValidate="intActivatedTA100Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator162" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator105" ControlToValidate="intActivatedTA100Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1535
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator163" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator106" ControlToValidate="intActivatedTA1535Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator164" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator107" ControlToValidate="intActivatedTA1535Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator165" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator108" ControlToValidate="intActivatedTA1535Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator166" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator109" ControlToValidate="intActivatedTA1535Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator167" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator110" ControlToValidate="intActivatedTA1535Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator168" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator111" ControlToValidate="intActivatedTA1535Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator169" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator112" ControlToValidate="intActivatedTA1535Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator170" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator113" ControlToValidate="intActivatedTA1535Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator171" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator114" ControlToValidate="intActivatedTA1535Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator172" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator115" ControlToValidate="intActivatedTA1535Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator173" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator116" ControlToValidate="intActivatedTA1535Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator174" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator117" ControlToValidate="intActivatedTA1535Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator175" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator118" ControlToValidate="intActivatedTA1535Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator176" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator119" ControlToValidate="intActivatedTA1535Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator177" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator120" ControlToValidate="intActivatedTA1535Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1537
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator178" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator121" ControlToValidate="intActivatedTA1537Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator179" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator122" ControlToValidate="intActivatedTA1537Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator180" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator123" ControlToValidate="intActivatedTA1537Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator181" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator124" ControlToValidate="intActivatedTA1537Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator182" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator125" ControlToValidate="intActivatedTA1537Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator183" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator126" ControlToValidate="intActivatedTA1537Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator92" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator127" ControlToValidate="intActivatedTA1537Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator93" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator128" ControlToValidate="intActivatedTA1537Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator127" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator129" ControlToValidate="intActivatedTA1537Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator128" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator130" ControlToValidate="intActivatedTA1537Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator94" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator131" ControlToValidate="intActivatedTA1537Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator95" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator132" ControlToValidate="intActivatedTA1537Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator96" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator133" ControlToValidate="intActivatedTA1537Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator129" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator134" ControlToValidate="intActivatedTA1537Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator130" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator135" ControlToValidate="intActivatedTA1537Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    WP 2 uvrA
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator98" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator136" ControlToValidate="intActivatedWP2Rep1Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator99" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator137" ControlToValidate="intActivatedWP2Rep1NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator100" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator138" ControlToValidate="intActivatedWP2Rep1NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator131" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator139" ControlToValidate="intActivatedWP2Rep1TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator132" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator140" ControlToValidate="intActivatedWP2Rep1TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator101" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator141" ControlToValidate="intActivatedWP2Rep2Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator102" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator142" ControlToValidate="intActivatedWP2Rep2NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator103" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator143" ControlToValidate="intActivatedWP2Rep2NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator133" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator144" ControlToValidate="intActivatedWP2Rep2TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator134" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator145" ControlToValidate="intActivatedWP2Rep2TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator104" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator146" ControlToValidate="intActivatedWP2Rep3Positive" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator105" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator147" ControlToValidate="intActivatedWP2Rep3NegativeNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator106" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator148" ControlToValidate="intActivatedWP2Rep3NegativeCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator135" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator149" ControlToValidate="intActivatedWP2Rep3TestNaCl" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator136" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator150" ControlToValidate="intActivatedWP2Rep3TestCSO" runat="server" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                               </td>
                         
                            </tr>
                <tr>
  
                    <td align="left" width="75%" colspan="6">
                        To start or restart the workflow for this report, edit the results and click the 
                        &quot;Update and Start Workflow&quot; button&nbsp;
                    </td>
                    <td align="right" width="25%">
                        &nbsp;
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" Text="Save"
                            OnClick="InsertButton_Click" />
                        &nbsp;
                        <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" Text="Cancel"
                            OnClick="InsertCancelButton_Click" />
                    </td>
                </tr>
            
        </InsertItemTemplate>
        <ItemTemplate>
            
            <table class="info" width="650px">
        <tr>
            <th colspan="2">
                <h1>Ames Test Results</h1>
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
        <tr>
            <td align="right">
                Study Sponsor:
            </td>
            <td align="left">
                <asp:TextBox ID="StudySponsorTextBox" runat="server" Enabled="False" Text="No Study Sponsors Linked in DB" />
            </td>
        </tr>
    </table>
    <br />
            <table class="results" width="650px">
                <tr>
                    <th colspan="2">
                        <b>Non-activated</b>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Strain
                                </th>
                                <th scope="col">
                                    Replicate
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    CSO
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    CSO
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA98
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator107" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator108" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator15" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator109" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator110" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator19" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator23" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA98Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator111" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA98Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA98Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator112" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA98Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA100                                    
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator47" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator51" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator55" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator113" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator114" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator59" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator63" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator67" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator115" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator116" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator71" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator75" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA100Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator76" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator117" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA100Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA100Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator118" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA100Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1535
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator78" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator79" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator80" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator119" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator120" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator81" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator82" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator83" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator121" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator122" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator84" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator85" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator86" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator123" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1535Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1535Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator124" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1535Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1537
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator88" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator89" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator90" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator125" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator126" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator91" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN92" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN93" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN127" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN128" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN94" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN95" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN96" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN129" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedTA1537Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedTA1537Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN130" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedTA1537Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    WP 2 uvrA
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN98" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN99" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep1NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN100" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep1TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN131" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep1TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN132" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN101" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN102" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep2NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN103" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep2TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN133" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep2TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN134" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3Positive" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN104" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3NegativeNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN105" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNonActivatedWP2Rep3NegativeCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN106" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep3TestNaCl" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN135" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intNonActivatedWP2Rep3TestCSO" runat="server" Text='<%# Bind("intNonActivatedWP2Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidatorN136" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNonActivatedWP2Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
            </table>
            <br />
            <table class="results" width="650px">
                <tr>
                    <th colspan="2">
                        <b>Activated</b>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <table width="700" border="1" class="data_entry">
                            <tr>
                                <th scope="col">
                                    Strain
                                </th>
                                <th scope="col">
                                    Replicate
                                </th>
                                <th scope="col">
                                    Positive<br />
                                    Control
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Control<br />
                                    CSO
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    NaCl
                                </th>
                                <th scope="col">
                                    Test<br />
                                    Article<br />
                                    CSO
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA98
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator43" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator77" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator87" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator97" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator137" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator138" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator139" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator140" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator141" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator142" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA98Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator143" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator144" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA98Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator145" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA98Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator146" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA98Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA98Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator147" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA98Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA100                                    
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator148" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator149" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator150" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator151" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator152" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator153" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator154" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator155" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator156" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator157" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA100Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator158" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator159" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA100Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator160" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA100Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator161" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA100Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA100Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator162" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA100Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1535
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator163" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator164" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator165" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator166" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator167" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator168" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator169" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator170" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator171" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator172" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA1535Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator173" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator174" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1535Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator175" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1535Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator176" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1535Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA1535Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator177" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1535Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    TA1537
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator178" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator179" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator180" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator181" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator182" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator183" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator92" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator93" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator127" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator128" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3Positive" runat="server" Text='<%# Bind("intActivatedTA1537Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator94" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator95" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedTA1537Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator96" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedTA1537Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator129" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedTA1537Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedTA1537Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator130" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedTA1537Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td rowspan="3">
                                    WP 2 uvrA
                                </td>
                                <td >
                                    1
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep1Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator98" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep1NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator99" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep1NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep1NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator100" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep1TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep1TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator131" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep1TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep1TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator132" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep1TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td >
                                    2
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep2Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator101" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep2NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator102" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep2NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep2NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator103" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep2TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep2TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator133" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep2TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep2TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator134" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep2TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                            <tr>
                                <td >
                                    3
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3Positive" runat="server" Text='<%# Bind("intActivatedWP2Rep3Positive") %>' />
                                    <asp:CompareValidator ID="CompareValidator104" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3Positive" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3NegativeNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep3NegativeNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator105" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3NegativeNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intActivatedWP2Rep3NegativeCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep3NegativeCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator106" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3NegativeCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep3TestNaCl" runat="server" Text='<%# Bind("intActivatedWP2Rep3TestNaCl") %>' />
                                    <asp:CompareValidator ID="CompareValidator135" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3TestNaCl" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td >
                                    <asp:TextBox ID="intActivatedWP2Rep3TestCSO" runat="server" Text='<%# Bind("intActivatedWP2Rep3TestCSO") %>' />
                                    <asp:CompareValidator ID="CompareValidator136" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intActivatedWP2Rep3TestCSO" Display="Dynamic"></asp:CompareValidator>
                                </td>
                         
                            </tr>
                 <tr>
                    <td align="right" colspan="2">
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" Text="Insert"
                            OnClick="InsertButton_Click" />
                        &nbsp;
                        <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" Text="Cancel"
                            OnClick="InsertCancelButton_Click" />
                    </td>
                </tr>
            
        </ItemTemplate>
        <EmptyDataTemplate>
            <table>
                <tr>
                    <th colspan="2">
                        <h1>Ames Test Results</h1>
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
