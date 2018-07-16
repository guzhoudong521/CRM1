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
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<script>
    function selectSub(){
       $("#searchForm").submit();
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
  <div class="txt" style="padding-top:3px;" >当前位置：系统管理&nbsp;&gt;&nbsp;权限分配&nbsp;&gt;&nbsp;
    <hr class="hr1" />
  </div>
  <div class="operation_button">
  	<a href="#" title="新建" onclick="to('crm_sale/opp/add.html')">新建</a>
    <a href="javascript:selectSub()" title="查询">查询</a>
  </div>
  <div class="search_input">
  <form action="us/getAll.action" method="post" id="searchForm">
    <ul class="txt">
      <li>工号：
        <input type="text" name="gonghao" size="30" />
      </li>
      <li>员工姓名：
        <input type="text" name="name" size="30" />
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
          <td><a href="#">${us.uname }</a></td>
          <td>${ us.pwd}</td>
          <td>${us.role.rolename }</td>
          <td>
          	<select>
            	<option>--请选择--</option>
                <option>BOSS</option>
                <option>销售主管</option>
                <option></option>
                <option></option>
            </select>
           </td>
          </tr>
         </tbody>
      </c:forEach>
      
    </table>
  </div>
  <div class="position"> 
  	共59条记录&nbsp;每页10条&nbsp;第1页/共5页 
    <a href="#" title="首页">&laquo;首页</a><a href="#" title="上一页">&laquo; 上一页</a> <a href="#" class="number current" title="1">1</a> <a href="#" class="number" title="2">2</a> <a href="#" class="number" title="3">3</a> <a href="#" class="number" title="4">4</a> <a href="#" title="下一页">下一页&raquo;</a><a href="#" title="末页">末页&raquo;</a> 转到&nbsp;
    <input value="1" size="2" />
    &nbsp;页<a href="#">GO</a>
    </li>
  </div>
</div>
</body>
</html>
