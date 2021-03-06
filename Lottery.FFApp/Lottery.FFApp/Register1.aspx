﻿<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Register1.aspx.cs" Inherits="Lottery.WebApp.Register1" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <title>盈利彩票</title>
    <link rel="stylesheet" type="text/css" href="/statics/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/statics/css/login.css" />
    <script type="text/javascript" src="/statics/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/statics/global.js"></script>
    <script type="text/javascript" src="/statics/js/jquery_json.js"></script>
    <script src="/statics/layer/layer.js" type="text/javascript"></script>
    <script src="/statics/js/EM.tools.js" type="text/javascript"></script>
    <script src="/statics/js/page.register.js" type="text/javascript"></script>
</head>
<body style="background: url(/statics/img/bg.jpg) no-repeat repeat #23293f;">
    <div class="login">
        <a href="javascript:;" class="add-fav">
            <img src="/statics/img/add_fav.png" alt=""></a>
        <!-- 浮动栏 start -->
        <!-- #include file="/statics/include/lefter.html" -->
        <!-- 浮动栏 end -->
        <div class="login-center">
            <div class="slogan">
                <img src="/statics/img/slogan2.png" alt="" /></div>
            <form class="login-form">
            <div class="form-group">
                <label class="control-label">
                    <i class="icon icon-user"></i>
                    <input id="txtUserName" type="text" value="" class="form-control" placeholder="请输入用户名" /></label>
            </div>
            <div class="form-group">
                <label class="control-label">
                    <i class="icon icon-key"></i>
                    <input id="txtAdminPass1" type="text" value="" class="form-control" placeholder="请输入密码" /></label>
            </div>
            <div class="form-group">
                <label class="control-label">
                    <i class="icon icon-key"></i>
                    <input id="txtAdminPass2" type="text" value="" class="form-control" placeholder="请再次输入密码" /></label>
            </div>
            <div class="form-group">
                <label class="control-label">
                    <i class="icon icon-code"></i>
                    <input id="txtUserCode" type="text" value="" class="form-control" placeholder="请输入验证码" /></label>
                <img id="imgCode" onclick="_jcms_GetRefreshCode('imgCode',30);" alt="" class="code" />
            </div>
            <div class="btn-group">
                <input type="button" value="提 &nbsp; 交" onclick="ajaxLogin();" class="btn btn-reg" />
                <input type="button" value="重 &nbsp; 置" onclick="ajaxClear()" class="btn btn-reset" />
            </div>
            </form>
            <div class="other-acts">
                <a href="javascript:;" onclick="ajaxPagePop('服务条款','1000px','600px','/html/service.html')"
                    class="btn"><i class="icon icon-doc"></i>用户协议</a> <a href="#" class="btn"><i class="icon icon-lock">
                    </i>忘记密码</a> <a href="#" class="btn"><i class="icon icon-msg"></i>联系客服</a>
            </div>
            <div class="copyright">
                Copyright © 2017 非凡娱乐 版权所有 All Rights Reserved.</div>
        </div>
    </div>
</body>
</html>
