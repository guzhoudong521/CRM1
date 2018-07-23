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
<style type="text/css">
   span{
     color:red;
   }
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script>
     $(function(){
        $.getJSON("role/getAll.action","",function(res){
          $("#roleSelect").html("");
            for(var x=0;x<res.length;x++){
               $("#roleSelect").append("<option value="+res[x].roleid+">"+res[x].rolename+"</option>")
            }
        })
     });
     
     function saveUser() {
		if(check()){
		 $("#form").submit();
		}
     };
     
     function check(){
        var na=$("#name").val();
        var pwd=$("#pwd").val().length;
        var te=/^[\u4e00-\u9fa5]{2,4}$/;
       /*  alert(na); */
        $("#nameSpan").html("");
        $("#pwdSpan").html("");
       if(te.test(na)){
           $("#nameSpan").html("名字长度应在2~6之间");
           return false;
        }
        if(pwd>16||pwd<6){
           $("#pwdSpan").html("密码长度应在6~16之间");
           return false;
        }
        return true;
     };
</script>
</head>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：员工管理&nbsp;&gt;&nbsp;新建员工
    <hr class="hr1" />
  </div>
  <div class="operation_button">
  	<a href="us/getAll.action" title="返回" onclick="back()">返回</a>
    <a href="javascript:saveUser()" title="保存">保存</a>
  </div>
  <div class="out_bg">
    <div class="in_bg">
    <form action="us/addUser.action" method="post" id="form">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td>员工姓名</td>
          <td><input type="text" name="uname" id="name"/><span id="nameSpan"></span></td>
        </tr>
        <tr>
          <td>密码</td>
          <td><input type="text" name="pwd" id="pwd"/><span id="pwdSpan"></span></td>
          
        </tr>
        <tr>
          <td>职位</td>
          <td>
          	<select style="width:311px;height:30px;" name="role.roleid" id="roleSelect">
				<option>请选择...</option>
				<option>小明</option>
			</select>
           </td>
        </tr>
      </table>
     </form>
    </div>
  </div>
</div>
</body>
</html>
