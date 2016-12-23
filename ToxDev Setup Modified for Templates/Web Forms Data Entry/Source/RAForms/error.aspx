<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="error.aspx.vb" Inherits="RAForms.ErrorPage, RAForms, Version=1.0.0.0, Culture=neutral, PublickeyToken=6c87ecf3329e4b47" %>

<%@ Register Assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.DynamicData" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error</title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
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
            <td align="center"  colspan="2" style="text-align: center; background-color: #ccc; font-size: 14px; padding: 5px;">
                <b>ERROR</b></td>
        </tr>
        <tr>
            <td align="right" width="50%">
                User:
            </td>
            <td align="left">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                Message:
            </td>
            <td align="left">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                Page:
            </td>
            <td align="left">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                Database:</td>
            <td align="left">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    
    </form>
</body>
</html>
