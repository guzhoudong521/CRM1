<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
function Submit_onclick(){
	if(parent.myFrame.cols == "240,7,*") {
		parent.myFrame.cols="0,7,*";
		document.getElementById("ImgArrow").src="images/switch_right.gif";
		document.getElementById("ImgArrow").alt="打开左侧导航栏";
	} else {
		parent.myFrame.cols="240,7,*";
		document.getElementById("ImgArrow").src="images/switch_left.gif";
		document.getElementById("ImgArrow").alt="隐藏左侧导航栏";
	}
}
</script>
</head>

<body>
<div id="switchpic"><a href="javascript:Submit_onclick()"><img src="images/switch_left.gif" alt="隐藏左侧导航栏" id="ImgArrow" /></a></div>
</body>
</html>
