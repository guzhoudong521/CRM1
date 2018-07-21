<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>营销管理</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script>
     function saveUser(){
          $("#form").submit();
     }
</script>
</head>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：公告管理&nbsp;&gt;&nbsp;公告阅读
    <hr class="hr1" />
  </div>
  <div class="operation_button">
  	<a href="notice/getAll.action" title="返回" onclick="back()">返回</a>
  </div>
  <div class="out_bg">
    <div class="in_bg">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td>标题：</td>
          <td><input type="text" value="${title}" disabled="disabled"/></td>
        </tr>
        <tr>
          <td>内容：</td>
          <td><textarea rows="5" cols="40" name="content" disabled="disabled">${content}</textarea></td>
        </tr>
      </table>
    </div>
  </div>
</div>
</body>
</html>
