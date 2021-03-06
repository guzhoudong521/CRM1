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
<style>	
	#chaxundiv{
		
		position:absolute;
		top:55px;
		left:590px;	
	}	
</style>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<script>
    function selectSub(){
       $("#searchForm").submit();
    }
    function page(page){
       $("#pages").val(page);
       $("#searchForm").submit();
    }
    function del(id){
       var flag=confirm("确定删除吗？")
       if(flag==true){
          location="us/delUser.action?id="+id;
       }
    }
</script>
</head>

<body>
<!--<div class="notification attention" style="margin-bottom:5px;">
				<a href="#" class="close"><img src="../resources/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
				<div>
					What's the FUCK!?
				</div>
			</div>-->
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：营销管理&nbsp;&gt;&nbsp;员工列表&nbsp;&gt;&nbsp;
    <hr class="hr1" />
  </div>
  <div class="operation_button" id="chaxundiv">
    <a href="crm_sale/opp/addUser.jsp" title="添加员工">添加员工</a>
  	<a href="crm_sale/opp/add.jsp" title="新建" onclick="to('crm_sale/opp/add.html')">新建计划</a>
    <a href="javascript:selectSub()" title="查询">查询</a>
  </div>
  <div class="search_input">
  <form action="us/getAll.action" method="post" id="searchForm">
    <ul class="txt">
      <li>工号：
        <input type="hidden" name="page" id="pages" value="${par.page}"/>
        <input type="text" name="gonghao" size="30" value="${par.gonghao }"/>
      </li>
      <li>员工姓名：
        <input type="text" name="name" size="30" value="${par.realname}"/>
      </li>
    </ul>
      </form>
  </div>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="15%">工号</th>
          <th width="20%">姓名</th>
          <th width="30%">密码</th>
          <th width="15%">角色</th>
          <th width="20%">操作</th>
        </tr>
      </thead>
      <c:forEach items="${par.list}" var="us">
         <tbody>
        <tr>
          <td>${us.userid}</td>
          <td>${us.uname }</td>
          <td>${ us.pwd}</td>
          <td>${us.role.rolename }</td>
          <td><a href="us/getById.action?id=${us.userid}">修改</a>||<a href="javascript:del(${us.userid})">删除</a></td>
          </tr>
         </tbody>
      </c:forEach>
    </table>
  </div>
    <div class="position"> 
  	共${par.maxRows}条记录&nbsp;每页${par.pageSize}条&nbsp;第${par.page}页/共${par.maxPages}页 
    <c:if test="${par.page!=1}"><a href="javascript:page(1)" title="首页">&laquo;首页</a></c:if>
     <c:if test="${par.page>1}"> 
    <a href="javascript:page(${par.page-1})" title="上一页">&laquo; 上一页</a> 
     </c:if>
    <c:forEach begin="1" end="${par.maxPages}" var="pp">
    	 <a href="javascript:page(${pp})" class="${pp==par.page?'number current':'number' }" title="${pp}">${pp}</a> 
    </c:forEach> 
    <c:if test="${par.page<par.maxPages}">
    <a href="javascript:page(${par.page+1})" title="下一页">下一页&raquo;</a>
    </c:if>
    <c:if test="${par.page!=par.maxPages}"><a href="javascript:page(${par.maxPages})" title="末页"/>末页&raquo;</c:if>

    </li>
  </div>
</div>
</body>
</html>
