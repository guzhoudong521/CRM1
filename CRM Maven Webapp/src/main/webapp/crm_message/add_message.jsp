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
<script>
     $(function(){
        $.getJSON("us/ajaxlist.action","",function(res){
          $("#userSelect").html("");
            for(var x=0;x<res.length;x++){
               $("#userSelect").append("<option value="+res[x].userid+">"+res[x].uname+"</option>")
            }
        })
     });
     
     function saveUser() {
        if(check()){
           $("#form").submit(); 
        }   
     };
     
     function check(){
         var tit=$("#title").val();
         var con=$("#content").val();
         /* var sel=$("#userSelect").html(); */
         if(tit==null||tit==''){
             $("#titleSpan").html("标题不能为空");
             return false;
         }else if(con==null||con==''){
             $("#contentSpan").html('内容不能为空');
             return false;
         }/* else if(sel==null&&sel==''){
             $("#selectSpan").html('请选择');
         } */
         return true;
     }
</script>
</head>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：消息管理&nbsp;&gt;&nbsp;发送消息
    <hr class="hr1" />
  </div>
  <div class="operation_button">
  	<a href="us/getAll.action" title="返回" onclick="back()">返回</a>
    <a href="javascript:saveUser()" title="保存">发送</a>
  </div>
  <div class="out_bg">
    <div class="in_bg">
    <form action="message/add.action" method="post" id="form">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td>标题：</td>
          <td><input type="text" name="title" id="title"/><span id="titleSpan"></span></td>
        </tr>
        <tr>
          <td>内容：</td>
          <td><textarea rows="5" cols="40" name="content"  id="content"></textarea><span id="contentSpan"></span></td>
        </tr>
        <tr>
          <td>发送给：</td>
          <td>
          	<select style="width:200px;height:30px;" name="ruser.userid" id="userSelect">
				<option>请选择...</option>
				<option>小明</option>
			</select><span id="selectSpan"></span>
           </td>
        </tr>
      </table>
     </form>
    </div>
  </div>
</div>
</body>
</html>
