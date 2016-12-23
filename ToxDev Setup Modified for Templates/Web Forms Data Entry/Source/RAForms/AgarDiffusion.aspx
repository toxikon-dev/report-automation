<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgarDiffusion.aspx.vb" Inherits="RAForms.AgarDiffusion, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>


<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Agar Diffusion</title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server" title="Agar Diffusion">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>"
        
        SelectCommand="SELECT [txtStudyNumber] FROM [tblAgarDiffusion] UNION SELECT txtEmpty FROM [tblEmpty] ORDER BY 1">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT tblProjects.txtStudyNumber FROM tblProjects WHERE tblProjects.txtProtocolNumber in (select txtProtocolName from tblProtocols where txtWebForm = 'AgarDiffusion.aspx') EXCEPT SELECT tblAgarDiffusion.txtStudyNumber FROM tblAgarDiffusion UNION SELECT txtEmpty FROM tblEmpty ORDER BY 1">
    
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ToxikonConnectionString %>" 
        
        SelectCommand="SELECT tblUsers.txtFullName, tblUsers.txtEmail, tblAgarDiffusion.txtStudyNumber, tblAgarDiffusion.txtPositiveControl, tblAgarDiffusion.txtNegativeControl, tblAgarDiffusion.txtHowPrepared, tblAgarDiffusion.txtOtherPrep, 
            tblAgarDiffusion.dteExperimentDate_0hrs, tblAgarDiffusion.dteExperimentDate_24hrs, tblAgarDiffusion.dteExperimentDate_48hrs, 
            tblAgarDiffusion.txtTestAZone_0hrs, tblAgarDiffusion.intTestAGrade_0hrs, tblAgarDiffusion.txtTestBZone_0hrs, tblAgarDiffusion.intTestBGrade_0hrs, tblAgarDiffusion.txtTestCZone_0hrs, tblAgarDiffusion.intTestCGrade_0hrs, tblAgarDiffusion.txtTestAZone_24hrs, tblAgarDiffusion.intTestAGrade_24hrs, tblAgarDiffusion.txtTestBZone_24hrs, tblAgarDiffusion.intTestBGrade_24hrs, tblAgarDiffusion.txtTestCZone_24hrs, tblAgarDiffusion.intTestCGrade_24hrs, tblAgarDiffusion.txtTestAZone_48hrs, tblAgarDiffusion.intTestAGrade_48hrs, tblAgarDiffusion.txtTestBZone_48hrs, tblAgarDiffusion.intTestBGrade_48hrs, tblAgarDiffusion.txtTestCZone_48hrs, tblAgarDiffusion.intTestCGrade_48hrs, 
            tblAgarDiffusion.txtPositiveAZone_0hrs, tblAgarDiffusion.intPositiveAGrade_0hrs, tblAgarDiffusion.txtPositiveBZone_0hrs, tblAgarDiffusion.intPositiveBGrade_0hrs, tblAgarDiffusion.txtPositiveCZone_0hrs, tblAgarDiffusion.intPositiveCGrade_0hrs, tblAgarDiffusion.txtPositiveAZone_24hrs, tblAgarDiffusion.intPositiveAGrade_24hrs, tblAgarDiffusion.txtPositiveBZone_24hrs, tblAgarDiffusion.intPositiveBGrade_24hrs, tblAgarDiffusion.txtPositiveCZone_24hrs, tblAgarDiffusion.intPositiveCGrade_24hrs, tblAgarDiffusion.txtPositiveAZone_48hrs, tblAgarDiffusion.intPositiveAGrade_48hrs, tblAgarDiffusion.txtPositiveBZone_48hrs, tblAgarDiffusion.intPositiveBGrade_48hrs, tblAgarDiffusion.txtPositiveCZone_48hrs, tblAgarDiffusion.intPositiveCGrade_48hrs, 
            tblAgarDiffusion.txtNegativeDirectAZone_0hrs, tblAgarDiffusion.intNegativeDirectAGrade_0hrs, tblAgarDiffusion.txtNegativeDirectBZone_0hrs, tblAgarDiffusion.intNegativeDirectBGrade_0hrs, tblAgarDiffusion.txtNegativeDirectCZone_0hrs, tblAgarDiffusion.intNegativeDirectCGrade_0hrs, tblAgarDiffusion.txtNegativeDirectAZone_24hrs, tblAgarDiffusion.intNegativeDirectAGrade_24hrs, tblAgarDiffusion.txtNegativeDirectBZone_24hrs, tblAgarDiffusion.intNegativeDirectBGrade_24hrs, tblAgarDiffusion.txtNegativeDirectCZone_24hrs, tblAgarDiffusion.intNegativeDirectCGrade_24hrs, tblAgarDiffusion.txtNegativeDirectAZone_48hrs, tblAgarDiffusion.intNegativeDirectAGrade_48hrs, tblAgarDiffusion.txtNegativeDirectBZone_48hrs, tblAgarDiffusion.intNegativeDirectBGrade_48hrs, tblAgarDiffusion.txtNegativeDirectCZone_48hrs, tblAgarDiffusion.intNegativeDirectCGrade_48hrs, tblAgarDiffusion.txtNegativeDiscAZone_0hrs, tblAgarDiffusion.intNegativeDiscAGrade_0hrs, tblAgarDiffusion.txtNegativeDiscBZone_0hrs, tblAgarDiffusion.intNegativeDiscBGrade_0hrs, tblAgarDiffusion.txtNegativeDiscCZone_0hrs, tblAgarDiffusion.intNegativeDiscCGrade_0hrs, tblAgarDiffusion.txtNegativeDiscAZone_24hrs, tblAgarDiffusion.intNegativeDiscAGrade_24hrs, tblAgarDiffusion.txtNegativeDiscBZone_24hrs, tblAgarDiffusion.intNegativeDiscBGrade_24hrs, tblAgarDiffusion.txtNegativeDiscCZone_24hrs, tblAgarDiffusion.intNegativeDiscCGrade_24hrs, tblAgarDiffusion.txtNegativeDiscAZone_48hrs, tblAgarDiffusion.intNegativeDiscAGrade_48hrs, tblAgarDiffusion.txtNegativeDiscBZone_48hrs, tblAgarDiffusion.intNegativeDiscBGrade_48hrs, tblAgarDiffusion.txtNegativeDiscCZone_48hrs, tblAgarDiffusion.intNegativeDiscCGrade_48hrs 
            FROM tblProjects INNER JOIN tblUsers ON tblProjects.intStudyDirector = tblUsers.intUserID INNER JOIN tblAgarDiffusion ON tblProjects.txtStudyNumber = tblAgarDiffusion.txtStudyNumber WHERE (tblAgarDiffusion.txtStudyNumber = @StudyDropDownList)" 
        
        UpdateCommand="UPDATE tblAgarDiffusion SET txtPositiveControl = @txtPositiveControl, txtNegativeControl = @txtNegativeControl, txtHowPrepared = @txtHowPrepared, txtOtherPrep = @txtOtherPrep,
            txtTestAZone_0hrs = @txtTestAZone_0hrs, intTestAGrade_0hrs = @intTestAGrade_0hrs, txtTestBZone_0hrs = @txtTestBZone_0hrs, intTestBGrade_0hrs = @intTestBGrade_0hrs, txtTestCZone_0hrs = @txtTestCZone_0hrs, intTestCGrade_0hrs = @intTestCGrade_0hrs, txtTestAZone_24hrs = @txtTestAZone_24hrs, intTestAGrade_24hrs = @intTestAGrade_24hrs, txtTestBZone_24hrs = @txtTestBZone_24hrs, intTestBGrade_24hrs = @intTestBGrade_24hrs, txtTestCZone_24hrs = @txtTestCZone_24hrs, intTestCGrade_24hrs = @intTestCGrade_24hrs, txtTestAZone_48hrs = @txtTestAZone_48hrs, intTestAGrade_48hrs = @intTestAGrade_48hrs, txtTestBZone_48hrs = @txtTestBZone_48hrs, intTestBGrade_48hrs = @intTestBGrade_48hrs, txtTestCZone_48hrs = @txtTestCZone_48hrs, intTestCGrade_48hrs = @intTestCGrade_48hrs, 
            txtPositiveAZone_0hrs = @txtPositiveAZone_0hrs, intPositiveAGrade_0hrs = @intPositiveAGrade_0hrs, txtPositiveBZone_0hrs = @txtPositiveBZone_0hrs, intPositiveBGrade_0hrs = @intPositiveBGrade_0hrs, txtPositiveCZone_0hrs = @txtPositiveCZone_0hrs, intPositiveCGrade_0hrs = @intPositiveCGrade_0hrs, txtPositiveAZone_24hrs = @txtPositiveAZone_24hrs, intPositiveAGrade_24hrs = @intPositiveAGrade_24hrs, txtPositiveBZone_24hrs = @txtPositiveBZone_24hrs, intPositiveBGrade_24hrs = @intPositiveBGrade_24hrs, txtPositiveCZone_24hrs = @txtPositiveCZone_24hrs, intPositiveCGrade_24hrs = @intPositiveCGrade_24hrs, txtPositiveAZone_48hrs = @txtPositiveAZone_48hrs, intPositiveAGrade_48hrs = @intPositiveAGrade_48hrs, txtPositiveBZone_48hrs = @txtPositiveBZone_48hrs, intPositiveBGrade_48hrs = @intPositiveBGrade_48hrs, txtPositiveCZone_48hrs = @txtPositiveCZone_48hrs, intPositiveCGrade_48hrs = @intPositiveCGrade_48hrs, 
            txtNegativeDirectAZone_0hrs = @txtNegativeDirectAZone_0hrs, intNegativeDirectAGrade_0hrs = @intNegativeDirectAGrade_0hrs, txtNegativeDirectBZone_0hrs = @txtNegativeDirectBZone_0hrs, intNegativeDirectBGrade_0hrs = @intNegativeDirectBGrade_0hrs, txtNegativeDirectCZone_0hrs = @txtNegativeDirectCZone_0hrs, intNegativeDirectCGrade_0hrs = @intNegativeDirectCGrade_0hrs, txtNegativeDirectAZone_24hrs = @txtNegativeDirectAZone_24hrs, intNegativeDirectAGrade_24hrs = @intNegativeDirectAGrade_24hrs, txtNegativeDirectBZone_24hrs = @txtNegativeDirectBZone_24hrs, intNegativeDirectBGrade_24hrs = @intNegativeDirectBGrade_24hrs, txtNegativeDirectCZone_24hrs = @txtNegativeDirectCZone_24hrs, intNegativeDirectCGrade_24hrs = @intNegativeDirectCGrade_24hrs, txtNegativeDirectAZone_48hrs = @txtNegativeDirectAZone_48hrs, intNegativeDirectAGrade_48hrs = @intNegativeDirectAGrade_48hrs, txtNegativeDirectBZone_48hrs = @txtNegativeDirectBZone_48hrs, intNegativeDirectBGrade_48hrs = @intNegativeDirectBGrade_48hrs, txtNegativeDirectCZone_48hrs = @txtNegativeDirectCZone_48hrs, intNegativeDirectCGrade_48hrs = @intNegativeDirectCGrade_48hrs, 
            txtNegativeDiscAZone_0hrs = @txtNegativeDiscAZone_0hrs, intNegativeDiscAGrade_0hrs = @intNegativeDiscAGrade_0hrs, txtNegativeDiscBZone_0hrs = @txtNegativeDiscBZone_0hrs, intNegativeDiscBGrade_0hrs = @intNegativeDiscBGrade_0hrs, txtNegativeDiscCZone_0hrs = @txtNegativeDiscCZone_0hrs, intNegativeDiscCGrade_0hrs = @intNegativeDiscCGrade_0hrs, txtNegativeDiscAZone_24hrs = @txtNegativeDiscAZone_24hrs, intNegativeDiscAGrade_24hrs = @intNegativeDiscAGrade_24hrs, txtNegativeDiscBZone_24hrs = @txtNegativeDiscBZone_24hrs, intNegativeDiscBGrade_24hrs = @intNegativeDiscBGrade_24hrs, txtNegativeDiscCZone_24hrs = @txtNegativeDiscCZone_24hrs, intNegativeDiscCGrade_24hrs = @intNegativeDiscCGrade_24hrs, txtNegativeDiscAZone_48hrs = @txtNegativeDiscAZone_48hrs, intNegativeDiscAGrade_48hrs = @intNegativeDiscAGrade_48hrs, txtNegativeDiscBZone_48hrs = @txtNegativeDiscBZone_48hrs, intNegativeDiscBGrade_48hrs = @intNegativeDiscBGrade_48hrs, txtNegativeDiscCZone_48hrs = @txtNegativeDiscCZone_48hrs, intNegativeDiscCGrade_48hrs = @intNegativeDiscCGrade_48hrs, 
            dteExperimentDate_0hrs = @dteExperimentDate_0hrs, dteExperimentDate_24hrs = @dteExperimentDate_24hrs, dteExperimentDate_48hrs = @dteExperimentDate_48hrs WHERE (txtStudyNumber = @txtStudyNumber)" 
        
        InsertCommand="INSERT INTO tblAgarDiffusion 
            (txtPositiveControl, txtNegativeControl, txtHowPrepared, txtOtherPrep, 
            txtTestAZone_0hrs, intTestAGrade_0hrs, txtTestBZone_0hrs, intTestBGrade_0hrs, txtTestCZone_0hrs, intTestCGrade_0hrs, txtTestAZone_24hrs, intTestAGrade_24hrs, txtTestBZone_24hrs, intTestBGrade_24hrs, txtTestCZone_24hrs, intTestCGrade_24hrs, txtTestAZone_48hrs, intTestAGrade_48hrs, txtTestBZone_48hrs, intTestBGrade_48hrs, txtTestCZone_48hrs, intTestCGrade_48hrs, 
            txtPositiveAZone_0hrs, intPositiveAGrade_0hrs, txtPositiveBZone_0hrs, intPositiveBGrade_0hrs, txtPositiveCZone_0hrs, intPositiveCGrade_0hrs, txtPositiveAZone_24hrs, intPositiveAGrade_24hrs, txtPositiveBZone_24hrs, intPositiveBGrade_24hrs, txtPositiveCZone_24hrs, intPositiveCGrade_24hrs, txtPositiveAZone_48hrs, intPositiveAGrade_48hrs, intPositiveBGrade_48hrs, txtPositiveBZone_48hrs, txtPositiveCZone_48hrs, intPositiveCGrade_48hrs, txtNegativeDirectAZone_0hrs, intNegativeDirectAGrade_0hrs, txtNegativeDirectBZone_0hrs, intNegativeDirectBGrade_0hrs, txtNegativeDirectCZone_0hrs, txtNegativeDirectAZone_24hrs, intNegativeDirectCGrade_0hrs, intNegativeDirectAGrade_24hrs, txtNegativeDirectBZone_24hrs, intNegativeDirectBGrade_24hrs, txtNegativeDirectCZone_24hrs, intNegativeDirectCGrade_24hrs, txtNegativeDirectAZone_48hrs, intNegativeDirectAGrade_48hrs, txtNegativeDirectBZone_48hrs, intNegativeDirectBGrade_48hrs, txtNegativeDirectCZone_48hrs, intNegativeDirectCGrade_48hrs, txtNegativeDiscAZone_0hrs, intNegativeDiscAGrade_0hrs, txtNegativeDiscBZone_0hrs, intNegativeDiscBGrade_0hrs, txtNegativeDiscCZone_0hrs, intNegativeDiscCGrade_0hrs, txtNegativeDiscAZone_24hrs, intNegativeDiscAGrade_24hrs, txtNegativeDiscBZone_24hrs, intNegativeDiscBGrade_24hrs, txtNegativeDiscCZone_24hrs, intNegativeDiscCGrade_24hrs, txtNegativeDiscAZone_48hrs, intNegativeDiscAGrade_48hrs, txtNegativeDiscBZone_48hrs, intNegativeDiscBGrade_48hrs, txtNegativeDiscCZone_48hrs, intNegativeDiscCGrade_48hrs,  
            txtStudyNumber, dteExperimentDate_0hrs, dteExperimentDate_24hrs, dteExperimentDate_48hrs) 
            VALUES (@txtPositiveControl, @txtNegativeControl, @txtHowPrepared, @txtOtherPrep,  
            @txtTestAZone_0hrs, @intTestAGrade_0hrs, @txtTestBZone_0hrs, @intTestBGrade_0hrs, @txtTestCZone_0hrs, @intTestCGrade_0hrs, @txtTestAZone_24hrs, @intTestAGrade_24hrs, @txtTestBZone_24hrs, @intTestBGrade_24hrs, @txtTestCZone_24hrs, @intTestCGrade_24hrs, @txtTestAZone_48hrs, @intTestAGrade_48hrs, @txtTestBZone_48hrs, @intTestBGrade_48hrs, @txtTestCZone_48hrs, @intTestCGrade_48hrs, 
            @txtPositiveAZone_0hrs, @intPositiveAGrade_0hrs, @txtPositiveBZone_0hrs, @intPositiveBGrade_0hrs, @txtPositiveCZone_0hrs, @intPositiveCGrade_0hrs, @txtPositiveAZone_24hrs, @intPositiveAGrade_24hrs, @txtPositiveBZone_24hrs, @intPositiveBGrade_24hrs, @txtPositiveCZone_24hrs, @intPositiveCGrade_24hrs, @txtPositiveAZone_48hrs, @intPositiveAGrade_48hrs, @intPositiveBGrade_48hrs, @txtPositiveBZone_48hrs, @txtPositiveCZone_48hrs, @intPositiveCGrade_48hrs, @txtNegativeDirectAZone_0hrs, @intNegativeDirectAGrade_0hrs, @txtNegativeDirectBZone_0hrs, @intNegativeDirectBGrade_0hrs, @txtNegativeDirectCZone_0hrs, @txtNegativeDirectAZone_24hrs, @intNegativeDirectCGrade_0hrs, @intNegativeDirectAGrade_24hrs, @txtNegativeDirectBZone_24hrs, @intNegativeDirectBGrade_24hrs, @txtNegativeDirectCZone_24hrs, @intNegativeDirectCGrade_24hrs, @txtNegativeDirectAZone_48hrs, @intNegativeDirectAGrade_48hrs, @txtNegativeDirectBZone_48hrs, @intNegativeDirectBGrade_48hrs, @txtNegativeDirectCZone_48hrs, @intNegativeDirectCGrade_48hrs, @txtNegativeDiscAZone_0hrs, @intNegativeDiscAGrade_0hrs, @txtNegativeDiscBZone_0hrs, @intNegativeDiscBGrade_0hrs, @txtNegativeDiscCZone_0hrs, @intNegativeDiscCGrade_0hrs, @txtNegativeDiscAZone_24hrs, @intNegativeDiscAGrade_24hrs, @txtNegativeDiscBZone_24hrs, @intNegativeDiscBGrade_24hrs, @txtNegativeDiscCZone_24hrs, @intNegativeDiscCGrade_24hrs, @txtNegativeDiscAZone_48hrs, @intNegativeDiscAGrade_48hrs, @txtNegativeDiscBZone_48hrs, @intNegativeDiscBGrade_48hrs, @txtNegativeDiscCZone_48hrs, @intNegativeDiscCGrade_48hrs,
            @txtStudyNumber, @dteExperimentDate_0hrs, @dteExperimentDate_24hrs, @dteExperimentDate_48hrs)">
        
        <SelectParameters>
            <asp:ControlParameter ControlID="StudyDropDownList" Name="StudyDropDownList" 
                PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="txtPositiveControl" />
            <asp:Parameter Name="txtNegativeControl" />
            <asp:Parameter Name="txtHowPrepared" />
            <asp:Parameter Name="txtOtherPrep" />
            <asp:Parameter Name="txtLiquidApplied" />
            <asp:Parameter Name="txtTestAZone_0hrs" />
            <asp:Parameter Name="intTestAGrade_0hrs" />
            <asp:Parameter Name="txtTestBZone_0hrs" />
            <asp:Parameter Name="intTestBGrade_0hrs" />
            <asp:Parameter Name="txtTestCZone_0hrs" />
            <asp:Parameter Name="intTestCGrade_0hrs" />
            <asp:Parameter Name="txtTestAZone_24hrs" />
            <asp:Parameter Name="intTestAGrade_24hrs" />
            <asp:Parameter Name="txtTestBZone_24hrs" />
            <asp:Parameter Name="intTestBGrade_24hrs" />
            <asp:Parameter Name="txtTestCZone_24hrs" />
            <asp:Parameter Name="intTestCGrade_24hrs" />
            <asp:Parameter Name="txtTestAZone_48hrs" />
            <asp:Parameter Name="intTestAGrade_48hrs" />
            <asp:Parameter Name="txtTestBZone_48hrs" />
            <asp:Parameter Name="intTestBGrade_48hrs" />
            <asp:Parameter Name="txtTestCZone_48hrs" />
            <asp:Parameter Name="intTestCGrade_48hrs" />
            <asp:Parameter Name="txtPositiveAZone_0hrs" />
            <asp:Parameter Name="intPositiveAGrade_0hrs" />
            <asp:Parameter Name="txtPositiveBZone_0hrs" />
            <asp:Parameter Name="intPositiveBGrade_0hrs" />
            <asp:Parameter Name="txtPositiveCZone_0hrs" />
            <asp:Parameter Name="intPositiveCGrade_0hrs" />
            <asp:Parameter Name="txtPositiveAZone_24hrs" />
            <asp:Parameter Name="intPositiveAGrade_24hrs" />
            <asp:Parameter Name="txtPositiveBZone_24hrs" />
            <asp:Parameter Name="intPositiveBGrade_24hrs" />
            <asp:Parameter Name="txtPositiveCZone_24hrs" />
            <asp:Parameter Name="intPositiveCGrade_24hrs" />
            <asp:Parameter Name="txtPositiveAZone_48hrs" />
            <asp:Parameter Name="intPositiveAGrade_48hrs" />
            <asp:Parameter Name="txtPositiveBZone_48hrs" />
            <asp:Parameter Name="intPositiveBGrade_48hrs" />
            <asp:Parameter Name="txtPositiveCZone_48hrs" />
            <asp:Parameter Name="intPositiveCGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDirectAZone_0hrs" />
            <asp:Parameter Name="intNegativeDirectAGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDirectBZone_0hrs" />
            <asp:Parameter Name="intNegativeDirectBGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDirectCZone_0hrs" />
            <asp:Parameter Name="intNegativeDirectCGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDirectAZone_24hrs" />
            <asp:Parameter Name="intNegativeDirectAGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDirectBZone_24hrs" />
            <asp:Parameter Name="intNegativeDirectBGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDirectCZone_24hrs" />
            <asp:Parameter Name="intNegativeDirectCGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDirectAZone_48hrs" />
            <asp:Parameter Name="intNegativeDirectAGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDirectBZone_48hrs" />
            <asp:Parameter Name="intNegativeDirectBGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDirectCZone_48hrs" />
            <asp:Parameter Name="intNegativeDirectCGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDiscAZone_0hrs" />
            <asp:Parameter Name="intNegativeDiscAGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDiscBZone_0hrs" />
            <asp:Parameter Name="intNegativeDiscBGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDiscCZone_0hrs" />
            <asp:Parameter Name="intNegativeDiscCGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDiscAZone_24hrs" />
            <asp:Parameter Name="intNegativeDiscAGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDiscBZone_24hrs" />
            <asp:Parameter Name="intNegativeDiscBGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDiscCZone_24hrs" />
            <asp:Parameter Name="intNegativeDiscCGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDiscAZone_48hrs" />
            <asp:Parameter Name="intNegativeDiscAGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDiscBZone_48hrs" />
            <asp:Parameter Name="intNegativeDiscBGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDiscCZone_48hrs" />
            <asp:Parameter Name="intNegativeDiscCGrade_48hrs" />
            <asp:ControlParameter ControlID="StudyDropDownList" Name="txtStudyNumber" 
                PropertyName="SelectedValue" />
            <asp:Parameter Name="dteExperimentDate_0hrs" />
            <asp:Parameter Name="dteExperimentDate_24hrs" />
            <asp:Parameter Name="dteExperimentDate_48hrs" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="txtPositiveControl" />
            <asp:Parameter Name="txtNegativeControl" />
            <asp:Parameter Name="txtHowPrepared" />
            <asp:Parameter Name="txtOtherPrep" />
            <asp:Parameter Name="txtLiquidApplied" />
            <asp:Parameter Name="txtTestAZone_0hrs" />
            <asp:Parameter Name="intTestAGrade_0hrs" />
            <asp:Parameter Name="txtTestBZone_0hrs" />
            <asp:Parameter Name="intTestBGrade_0hrs" />
            <asp:Parameter Name="txtTestCZone_0hrs" />
            <asp:Parameter Name="intTestCGrade_0hrs" />
            <asp:Parameter Name="txtTestAZone_24hrs" />
            <asp:Parameter Name="intTestAGrade_24hrs" />
            <asp:Parameter Name="txtTestBZone_24hrs" />
            <asp:Parameter Name="intTestBGrade_24hrs" />
            <asp:Parameter Name="txtTestCZone_24hrs" />
            <asp:Parameter Name="intTestCGrade_24hrs" />
            <asp:Parameter Name="txtTestAZone_48hrs" />
            <asp:Parameter Name="intTestAGrade_48hrs" />
            <asp:Parameter Name="txtTestBZone_48hrs" />
            <asp:Parameter Name="intTestBGrade_48hrs" />
            <asp:Parameter Name="txtTestCZone_48hrs" />
            <asp:Parameter Name="intTestCGrade_48hrs" />
            <asp:Parameter Name="txtPositiveAZone_0hrs" />
            <asp:Parameter Name="intPositiveAGrade_0hrs" />
            <asp:Parameter Name="txtPositiveBZone_0hrs" />
            <asp:Parameter Name="intPositiveBGrade_0hrs" />
            <asp:Parameter Name="txtPositiveCZone_0hrs" />
            <asp:Parameter Name="intPositiveCGrade_0hrs" />
            <asp:Parameter Name="txtPositiveAZone_24hrs" />
            <asp:Parameter Name="intPositiveAGrade_24hrs" />
            <asp:Parameter Name="txtPositiveBZone_24hrs" />
            <asp:Parameter Name="intPositiveBGrade_24hrs" />
            <asp:Parameter Name="txtPositiveCZone_24hrs" />
            <asp:Parameter Name="intPositiveCGrade_24hrs" />
            <asp:Parameter Name="txtPositiveAZone_48hrs" />
            <asp:Parameter Name="intPositiveAGrade_48hrs" />
            <asp:Parameter Name="txtPositiveBZone_48hrs" />
            <asp:Parameter Name="intPositiveBGrade_48hrs" />
            <asp:Parameter Name="txtPositiveCZone_48hrs" />
            <asp:Parameter Name="intPositiveCGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDirectAZone_0hrs" />
            <asp:Parameter Name="intNegativeDirectAGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDirectBZone_0hrs" />
            <asp:Parameter Name="intNegativeDirectBGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDirectCZone_0hrs" />
            <asp:Parameter Name="intNegativeDirectCGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDirectAZone_24hrs" />
            <asp:Parameter Name="intNegativeDirectAGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDirectBZone_24hrs" />
            <asp:Parameter Name="intNegativeDirectBGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDirectCZone_24hrs" />
            <asp:Parameter Name="intNegativeDirectCGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDirectAZone_48hrs" />
            <asp:Parameter Name="intNegativeDirectAGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDirectBZone_48hrs" />
            <asp:Parameter Name="intNegativeDirectBGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDirectCZone_48hrs" />
            <asp:Parameter Name="intNegativeDirectCGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDiscAZone_0hrs" />
            <asp:Parameter Name="intNegativeDiscAGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDiscBZone_0hrs" />
            <asp:Parameter Name="intNegativeDiscBGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDiscCZone_0hrs" />
            <asp:Parameter Name="intNegativeDiscCGrade_0hrs" />
            <asp:Parameter Name="txtNegativeDiscAZone_24hrs" />
            <asp:Parameter Name="intNegativeDiscAGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDiscBZone_24hrs" />
            <asp:Parameter Name="intNegativeDiscBGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDiscCZone_24hrs" />
            <asp:Parameter Name="intNegativeDiscCGrade_24hrs" />
            <asp:Parameter Name="txtNegativeDiscAZone_48hrs" />
            <asp:Parameter Name="intNegativeDiscAGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDiscBZone_48hrs" />
            <asp:Parameter Name="intNegativeDiscBGrade_48hrs" />
            <asp:Parameter Name="txtNegativeDiscCZone_48hrs" />
            <asp:Parameter Name="intNegativeDiscCGrade_48hrs" />
            <asp:ControlParameter ControlID="StudyDropDownList2" Name="txtStudyNumber" 
                PropertyName="SelectedValue" />
            <asp:Parameter Name="dteExperimentDate_0hrs" />
            <asp:Parameter Name="dteExperimentDate_24hrs" />
            <asp:Parameter Name="dteExperimentDate_48hrs" />
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
                <h1>Agar Diffusion</h1>
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
                        Positive Control:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtPositiveControlTextBox" runat="server" Text='<%# Bind("txtPositiveControl") %>' MaxLength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Negative Control:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtNegativeControlTextBox" runat="server" Text='<%# Bind("txtNegativeControl") %>' maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        How Prepared:
                    </td>
                    <td align="left" width="50%">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            SelectedValue='<%# Bind("txtHowPrepared") %>'>
                            <asp:ListItem>tested as supplied</asp:ListItem>
                            <asp:ListItem>cut into three squares</asp:ListItem>
                            <asp:ListItem>cut into small pieces</asp:ListItem>
                            <asp:ListItem>liquid applied</asp:ListItem>
                            <asp:ListItem>other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Other Preparation:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtOtherTextBox" runat="server" Text='<%# Bind("txtOtherPrep") %>' maxlength="50" /> 
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
                                    
                                </th>
                                <th scope="col">
                                    Positive
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Direct
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Disc
                                </th>
                                <th scope="col">
                                    Test
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_0hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_0hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px"/>
							        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    0
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_0hrs" runat="server" Text='<%# Bind("txtPositiveAZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestAZone_0hrs" runat="server" Text='<%# bind("txtTestAZone_0hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_0hrs" runat="server" Text='<%# Bind("intPositiveAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator40" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator41" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator42" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                
                                    <asp:TextBox ID="intTestAGrade_0hrs" runat="server" Text='<%# bind("intTestAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator51" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_0hrs" runat="server" Text='<%# Bind("txtPositiveBZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestBZone_0hrs" runat="server" Text='<%# bind("txtTestBZone_0hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_0hrs" runat="server" Text='<%# Bind("intPositiveBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator44" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator45" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator46" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                     <asp:TextBox ID="intTestBGrade_0hrs" runat="server" Text='<%# bind("intTestBGrade_0hrs") %>' />
                                     <asp:CompareValidator ID="CompareValidator47" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_0hrs" runat="server" Text='<%# Bind("txtPositiveCZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscCZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDiscCZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestCZone_0hrs" runat="server" Text='<%# bind("txtTestCZone_0hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_0hrs" runat="server" Text='<%# Bind("intPositiveCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator48" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator49" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator50" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                 <td>
                                    <asp:TextBox ID="intTestCGrade_0hrs" runat="server" Text='<%# bind("intTestCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator43" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                               
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_24hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_24hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    24
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_24hrs" runat="server" Text='<%# Bind("txtPositiveAZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestAZone_24hrs" runat="server" Text='<%# Bind("txtTestAZone_24hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_24hrs" runat="server" Text='<%# Bind("intPositiveAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator52" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator53" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator54" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestAGrade_24hrs" runat="server" Text='<%# Bind("intTestAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_24hrs" runat="server" Text='<%# Bind("txtPositiveBZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestBZone_24hrs" runat="server" Text='<%# Bind("txtTestBZone_24hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_24hrs" runat="server" Text='<%# Bind("intPositiveBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator56" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator57" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator58" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestBGrade_24hrs" runat="server" Text='<%# Bind("intTestBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator23" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_24hrs" runat="server" Text='<%# Bind("txtPositiveCZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscCZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDiscCZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestCZone_24hrs" runat="server" Text='<%# Bind("txtTestCZone_24hrs") %>'  maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_24hrs" runat="server" Text='<%# Bind("intPositiveCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator60" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator61" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator62" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                     <asp:TextBox ID="intTestCGrade_24hrs" runat="server" Text='<%# Bind("intTestCGrade_24hrs") %>'  />
                                      <asp:CompareValidator ID="CompareValidator19" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_48hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_48hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    48
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_48hrs" runat="server" Text='<%# Bind("txtPositiveAZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestAZone_48hrs" runat="server" Text='<%# Bind("txtTestAZone_48hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_48hrs" runat="server" Text='<%# Bind("intPositiveAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator64" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator65" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator66" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestAGrade_48hrs" runat="server" Text='<%# Bind("intTestAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator15" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_48hrs" runat="server" Text='<%# Bind("txtPositiveBZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestBZone_48hrs" runat="server" Text='<%# Bind("txtTestBZone_48hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_48hrs" runat="server" Text='<%# Bind("intPositiveBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator68" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator69" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator70" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestBGrade_48hrs" runat="server" Text='<%# Bind("intTestBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_48hrs" runat="server" Text='<%# Bind("txtPositiveCZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscCZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDiscCZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestCZone_48hrs" runat="server" Text='<%# Bind("txtTestCZone_48hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_48hrs" runat="server" Text='<%# Bind("intPositiveCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator72" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator73" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator74" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestCGrade_48hrs" runat="server" Text='<%# Bind("intTestCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <asp:Button ID="Button2" runat="server" CausesValidation="True" 
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
                <h1>Agar Diffusion</h1>
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
                        Positive Control:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtPositiveControlTextBox" runat="server" Text='<%# Bind("txtPositiveControl") %>' maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Negative Control:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtNegativeControlTextBox" runat="server" Text='<%# Bind("txtNegativeControl") %>' maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        How Prepared:
                    </td>
                    <td align="left" width="50%">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            SelectedValue='<%# Bind("txtHowPrepared") %>'>
                            <asp:ListItem>tested as supplied</asp:ListItem>
                            <asp:ListItem>cut into three squares</asp:ListItem>
                            <asp:ListItem>cut into small pieces</asp:ListItem>
                            <asp:ListItem>liquid applied</asp:ListItem>
                            <asp:ListItem>other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Other Preparation:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtOtherTextBox" runat="server" Text='<%# Bind("txtOtherPrep") %>' maxlength="50" /> 
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
                                    
                                </th>
                                <th scope="col">
                                    Positive
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Direct
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Disc
                                </th>
                                <th scope="col">
                                    Test
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_0hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_0hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px"/>
							        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    0
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_0hrs" runat="server" Text='<%# Bind("txtPositiveAZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestAZone_0hrs" runat="server" Text='<%# bind("txtTestAZone_0hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_0hrs" runat="server" Text='<%# Bind("intPositiveAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator40" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator41" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator42" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                
                                    <asp:TextBox ID="intTestAGrade_0hrs" runat="server" Text='<%# bind("intTestAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator51" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_0hrs" runat="server" Text='<%# Bind("txtPositiveBZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestBZone_0hrs" runat="server" Text='<%# bind("txtTestBZone_0hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_0hrs" runat="server" Text='<%# Bind("intPositiveBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator44" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator45" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator46" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                     <asp:TextBox ID="intTestBGrade_0hrs" runat="server" Text='<%# bind("intTestBGrade_0hrs") %>' />
                                     <asp:CompareValidator ID="CompareValidator47" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_0hrs" runat="server" Text='<%# Bind("txtPositiveCZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscCZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDiscCZone_0hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestCZone_0hrs" runat="server" Text='<%# bind("txtTestCZone_0hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_0hrs" runat="server" Text='<%# Bind("intPositiveCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator48" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator49" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator50" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                 <td>
                                    <asp:TextBox ID="intTestCGrade_0hrs" runat="server" Text='<%# bind("intTestCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator43" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                               
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_24hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_24hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    24
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_24hrs" runat="server" Text='<%# Bind("txtPositiveAZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestAZone_24hrs" runat="server" Text='<%# Bind("txtTestAZone_24hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_24hrs" runat="server" Text='<%# Bind("intPositiveAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator52" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator53" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator54" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestAGrade_24hrs" runat="server" Text='<%# Bind("intTestAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_24hrs" runat="server" Text='<%# Bind("txtPositiveBZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestBZone_24hrs" runat="server" Text='<%# Bind("txtTestBZone_24hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_24hrs" runat="server" Text='<%# Bind("intPositiveBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator56" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator57" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator58" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestBGrade_24hrs" runat="server" Text='<%# Bind("intTestBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator23" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_24hrs" runat="server" Text='<%# Bind("txtPositiveCZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscCZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDiscCZone_24hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestCZone_24hrs" runat="server" Text='<%# Bind("txtTestCZone_24hrs") %>'  maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_24hrs" runat="server" Text='<%# Bind("intPositiveCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator60" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator61" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator62" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                     <asp:TextBox ID="intTestCGrade_24hrs" runat="server" Text='<%# Bind("intTestCGrade_24hrs") %>'  />
                                      <asp:CompareValidator ID="CompareValidator19" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_48hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_48hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    48
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_48hrs" runat="server" Text='<%# Bind("txtPositiveAZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestAZone_48hrs" runat="server" Text='<%# Bind("txtTestAZone_48hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_48hrs" runat="server" Text='<%# Bind("intPositiveAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator64" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator65" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator66" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestAGrade_48hrs" runat="server" Text='<%# Bind("intTestAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator15" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_48hrs" runat="server" Text='<%# Bind("txtPositiveBZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestBZone_48hrs" runat="server" Text='<%# Bind("txtTestBZone_48hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_48hrs" runat="server" Text='<%# Bind("intPositiveBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator68" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator69" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator70" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestBGrade_48hrs" runat="server" Text='<%# Bind("intTestBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_48hrs" runat="server" Text='<%# Bind("txtPositiveCZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscCZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDiscCZone_48hrs") %>' maxlength="10" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTestCZone_48hrs" runat="server" Text='<%# Bind("txtTestCZone_48hrs") %>' maxlength="10" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_48hrs" runat="server" Text='<%# Bind("intPositiveCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator72" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator73" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator74" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intTestCGrade_48hrs" runat="server" Text='<%# Bind("intTestCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="left" width="50%">
                        To start or restart the workflow for this report, edit the results and click the 
                        &quot;Update and Start Workflow&quot; button&nbsp;
                    </td>
                    <td align="right" width="50%">
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" Text="Save"
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
            
            <table class="info" width="650px">
        <tr>
            <th colspan="2">
                <h1>Agar Diffusion</h1>
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
                        <b>Test Results</b>
                    </th>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Positive Control:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtPositiveControlTextBox" runat="server" Text='<%# Bind("txtPositiveControl") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Negative Control:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtNegativeControlTextBox" runat="server" Text='<%# Bind("txtNegativeControl") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Tested as Supplied:
                    </td>
                    <td align="left" width="50%">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("txtTestedAsSupplied") %>'>
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" Selected="True" />
                        </asp:RadioButtonList> 
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Cut Into Three Sqaures:
                    </td>
                    <td align="left" width="50%">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("txtCutIntoThreeSquares") %>'>
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" Selected="True" />
                        </asp:RadioButtonList> 
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Cut Into Small Pieces:
                    </td>
                    <td align="left" width="50%">
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("txtCutIntoSmallPieces") %>'>
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" Selected="True" />
                        </asp:RadioButtonList> 
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Liquid Applied:
                    </td>
                    <td align="left" width="50%">
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("txtLiquidApplied") %>'>
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" Selected="True" />
                        </asp:RadioButtonList> 
                    </td>
                </tr>
                <tr>
                    <td align="right" width="50%">
                        Other:
                    </td>
                    <td align="left" width="50%">
                        <asp:TextBox ID="txtOtherTextBox" runat="server" Text='<%# Bind("txtOther") %>' /> (?)
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
                                    
                                </th>
                                <th scope="col">
                                    Positive
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Direct
                                </th>
                                <th scope="col">
                                    Negative<br />
                                    Disc
                                </th>
                                <th scope="col">
                                    Test
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_0hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_0hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px"/>
							        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_0hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    0
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_0hrs" runat="server" Text='<%# Bind("txtPositiveAZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveAZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectAZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDiscAZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestA_0hrsTextBox" runat="server" Text="N/A" Enabled="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_0hrs" runat="server" Text='<%# Bind("intPositiveAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator40" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator41" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator42" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_0hrs" runat="server" Text='<%# Bind("txtPositiveBZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator8" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveBZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator9" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectBZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator10" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDiscBZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestB_0hrsTextBox" runat="server" Text="N/A" Enabled="false" />
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_0hrs" runat="server" Text='<%# Bind("intPositiveBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator44" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator45" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator46" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_0hrs" runat="server" Text='<%# Bind("txtPositiveCZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator12" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveCZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_0hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator13" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectCZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCZone_0hrs" runat="server" Text='<%# Bind("intNegativeDiscCZone_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator14" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCZone_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestC_0hrsTextBox" runat="server" Text="N/A" Enabled="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_0hrs" runat="server" Text='<%# Bind("intPositiveCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator48" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator49" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_0hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_0hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator50" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_0hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_24hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_24hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_24hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    24
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_24hrs" runat="server" Text='<%# Bind("txtPositiveAZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator16" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveAZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator17" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectAZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator18" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDiscAZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestA_24hrsTextBox" runat="server" Text="N/A" Enabled="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_24hrs" runat="server" Text='<%# Bind("intPositiveAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator52" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator53" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator54" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_24hrs" runat="server" Text='<%# Bind("txtPositiveBZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator20" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveBZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator21" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectBZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator22" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDiscBZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestB_24hrsTextBox" runat="server" Text="N/A" Enabled="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_24hrs" runat="server" Text='<%# Bind("intPositiveBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator56" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator57" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator58" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_24hrs" runat="server" Text='<%# Bind("txtPositiveCZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator24" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveCZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_24hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator25" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectCZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCZone_24hrs" runat="server" Text='<%# Bind("intNegativeDiscCZone_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator26" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCZone_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestC_24hrsTextBox" runat="server" Text="N/A" Enabled="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_24hrs" runat="server" Text='<%# Bind("intPositiveCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator60" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator61" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_24hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_24hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator62" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_24hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:TextBox ID="dteExperimentDate_48hrsTextBox" runat="server" Text='<%# Bind("dteExperimentDate_48hrs","{0:MM/dd/yyyy}") %>' ToolTip="Format: mm/dd/yyyy or mm-dd-yyyy or mm/dd/yy or mm-dd-yy" width="75px" />
							        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Invalid date" Operator="DataTypeCheck" Type="Date" ControlToValidate="dteExperimentDate_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="6">
                                    48
                                </td>
                                <td rowspan="2">
                                    A
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveAZone_48hrs" runat="server" Text='<%# Bind("txtPositiveAZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator28" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveAZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectAZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectAZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator29" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectAZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscAZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDiscAZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator30" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDiscAZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestA_48hrsTextBox" runat="server" Text='<%# Bind("intTestA_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator31" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestA_48hrsTextBox" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveAGrade_48hrs" runat="server" Text='<%# Bind("intPositiveAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator64" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectAGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator65" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscAGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscAGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator66" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscAGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    B
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveBZone_48hrs" runat="server" Text='<%# Bind("txtPositiveBZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator32" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveBZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectBZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectBZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator33" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectBZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDiscBZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDiscBZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator34" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDiscBZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestB_48hrsBZone" runat="server" Text='<%# Bind("intTestB_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator35" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestB_48hrsBZone" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveBGrade_48hrs" runat="server" Text='<%# Bind("intPositiveBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator68" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectBGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator69" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscBGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscBGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator70" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscBGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    C
                                </td>
                                <td>
                                    Zone
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPositiveCZone_48hrs" runat="server" Text='<%# Bind("txtPositiveCZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator36" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtPositiveCZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNegativeDirectCZone_48hrs" runat="server" Text='<%# Bind("txtNegativeDirectCZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator37" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtNegativeDirectCZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCZone_48hrs" runat="server" Text='<%# Bind("intNegativeDiscCZone_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator38" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCZone_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="intTestC_48hrsCZone" runat="server" Text='<%# Bind("intTestC_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator39" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intTestC_48hrsCZone" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Grade
                                </td>
                                <td>
                                    <asp:TextBox ID="intPositiveCGrade_48hrs" runat="server" Text='<%# Bind("intPositiveCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator72" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intPositiveCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDirectCGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDirectCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator73" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDirectCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="intNegativeDiscCGrade_48hrs" runat="server" Text='<%# Bind("intNegativeDiscCGrade_48hrs") %>' />
                                    <asp:CompareValidator ID="CompareValidator74" runat="server" ErrorMessage="Invalid format. Please enter a number." ToolTip="Enter an integer." Operator="DataTypeCheck" Type="Integer" ControlToValidate="intNegativeDiscCGrade_48hrs" Display="Dynamic"></asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
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
            </table>
            <br />
        </ItemTemplate>
        <EmptyDataTemplate>
            <table>
                <tr>
                    <th colspan="2">
                        <h1>Agar Diffusion</h1>
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
