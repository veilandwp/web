﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="web_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录</title>
    <style type="text/css">
        body
        {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #538e0e;
            overflow: hidden;
        }
        .STYLE1
        {
            color: #FFF;
            font-size: 16px;
            font-family: 微软雅黑;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="235" background="../images/login_03.gif">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td height="53">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="394" height="53" background="../images/login_05.gif">
                                        &nbsp;
                                    </td>
                                    <td width="206" background="../images/login_06.gif">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="16%" height="25">
                                                    <div align="right">
                                                        <span class="STYLE1">用户</span></div>
                                                </td>
                                                <td width="57%" height="25">
                                                    <div align="center">
                                                        <asp:TextBox runat="Server" type="text" style="width: 105px; height: 18px; background-color: #a3fa40;
                                                            border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff"></asp:TextBox>
                                                    </div>
                                                </td>
                                                <td width="27%" height="25">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25">
                                                    <div align="right">
                                                        <span class="STYLE1">密码</span></div>
                                                </td>
                                                <td height="25">
                                                    <div align="center">
                                                        <asp:TextBox runat="Server" TextMode=Password  style="width: 105px; height: 18px; background-color: #a3fa40;
                                                            border: solid 1px #7dbad7; font-size: 12px; color: #6cd0ff"></asp:TextBox>
                                                    </div>
                                                </td>
                                                <td height="25">
                                                    <div align="left">
                                                        <a href="">
                                                            <img src="../images/dl.gif" width="49" height="18" border="0"></a></div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="362" background="../images/login_07.gif">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="213" background="../images/login_08.gif">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>