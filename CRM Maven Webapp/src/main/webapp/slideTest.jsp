<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<title>slide</title>
</head>

<body>
<div style="padding:5px;">
<div>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list">
<thead>
	<tr>
    	<td width="10%"><input type="checkbox" class="check-all" /></td>
          <td width="10%">编号</td>
          <td width="10%">客户名称</td>
          <td width="15%">概要</td>
          <td width="10%">联系人</td>
          <td width="15%">联系电话</td>
          <td width="15%">创建时间</td>
          <td width="15%">操作</td>
    </tr>
	
</thead>
<tbody>
	<tr>
    <td><input type="checkbox" /></td>
    <td>1</td>
    <td><a href="#">水电费水电费</a></td>
    <td>撒地方</td>
    <td>撒大声</td>
    <td>随碟附送</td>
    <td>等等是的范德萨</td>
    <td><img title="指派" src="../images/user.ico" class="op_button" onclick="to('opp_dispatch.html')" /> <img title="编辑" src="../images/hammer_screwdriver.png" class="op_button" onclick="to('opp_edit.html')" /> <img title="删除" src="../images/cross.png" class="op_button close" /></td>
  </tr>
  <tr>
   <td><input type="checkbox" /></td>
          <td>1</td>
          <td><a href="#">睿智数码</a></td>
          <td>采购笔记本电脑意向</td>
          <td>刘先生</td>
          <td>撒旦的</td>
          <td>2007-12-6</td>
          <td><img title="指派" src="../images/user.ico" class="op_button" onclick="to('opp_dispatch.html')" /> <img title="编辑" src="../images/hammer_screwdriver.png" class="op_button" onclick="to('opp_edit.html')" /> <img title="删除" src="../images/cross.png" class="op_button close" /></td>
  </tr>
  
  <tr>
    <td><input type="checkbox" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td><img title="指派" src="../images/user.ico" class="op_button" onclick="to('opp_dispatch.html')" /> <img title="编辑" src="../images/hammer_screwdriver.png" class="op_button" onclick="to('opp_edit.html')" /> <img title="删除" src="../images/cross.png" class="op_button close" /></td>
  </tr>
 </tbody>
</table>




<div align="center">
	<div>第一行 <a href="#" class="closed">关闭</a></div>
    <div>第二行 <a href="#" class="closed">关闭</a></div>
    <div>第三行 <a href="#" class="closed">关闭</a></div>
    <div>第四行 <a href="#" class="closed">关闭</a></div>
</div>
</div>
</div>
</body>
</html>
