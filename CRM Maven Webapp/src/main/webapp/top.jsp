<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>导航</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div>
	<div class="logo"></div>
    <div class="navigation">
  <ul class="shortcut_buttons_set">
    <li><a class="shortcut_button" href="#"><span> <img src="images/home.ico" width="55px" alt="icon" /><br />
      首页 </span></a></li>
    <li><a class="shortcut_button" href="#"><span> <img src="images/calendar.ico"  width="55px"  alt="icon" /><br />
      日程 </span></a></li>
    <li><a class="shortcut_button" href="#"><span> <img src="images/clipboard.ico"  width="55px"  alt="icon" /><br />
      公告栏 </span></a></li>
    <li><a class="shortcut_button" href="crm_message/add_message.jsp" target="rightFrame"><span> <img src="images/write.png"  width="55px"  alt="icon" /><br />
      写消息 </span></a></li>
    <li><a class="shortcut_button" href="message/getReMessage.action" target="rightFrame"><span> <img src="images/bubble.ico"  width="55px"  alt="icon" /><br />
      我的消息 </span></a></li>
    <li><a class="shortcut_button" href="crm_sale/opp/edit.jsp" target="rightFrame"><span> <img src="images/gear.ico"  width="55px"  alt="icon" /><br />
      系统设置 </span></a></li>
      <li><a class="shortcut_button" href="login.jsp" target="_parent"><span> <img src="images/login.png"  width="55px"  alt="icon" /><br />
      登录 </span></a></li>
  </ul>
  <!-- end shortcut_buttons_set --> 
</div>
</div>
</body>
</html>
