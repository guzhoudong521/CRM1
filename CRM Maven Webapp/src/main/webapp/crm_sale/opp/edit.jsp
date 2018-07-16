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
     $(function(){
        $.getJSON("role/getAll.action","",function(res){
          $("#roleSelect").html("");
          $("#roleSelect").append("<option>--请选择--</option>");
            for(var x=0;x<res.length;x++){
               $("#roleSelect").append("<option value="+res[x].roleid+">"+res[x].rolename+"</option>")
            }
        })
     })
</script>
</head>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：系统设置&nbsp;&gt;&nbsp;角色权限管理
    <hr class="hr1" />
  </div>
  <div class="operation_button">
  	<a href="#" title="返回" onclick="back()">返回</a>
  	<a href="#" title="返回" onclick="back()">保存</a>
  </div>
  <div class="out_bg">
    <div class="in_bg">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td width="50">角色</td>
          <td width="853">
          	<select id="roleSelect">
            	<option>--请选择--</option>
                <option>BOSS</option>
                <option>客户信息管理员</option>
            </select>
          </td>
        </tr>
        <tr>
          <td width="30">所属权限:</td>
          <td width="350">
          		<input type="checkbox"/>营销管理<br />
                <input type="checkbox"/>客户管理<br />
                <input type="checkbox"/>服务管理<br />
                <input type="checkbox"/>统计报表<br />
                <input type="checkbox"/>基础数据<br />
                <input type="checkbox"/>系统设置
          </td>	
        </tr>
      </table>
    </div>
  </div>
</div>
</body>
</html>
