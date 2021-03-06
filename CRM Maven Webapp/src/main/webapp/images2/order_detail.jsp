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


	#chaxundiv{
		
		position:absolute;
		top:50px;
		left:900px;
		
	}	

</style>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;<a href="order.html">历史订单</a>&nbsp;&gt;&nbsp;订单明细
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button">
    <a href="javascript:void(0)" title="返回" onclick="back()">返回</a>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" class="table_show txt">
        <tr>
          <td width="100" align="center">订单编号：</td>
          <td width="200">${currorder.oid }</td>
          <td width="100" align="center">日期：</td>
          <td width="200">${currorder.ordtime }</td>
        </tr>
        <tr>
          <td width="100" align="center">送货地址：</td>
          <td width="200">${currorder.address }</td>
          <td width="100" align="center">总金额（元）：</td>
          <td width="200">${sum }</td>
        </tr>
        <tr>
          <td width="100" align="center">状态：</td>
          <td width="200">${currorder.status }</td>
          <td width="100" align="center"></td>
          <td width="200"></td>
        </tr>
  </table>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="30%">商品</th>
          <th width="10%">数量</th>
          <th width="20%">单位</th>
          <th width="20%">单价（元）</th>
          <th width="20%">金额（元）</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${currdetail.list}" var="det">
        <tr>
          <td>${det.pro.pname}</td>
          <td>${det.pnum}</td>
          <td>${det.pro.unit}</td>
          <td>${det.pro.price}</td>
          <td>${det.sumprice}</td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
 <div class="position"> 共${currdetail.maxRows}条记录&nbsp;每页${currdetail.pageSize}条&nbsp;第${currdetail.page}页/共${currdetail.maxPages}页 
  <a href="cust/getalldetail.action?page=1" title="首页">&laquo;首页</a><a href="cust/getalldetail.action?page=${page-1 }" title="上一页">&laquo; 上一页</a> 
  <c:forEach begin="1" end="${currdetail.maxPages}" var="p">
 	 <a href="cust/getalldetail.action?page=${p}" class="${currdetail.page==p?'number current':'number' }" title="${p}">${p}</a> 
  </c:forEach>  
  <a href="cust/getalldetail.action?page=${page+1 }" title="下一页">下一页&raquo;</a>
  <a href="cust/getalldetail.action?page=${currdetail.maxPages}" title="末页">末页&raquo;</a> 
    </li>
  </div>
</div>
</body>
</html>
