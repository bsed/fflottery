﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="activelist.aspx.cs" Inherits="Lottery.Web.report.activelist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <title>盈利彩票</title>
    <script type="text/javascript" src="/statics/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/statics/global.js"></script>
    <script type="text/javascript" src="/statics/layer/layer.min.js"></script>
    
    <script type="text/javascript" src="/statics/json/LotAndSmalldata.js"></script>
    <script type="text/javascript" src="/statics/sytle/js/EM.tools.js"></script>
    
    
    <script type="text/javascript">
        var itemid = joinValue('itemid');
        var pagesize = 16;
        var page = thispage();
        $(document).ready(function () {
            $i('d1').value = GetDateStr(0);
            $i('d2').value = GetDateStr(1);
            ajaxList(page);
        });
        function ajaxList(currentpage) {
            if (currentpage != null)
                page = currentpage;
            var index = emLoading();
            $.ajax({
                type: "get",
                dataType: "json",
                data: "page=" + currentpage + "&pagesize=" + pagesize + "&clienttime=" + Math.random(),
                url: "/ajax/ajaxActive.aspx?oper=ajaxActiveRecord" + itemid + "&issoft=0",
                error: function (XmlHttpRequest, textStatus, errorThrown) { emAlert("亲！页面过期,请刷新页面!"); },
                success: function (d) {
                    switch (d.result) {
                        case '-1':
                            emAlert(d.returnval);
                            top.window.location = '/login.html';
                            break;
                        case '0':
                            emAlert(d.returnval);
                            break;
                        case '1':
                            $("#ajaxList").setTemplateElement("tplList", null, { filter_data: true });
                            $("#ajaxList").processTemplate(d);
                            $("#ajaxPageBar").html(d.pagebar);
                            break;
                    }
                    closeload(index);
                }
            });
        }
        function ajaxSearch() {
            itemid = "&d1=" + $('#d1').val() + "&d2=" + $('#d2').val();
            ajaxList(1);
        }
    </script>
</head>
<body>
    <div class='selectmain'>
        <div class='selectarea'>
            <span>查询时间：</span>
            <input id="d1" type="text" onclick="WdatePicker({el:'d1'})" class="input-1" />
            <span>至</span>
            <input id="d2" type="text" onclick="WdatePicker({el:'d2'})" class="input-1" />
            <input type="button" class="btn-1" value="查询" onclick="ajaxSearch();" />
        </div>
    </div>
    <div>
        <div id="ajaxList" style="width: 100%; margin: 0; padding: 0">
        </div>
        <div id="ajaxPageBar">
        </div>
    </div>
    <textarea class="template" id="tplList" rows="1" cols="1" style="display: none">
<table width="100%" class="table-1" border="0" cellpadding="0" cellspacing="0">
<tr>
<th align="center" width="50"><div align="center">编号</div></th>
<th align="center" width="150"><div align="center">会员帐号</div></th>
<th align="center" width="150"><div align="center">活动类型</div></th>
<th align="center" width="150"><div align="center">赠送金额</div></th>
<th align="center" width="200"><div align="center">赠送时间</div></th>
<th align="center" width="200"><div align="center">活动备注</div></th>
<th align="center" width="*"></th>
</tr>
{#foreach $T.table as record}
<tr>
<td align="center"><div align="center">{$T.record.rowid}</div></td>
<td align="center"><div align="center">{$T.record.username}</div></td>
<td align="center"><div align="center">{$T.record.activename}</div></td>
<td align="center"><div align="center">{formatCurrency($T.record.inmoney)}</div></td>
<td align="center"><div align="center">{$T.record.stime}</div></td>
<td align="center"><div align="center">{$T.record.remark}</div></td>
<td align="center"></td>
</tr>
{#/for}
</table>
</textarea>
</body>
</html>
