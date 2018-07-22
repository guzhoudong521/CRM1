<%@page import="org.hamcrest.core.SubstringMatcher"%>
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
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<script type="text/javascript">
  function page(page){
      $("#pages").val(page);
      $("#searchForm").submit();
  }
  function sub(){
      $("#searchForm").submit();
  }
  function del(id){
      location="ser/del.action?id="+id;
  }
</script>
</head>
<style>
#chaxundiv{
		
		position:absolute;
		top:55px;
		left:590px;	
	}	
</style>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：公告管理&nbsp;&gt;&nbsp;公告列表
    <hr class="hr1" />
  </div>
  <div class="operation_button">
    <form action="notice/getAll.action" method="post" id="searchForm">
        <input type="hidden" name="page" id="pages" value="${par.page}"/>
     
    </form>
    <a href="crm_notice/add_notice.jsp">发布公告</a>
  </div>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="10%">时间</th>
          <th width="10%">发送人</th>
          <th width="10%">标题</th>
          <th width="25%">内容</th>
          <th width="10%">操作</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${par.list}" var="ser">
        <tr>
          <td>【<fmt:formatDate value="${ser.createtime}" pattern="MM-dd hh:mm"/>】</td>
          <td>${ser.createuser.uname}</td>
          <td>${ser.title}</td>
          <td title="${ser.content}">${ser.content}</td>
          <td>
         <%--  <img title="阅读" src="images/ad.gif" class="op_button" onclick="to('notice/getById.action?id=${ser.id}')" /> --%>
          <img title="删除" src="images/delete.ico" class="op_button" onclick="to('notice/del.action?id=${ser.id}')" />
          </td>
         </tr>
       </c:forEach> 
      </tbody>
    </table>
  </div>
 <div class="position"> 
  	共${par.maxRows}条记录&nbsp;每页${par.pageSize}条&nbsp;第${par.page}页/共${par.maxPages}页 
    <a href="javascript:page(1)" title="首页">&laquo;首页</a>
     <c:if test="${par.page>1}">  
    <a href="javascript:page(${par.page-1})" title="上一页">&laquo; 上一页</a> 
    </c:if>
    <c:forEach begin="1" end="${par.maxPages}" var="pp">
    	 <a href="javascript:page(${pp})" class="${pp==par.page?'number current':'number' }" title="${pp}">${pp}</a> 
    </c:forEach> 
    <c:if test="${par.page<par.maxPages}">
    <a href="javascript:page(${par.page+1})" title="下一页">下一页&raquo;</a>
     </c:if>
    <a href="javascript:page(${par.maxPages})" title="末页">末页&raquo;</a>
  </div>
</div>
</body>
</html>
