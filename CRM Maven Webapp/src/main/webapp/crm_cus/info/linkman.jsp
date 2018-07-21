<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户联系人列表</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<script src="js/jquery-1.12.4.js"></script>
<script>
		
	function del(x){
	
		var flag=confirm("确认要删除吗？");
			if(flag){
				location="cust/delcon.action?id="+x;
			}else{
			
			}
		
	}
	
</script>

<style>
	#nulldiv{
		position:absolute;
		top:200px;
		left:300px;
		font-size: 20px;
	}
</style>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;<a href="list.html">客户信息</a>&nbsp;&gt;&nbsp;联系人
    <hr class="hr1" />
  </div>
  <div class="operation_button">
    <a href="#" title="返回" onclick="back()">返回</a>
    <a href="#" title="新建" onclick="to('linkman_add.html')">新建</a>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" class="table_show txt">
        <tr>
          <td width="100" align="center">客户编号：</td>
          <td width="200">${bjcus.custid}</td>
          <td width="100" align="center">客户名称：</td>
          <td width="200">${bjcus.cname}</td>
        </tr>
  </table>
  <c:if test="${empty bjcus.list}">
	 
          <div id="nulldiv">
             	还没有联系人，<a href="crm_cus/info/linkman_add.jsp" title="添加联系人">去添加</a>
          </div>
          	
  </c:if>
  <div>
   <c:if test="${not empty bjcus.list}"> 
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="5%"><input type="checkbox" class="check-all"/></th>
          <th width="10%">姓名</th>
          <th width="5%">性别</th>
          <th width="15%">职位</th>
          <th width="20%">办公电话</th>
          <th width="15%">手机</th>
          <th width="15%">备注</th>
          <th width="15%">操作</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${bjcus.list }" var="con">
      	<tr>
          <td><input type="checkbox" /></td>
          <td>${con.coname}</td>
          <td>${con.cosex}</td>
          <td>${con.cojob}</td>
          <td>${con.workphone}</td>
          <td>${con.cophone}</td>
          <td>${con.notes}</td>
          <td>
	          <img title="编辑" src="images/hammer_screwdriver.png" class="op_button" onclick="to('cust/getconbyid.action?id=${con.contcatid}')" />
	          <img title="删除" src="images/cross.png" class="op_button" onclick="javascript:del(${con.contcatid})"/>
          </td>
        </tr>
      </c:forEach>
 
      </tbody>
    </table>
     
  </div>
</div>
</c:if>
</body>
</html>
