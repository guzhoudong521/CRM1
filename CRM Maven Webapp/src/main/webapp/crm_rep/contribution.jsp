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
<title>统计报表</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：统计报表&nbsp;&gt;&nbsp;客户贡献分析
    <hr class="hr1" />
  </div>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="15%">编号</th>
          <th width="65%">客户名称</th>
          <th width="20%">订单金额(元)</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${saleparam.list}" var="s">
     	<tr>
          <td>${s.id }</td>
          <td><a href="cust/getallorder.action?custid=${s.otherid }">${s.name }</a></td>
          <td>${s.sum }</td>
        </tr>
      </c:forEach>
      
      </tbody>
    </table>
  </div>
 
  <div class="position"> 
  	共${saleparam.maxRows}条记录&nbsp;每页${saleparam.pageSize}条&nbsp;第${saleparam.page}页/共${saleparam.maxPages}页 
    <c:if test="${saleparam.page!=1}">
    <a href="stat/getsale.action?page=1" title="首页">&laquo;首页</a>
    </c:if>
    <c:if test="${saleparam.page>1}">  
    <a href="stat/getsale.action?page=${saleparam.page-1}" title="上一页">&laquo; 上一页</a> 
    </c:if>
	    <c:forEach begin="1" end="${saleparam.maxPages}" var="pp">
	    	 <a href="stat/getsale.action?page=${pp}" class="${saleparam.page==pp?'number current':'number' }" title="${pp}">${pp}</a> 
	    </c:forEach>
	<c:if test="${saleparam.page<saleparam.maxPages}">
    <a href="stat/getsale.action?page=${saleparam.page+1}" title="下一页">下一页&raquo;</a>
    </c:if>
   <c:if test="${saleparam.page!=saleparam.maxPages}">
    <a href="stat/getsale.action?page=${saleparam.maxPages}" title="末页">末页&raquo;</a>
    </c:if>
    </li>
  </div>
  
  </div>
</div>
</body>
</html>
