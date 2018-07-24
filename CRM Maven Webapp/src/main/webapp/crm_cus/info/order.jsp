<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

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
<style>	
#nulldiv{
		position:absolute;
		top:200px;
		left:300px;
		font-size: 20px;
	}

	#chaxundiv{
		
		position:absolute;
		top:50px;
		left:600px;
		
	}	
</style>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;历史订单
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button">
   <a href="cust/addorder1.action?id=${bjcus.custid }" title="增加订单" >增加订单</a>
    <a href="javascript:void(0)" title="返回" onclick="back()">返回</a>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" class="table_show txt">
        <tr>
          <td width="100" align="center">客户编号：</td>
          <td width="200">${bjcus.custid }</td>
          <td width="100" align="center">客户名称：</td>
          <td width="200">${bjcus.cname}</td>
        </tr>
  </table>
  <c:if test="${empty orderparam.list}">
	 
          <div id="nulldiv">
             	还没有订单，去添加
          </div>
          	
  </c:if>
   <c:if test="${not empty orderparam.list}"> 
  <div>
  
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <!-- <th width="5%"><input type="checkbox" class="check-all"/></th> -->
          <th width="15%">订单编号</th>
          <th width="20%">日期</th>
          <th width="30%">送货地址</th>
          <th width="10%">状态</th>
          <th width="20%">操作</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${orderparam.list}" var="ords">
        <tr>
        <!--   <td><input type="checkbox" /></td> -->
          <td>${ords.oid }</td>
          <td>${ords.ordtime }</td>
          <td>${ords.address }</td>
          <td>${ords.status }</td>
          <td><img title="查看明细" src="images/document.ico" class="op_button" onclick="to('cust/getalldetail.action?gonghao=${ords.oid}')" /></td>
        </tr>
        </c:forEach>
      </tbody>
    </table>

  <div class="position"> 
  	共${orderparam.maxRows}条记录&nbsp;每页${orderparam.pageSize}条&nbsp;第${orderparam.page}页/共${orderparam.maxPages}页 
    <c:if test="${orderparam.page!=1}">
    <a href="cust/getallorder.action?page=1" title="首页">&laquo;首页</a>
      </c:if>
    <c:if test="${orderparam.page>1}">  
    <a href="cust/getallorder.action?page=${orderparam.page-1}" title="上一页">&laquo; 上一页</a> 
    </c:if>
	    <c:forEach begin="1" end="${orderparam.maxPages}" var="pp">
	    	 <a href="cust/getallorder.action?page=${pp}" class="${orderparam.page==pp?'number current':'number' }" title="${pp}">${pp}</a> 
	    </c:forEach>
	<c:if test="${orderparam.page<orderparam.maxPages}">
    <a href="cust/getallorder.action?page=${orderparam.page+1}" title="下一页">下一页&raquo;</a>
    </c:if>
     <c:if test="${orderparam.page!=orderparam.maxPages}">
    <a href="cust/getallorder.action?page=${orderparam.maxPages}" title="末页">末页&raquo;</a>
    </c:if>
    </li>
  </div>
</div>
</c:if>
</body>
</html>
