﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPower.aspx.cs" Inherits="Lottery.Admin.adminPower" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="noindex, nofollow" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>设置权限</title>
    <script type="text/javascript" src="/_libs/jquery.tools.pack.js"></script>
    <script type="text/javascript" src="/statics/global.js"></script>
    <link type="text/css" rel="stylesheet" href="/statics/global.css" />
    <link href="/statics/admin/css/pop.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/statics/admin/js/common.js"></script>
</head>
<body>
    <div class="popup-body">
        <form id="form1" runat="server">
        <asp:Literal ID="ltAdminSetting" runat="server"></asp:Literal>
        <div class="popup-actions">
            <input id="chkall" name="chkall" type="checkbox" value="on" onclick="CheckAll()" />
            全选&nbsp;
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保 存" CssClass="btn btn-primary" />
            <asp:HiddenField ID="hfAdminId" runat="server" />
        </div>
        </form>
    </div>
    <script type="text/javascript">        _jcms_SetDialogTitle();</script>
</body>
</html>