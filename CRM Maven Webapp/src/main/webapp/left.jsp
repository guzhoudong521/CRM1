<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CRM_Left</title> 
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"  />
<link rel="stylesheet" href="css/sidebar.css" type="text/css"  />
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
</head>
<body>
<div>
  <div id="loader"><img src="images/1d_2.gif"/></div>
  <div class="current_user attention"">
  <c:if test="${curruser!=null}">
  	<div> 欢迎您，<strong>${curruser.uname}</strong><br />
      [${curruser.role.rolename}，<a href="us/exit.action" target="_parent">退出</a>] </div>
  </div>
  </c:if>
     <c:if test="${curruser==null}">
  	<div> <strong>请登录！！</strong></div>
  </div>
  </c:if>
  <div id="sidebar">
    <div id="sidebar-wrapper">
      <ul id="main-nav">
        <li> <a href="#" class="nav-top-item current" id="man_nav_1" onclick="list_sub_nav(id)"> 营销管理 </a>
          <ul>
            <li><a href="us/getAll.action" target="rightFrame" id="a_nav_1" onclick="a_sub_nav(id)">员工管理</a></li>
            <li><a href="plan/getall.action" target="rightFrame" id="a_nav_2" onclick="a_sub_nav(id)">客户开发计划</a></li>
          </ul> 
        </li>
        <li> <a href="#" class="nav-top-item" id="man_nav_2" onclick="list_sub_nav(id)"> 客户开发计划 </a>
          <ul>
            <li><a href="cust/dolist.action" target="rightFrame" id="a_nav_3" onclick="a_sub_nav(id)">客户信息管理</a></li>
            <!-- <li><a href="crm_cus/lose/list.jsp" target="rightFrame" id="a_nav_4" onclick="a_sub_nav(id)">客户流失管理</a></li> -->
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item" id="man_nav_3" onclick="list_sub_nav(id)"> 服务管理 </a>
          <ul>
            <li><a href="crm_service/add.jsp" target="rightFrame" id="a_nav_5" onclick="a_sub_nav(id)">服务创建</a></li>
            <li><a href="ser/getAll.action" target="rightFrame" id="a_nav_6" onclick="a_sub_nav(id)">服务分配</a></li>
            <li><a href="ser/getAllById.action" target="rightFrame" id="a_nav_7" onclick="a_sub_nav(id)">服务处理</a></li>
            <li><a href="ser/getAllPro.action" target="rightFrame" id="a_nav_8" onclick="a_sub_nav(id)">服务反馈</a></li>
            <li><a href="ser/file.action" target="rightFrame" id="a_nav_9" onclick="a_sub_nav(id)">服务归档</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item" id="man_nav_4" onclick="list_sub_nav(id)"> 统计报表 </a>
          <ul>
            <li><a href="stat/getsale.action" target="rightFrame" id="a_nav_10" onclick="a_sub_nav(id)">客户贡献分析</a></li>
            <li><a href="stat/getgrade.action" target="rightFrame" id="a_nav_11" onclick="a_sub_nav(id)">客户构成分析</a></li>
            <li><a href="stat/getsertype.action" target="rightFrame" id="a_nav_12" onclick="a_sub_nav(id)">客户服务分析</a></li>
            <!-- <li><a href="crm_rep/lose.jsp" target="rightFrame" id="a_nav_13" onclick="a_sub_nav(id)">客户流失分析</a></li> -->
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item" id="man_nav_5" onclick="list_sub_nav(id)"> 基础数据 </a>
          <ul>          
            <li><a href="pro/getall.action" target="rightFrame" id="a_nav_15" onclick="a_sub_nav(id)">查询产品信息</a></li>
            <li><a href="pro/getallkucun.action" target="rightFrame" id="a_nav_16" onclick="a_sub_nav(id)">查询库存</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>
</body>
</html>
