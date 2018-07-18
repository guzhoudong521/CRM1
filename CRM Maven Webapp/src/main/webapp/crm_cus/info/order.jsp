<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath %>">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户开发计划</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>

</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;历史订单
    <hr class="hr1" />
  </div>
  <div class="operation_button">
    <a href="#" title="返回" onclick="back()">返回</a>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" class="table_show txt">
        <tr>
          <td width="100" align="center">客户编号：</td>
          <td width="200">KH071202001</td>
          <td width="100" align="center">客户名称：</td>
          <td width="200">聪海信息科技有限公司</td>
        </tr>
  </table>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="5%"><input type="checkbox" class="check-all"/></th>
          <th width="15%">订单编号</th>
          <th width="15%">日期</th>
          <th width="30%">送货地址</th>
          <th width="10%">状态</th>
          <th width="20%">操作</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><input type="checkbox" /></td>
          <td>13445</td>
          <td>2013-12-10</td>
          <td>北京海淀区劳动路205号</td>
          <td>完成</td>
          <td><img title="查看明细" src="images/document.ico" class="op_button" onclick="to('crm_cus/info/order_detail.jsp')" /></td>
        </tr>
      </tbody>
    </table>
  </div>
  <div class="position"> 
  	共59条记录&nbsp;每页10条&nbsp;第1页/共5页 
    <a href="#" title="首页">&laquo;首页</a><a href="#" title="上一页">&laquo; 上一页</a> <a href="#" class="number current" title="1">1</a> <a href="#" class="number" title="2">2</a> <a href="#" class="number" title="3">3</a> <a href="#" class="number" title="4">4</a> <a href="#" title="下一页">下一页&raquo;</a><a href="#" title="末页">末页&raquo;</a> 转到&nbsp;
    <input value="1" size="2" />
    &nbsp;页<a href="#">GO</a>
    </li>
  </div>
</div>
</body>
</html>
