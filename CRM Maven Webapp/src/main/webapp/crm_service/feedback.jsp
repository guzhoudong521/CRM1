<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>服务管理</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript">
   function save(){
      $("#resultForm").submit();
   }
</script>
</head>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户服务管理&nbsp;&gt;&nbsp;<a href="feedback_list.html">服务反馈列表</a>&nbsp;&gt;&nbsp;服务反馈
    <hr class="hr1" />
  </div>
  <div class="operation_button">
  	<a href="#" title="返回" onclick="back()">返回</a>
    <a href="javascript:save()" title="保存" >保存</a>
  </div>
  <div class="out_bg">
    <div class="in_bg">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td width="126">编号</td>
          <td width="411">${ser.id}</td>
          <td width="126">服务类型</td>
          <td width="442">${ser.servicetyle}</td>
        </tr>
        <tr>
          <td>概要</td>
          <td colspan="3">${ser.des }</td>
        </tr>
        <tr>
          <td>客户</td>
          <td>${ser.customer}</td>
          <td>状态</td>
          <td>${ser.status}</td>
        </tr>
        <tr>
          <td>服务请求</td>
          <td colspan="3">${ser.des }</td>
        </tr>
        <tr>
          <td>创建人</td>
          <td>${ser.createuser.uname }</td>
          <td>创建时间</td>
          <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${ser.createtime}"/></td>
        </tr>
        <tr>
          <td>分配给</td>
          <td>${ser.allotuser.uname }</td>
          <td>分配时间</td>
          <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${ser.allottime}" /></td>
        </tr>
        <tr>
          <td valign="top">服务处理</td>
          <td colspan="3">${ser.dispose }</td>
        </tr>
        <tr>
          <td>处理人</td>
          <td><input type="text" value="${ser.disposeuser.uname }" disabled="disabled"/></td>
          <td>处理时间</td>
          <td><input type="text" value="<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${ser.disposetime }" />" disabled="disabled"/></td>
        </tr>
        <tr>
        <form action="ser/result.action" method="post" id="resultForm">
          <td>处理结果</td>
          <td>
            <input type="hidden" name="id" value="${ser.id}"/> 
            <input type="text" name="result"/>
          </td>
          <td>满意度</td>
          <td><select name="satisfaction">
				<option>请选择...</option>
				<option value="☆☆☆☆☆">☆☆☆☆☆</option>
				<option value="☆☆☆☆">☆☆☆☆</option>
				<option value="☆☆☆">☆☆☆</option>
				<option value="☆☆">☆☆</option>
				<option value="☆">☆</option>
			</select></td>
        </tr>
        </form>
      </table>
    </div>
  </div>
</div>
</body>
</html>
