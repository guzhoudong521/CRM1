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

</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户服务管理&nbsp;&gt;&nbsp;服务处理列表
    <hr class="hr1" />
  </div>
  <div class="operation_button">
    <a href="#" title="查询">查询</a>
  </div>
  <div class="search_input">
    <ul class="txt">
      <li>客户名称：
        <input type="text" size="30" />
      </li>
      <li>服务类型：
        <select>
            <option>全部...</option>
            <option>咨询</option>
            <option>投诉</option>
            <option>建议</option>
        </select>
      </li>
      <li>创建日期：
        <input type="text" size="30" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})" />
      </li>
    </ul>
  </div>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="10%">编号</th>
          <th width="10%">客户名称</th>
          <th width="25%">概要</th>
          <th width="10%">服务类型</th>
          <th width="10%">创建人</th>
          <th width="15%">创建日期</th>
          <th width="10%">操作</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td><a href="#">太阳药业</a></td>
          <td>询问我公司倒闭时间</td>
          <td>咨询</td>
          <td>小明</td>
          <td>2007-12-6</td>
          <td><img title="操作" src="images/gear.ico" class="op_button" onclick="to('deal.jsp')" /></td>
        </tr>
      </tbody>
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
