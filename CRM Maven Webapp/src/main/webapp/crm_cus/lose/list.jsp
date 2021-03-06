<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户开发计划</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>

</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户流失管理&nbsp;&gt;&nbsp;流失信息
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
      <li>客户经理：
        <select>
        <option>全部</option>
        <option>小明</option>
        <option>小红</option>
        <option>小刚</option>
    </select>
      </li>
      <li>状态：
        <select>
        <option>全部</option>
        <option>预警</option>
        <option>暂缓流失</option>
        <option>确认流失</option>
    </select>
      </li>
    </ul>
  </div>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="5%">编号</th>
          <th width="10%">客户名称</th>
          <th width="15%">客户经理</th>
          <th width="20%">上次下单时间</th>
          <th width="20%">确认流失时间</th>          
          <th width="10%">状态</th>
          <th width="20%">操作</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>阳光实业</td>
          <td>球球</td>
          <td>2013-12-12</td>
          <td></td>
          <td>暂缓流失</td>
          <td><img title="确认流失" src="images/shield.ico" class="op_button" onclick="to('sure.jsp')" /><img title="暂缓流失" src="images/clock.ico" class="op_button" onclick="to('retard.jsp')" /></td>
        </tr>
        <tr>
          <td>1</td>
          <td>阳光实业</td>
          <td>球球</td>
          <td>2013-12-12</td>
          <td></td>
          <td>暂缓流失</td>
          <td><img title="确认流失" src="images/shield.ico" class="op_button" onclick="to('sure.jsp')" /><img title="暂缓流失" src="images/clock.ico" class="op_button" onclick="to('retard.html')" /></td>
        </tr>
        <tr>
          <td>1</td>
          <td>阳光实业</td>
          <td>球球</td>
          <td>2013-12-12</td>
          <td></td>
          <td>暂缓流失</td>
          <td><img title="确认流失" src="images/shield.ico" class="op_button" onclick="to('sure.jsp')" /><img title="暂缓流失" src="images/clock.ico" class="op_button" onclick="to('retard.html')" /></td>
        </tr>
        <tr>
          <td>1</td>
          <td>阳光实业</td>
          <td>球球</td>
          <td>2013-12-12</td>
          <td></td>
          <td>暂缓流失</td>
          <td><img title="确认流失" src="images/shield.ico" class="op_button" onclick="to('sure.jsp')" /><img title="暂缓流失" src="images/clock.ico" class="op_button" onclick="to('retard.html')" /></td>
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
