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
<title>客户开发计划</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<script>

	function del(x){
		var flag=confirm("确认要删除吗？");
		if(flag){
			location="cust/delmeet.action?id="+x;
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
	#adddiv{
		position:absolute;
		top:50px;
		left:500px;
	}
</style>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;<a href="list.html">客户信息</a>&nbsp;&gt;&nbsp;交往记录
    <hr class="hr1" />
  </div>
  <div id="adddiv" class="operation_button">
    <a href="#" title="返回" onclick="back()">返回</a>
    <a href="crm_cus/info/contact_add.jsp" title="新建">新建</a>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" class="table_show txt">
        <tr>
          <td width="100" align="center">客户编号：</td>
          <td width="200">${bjcus.custid}</td>
          <td width="100" align="center">客户名称：</td>
          <td width="200">${bjcus.cname}</td>
        </tr>
  </table>
  <c:if test="${empty currmeet.list}">
	 
          <div id="nulldiv">
             	还没有交往记录，<a href="crm_cus/info/contact_add.jsp" title="添加交往记录">去添加</a>
          </div>
          	
  </c:if>
   <c:if test="${not empty currmeet.list}"> 
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="5%"><input type="checkbox" class="check-all"/></th>
          <th width="15%">时间</th>
          <th width="10%">地点</th>
          <th width="20%">概要</th>
          <th width="15%">详细信息</th>
          <th width="20%">备注</th>
          <th width="15%">操作</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${currmeet.list }" var="m">
      <tr>
          <td><input type="checkbox" /></td>
          <td>${m.meetime }</td>
          <td>${m.meetaddress}</td>
          <td>${m.summary}</td>
          <td>${m.meetinfo}</td>
          <td>${m.meetnotes}</td>
          <td>
          <img title="编辑" src="images/hammer_screwdriver.png" class="op_button" onclick="to('cust/getmeetbyid.action?id=${m.mid}')" />
          <img title="删除" src="images/cross.png" class="op_button close"  onclick="javascript:del(${m.mid})" />
          </td>
        </tr>
      </c:forEach>       
      </tbody>
    </table>
  </div>
  < <div class="position"> 共${currmeet.maxRows}条记录&nbsp;每页${currmeet.pageSize}条&nbsp;第${currmeet.page}页/共${currmeet.maxPages}页 
  <a href="cust/getmeet.action?page=1" title="首页">&laquo;首页</a><a href="cust/getmeet.action?page=${page-1 }&custid=${bjcus.custid}" title="上一页">&laquo; 上一页</a> 
  <c:forEach begin="1" end="${currmeet.maxPages}" var="p">
 	 <a href="cust/getmeet.action?page=${p}&custid=${bjcus.custid}" class="${currmeet.page==p?'number current':'number' }" title="${p}">${p}</a> 
  </c:forEach>  
  <a href="cust/getmeet.action?page=${page+1 }&custid=${bjcus.custid}" title="下一页">下一页&raquo;</a>
  <a href="cust/getmeet.action?page=${currmeet.maxPages}&custid=${bjcus.custid}" title="末页">末页&raquo;</a> 
    </li>
  </div>
</div>
</c:if>
</body>
</html>
