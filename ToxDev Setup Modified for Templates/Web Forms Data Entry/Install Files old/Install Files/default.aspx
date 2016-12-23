<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="_default.aspx.vb" Inherits="RAForms.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 217px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td class="style1">
                <img alt="Logo" height="29" width="142" src="logo.jpg" />
            </td>
            <td align="right" style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                Report Automation
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td align="right" style="width: 400px; font-weight: bold; font-size: medium; font-style: italic">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: large" class="style1">
                Test Request Forms</td>
            <td style="width: 400px; font-weight: bold; font-size: medium; font-style: italic; text-align: left;">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="samples.aspx">Open</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="font-size: large" class="style1">
                Studies</td>
            <td style="width: 400px; font-weight: bold; font-size: medium; font-style: italic; text-align: left;">
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="studies.aspx">Open</asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
