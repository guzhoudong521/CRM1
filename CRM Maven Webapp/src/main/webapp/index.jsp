<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户关系管理系统</title>
</head>
<frameset rows="110,*" frameborder="0" border="0" framespacing="0">
  <frame src="top.jsp" scrolling="no" noresize="noresize" marginheight="0" marginwidth="0" />
  <frameset cols="240,7,*" frameborder="0" border="0" framespacing="0" name="myFrame" >
    <div id="loader"><img src="images/loader.gif"/></div>
    <frame src="left.jsp" scrolling="no" noresize="noresize" marginheight="0" marginwidth="0" />
    <frame src="switch.jsp" scrolling="no" noresize="noresize" marginheight="0" marginwidth="0" />
    <frame src="us/getAll.action" noresize="noresize" marginheight="0" marginwidth="0" name="rightFrame" target="_self" />
  </frameset>
  <frame src="UntitledFrame-3">
</frameset>
<noframes>
<body>
</body>
</noframes>
</html>
