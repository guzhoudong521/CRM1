<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="js/javascript.js"></script>
</head>
<style>


</style>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;客户信息&nbsp;&gt;&nbsp;交往记录&nbsp;&gt;&nbsp;编辑交往记录
    <hr class="hr1" />
  </div>

  <table border="0" cellpadding="0" cellspacing="0" class="table_show txt">      
          <tr>
          <td width="100" align="center">客户编号：</td>
          <td width="200">${bjcus.custid}</td>
          <td width="100" align="center">客户名称：</td>
          <td width="200">${bjcus.cname}</td>
        </tr>
  </table>
  <div class="out_bg">
    <div class="in_bg">
    <form action="cust/modmeet.action" method="post">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
     <input type="hidden" name="mid" value="${meet.mid }">
        <tr>
          <td width="126">时间</td>
          <td width="411"><input type="text" name="meetime" value="${meet.meetime }" /></td>
          <td width="126">地点</td>
          <td width="442"><input type="text" name="meetaddress" value="${meet.meetaddress }" /></td>
        </tr>
        <tr>
          <td>概要</td>
          <td><input type="text" name="summary" value="${meet.summary }" /></td>
          <td>备注</td>
          <td><input type="text" name="meetnotes" value="${meet.meetnotes }" /></td>
        </tr>
        <tr>
          <td valign="top">详细信息</td>
          <td><textarea rows="6" name="meetinfo" cols="36" />${meet.meetinfo }</textarea></td>
          <td></td>
          <td></td>
        </tr>
         <tr> 
          <td colspan="4" align="center" style="height:60px">
	          <input style="height:30px;width:120px" type="submit" value="提交" />
	          <input style="height:30px;width:120px" type="button" onclick="back()" value="取消" />
          </td>      
        </tr>
      </table>
      </form>
    </div>
  </div>
</div>
</body>
</html>
