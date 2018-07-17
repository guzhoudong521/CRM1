<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>服务管理</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript">
   function add(){
      $("#addform").submit();
   }
</script>
</head>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户服务管理&nbsp;&gt;&nbsp;服务创建
    <hr class="hr1" />
  </div>
  <div class="operation_button">
    <a href="javascript:add()" title="保存">保存</a>
  </div>
  <div class="out_bg">
    <div class="in_bg">
    <form action="service/add.action" method="post" id="addform">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td width="126">创建人</td>
          <td width="442"><input type="text"  value="${sessionScope.curruser.uname}" disabled="disabled" /></td>
          <td>创建时间</td>
          <td><input type="text"  value='<fmt:formatDate value="<%=new Date() %>" />' disabled="disabled" /></td>
        </tr>
        <tr>
          <td>状态</td>
          <td>新创建</td>
          <td>客户</td>
          <td><input name="customer" type="text" /></td>
        </tr>
        <tr>
          <td>服务类型</td>
          <td><select name="servicetyle">
				<option>请选择...</option>
				<option value="咨询">咨询</option>
				<option value="投诉">投诉</option>
				<option value="建议">建议</option>
			</select></td>
		  <td valign="top">服务请求</td>
          <td><input  type="submit" value="提交"><textarea rows="6" cols="36" name="des"/></textarea></td>
        </tr>
      </table>
     </form>
    </div>
  </div>
</div>
</body>
</html>
