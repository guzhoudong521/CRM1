<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>基础数据</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<script src="js/jquery-1.12.4.js"></script>
<script>
	$(function(){

		$.post("pro/getallcangku.action","",function(res){
	
			$("#select_cangku").append("<option value=''>全部</option>");
			
			for(var i in res){
				
				$("#select_cangku").append("<option value='"+res[i].wareid+"'>"+res[i].warename+"</option>");
				
			}
			var cangkus='${kucunparam.wid}';
			$("#select_cangku").find("option[value='"+cangkus+"']").attr("selected",true);
		
			
		},"json")
		
		
	})
	
	function submits(x){
			
			location="pro/getallkucun.action?page="+x+"&"+$("#queryform").serialize();;
	}
	
</script>
<style>	
	#chaxundiv{
		
		position:absolute;
		top:50px;
		left:800px;
		
	}	
</style>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：基础数据&nbsp;&gt;&nbsp;查询库存
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button">
    <a href="javascript:submits(1)" title="查询">查询</a>
  </div>
  <form id="queryform" action="pro/getallkucun.action" method="post">
  <div class="search_input">
    <ul class="txt">
      <li>产品编号：
        <input type="text" value="${kucunparam.id}" name="id" style="width:150px" size="30" />
      </li>
      <li>产品名称：
        <input type="text" value="${kucunparam.realname}" name="name" style="width:150px" size="30" />
      </li>
      <li>仓库：
        <select id="select_cangku" style="width:150px" name="wid"></select>
      </li>
    </ul>
  </div>
  </form>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="5%">序号</th>
          <th width="10%">商品编号</th>
          <th width="20%">名称</th>
          <th width="15%">仓库</th>
          <th width="10%">货位</th>
          <th width="5%">件数</th>
          <th width="25%">备注</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${kucunparam.list }" var="ku">
      <tr>
          <td>${ku.r }</td>
          <td>${ku.pro.pid }</td>
          <td>${ku.pro.pname }</td>
          <td>${ku.cangku.warename }</td>
          <td>${ku.huowei.placename }</td>
          <td>${ku.knum }</td>
          <td>${ku.kdesc }</td>
        </tr>
      </c:forEach>      
      </tbody>
    </table>
  </div>
  <div class="position"> 
  	共${kucunparam.maxRows}条记录&nbsp;每页${kucunparam.pageSize}条&nbsp;第${kucunparam.page}页/共${kucunparam.maxPages}页 
    <a href="pro/getallkucun.action?page=1" title="首页">&laquo;首页</a>
    <c:if test="${kucunparam.page>1}">  
    <a href="pro/getallkucun.action?page=${kucunparam.page-1}" title="上一页">&laquo; 上一页</a> 
    </c:if>
	    <c:forEach begin="1" end="${kucunparam.maxPages}" var="pp">
	    	 <a href="pro/getallkucun.action?page=${pp}" class="${kucunparam.page==pp?'number current':'number' }" title="${pp}">${pp}</a> 
	    </c:forEach>
	<c:if test="${kucunparam.page<kucunparam.maxPages}">
    <a href="pro/getallkucun.action?page=${kucunparam.page+1}" title="下一页">下一页&raquo;</a>
    </c:if>
    <a href="pro/getallkucun.action?page=${kucunparam.maxPages}" title="末页">末页&raquo;</a>
    </li>
  </div>
</div>
</body>
</html>
