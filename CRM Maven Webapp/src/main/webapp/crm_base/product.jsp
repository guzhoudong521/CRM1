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

		$.post("pro/getalltype.action","",function(res){
	
			$("#select_type").append("<option value=''>全部</option>");
			
			for(var i in res){
				
				$("#select_type").append("<option value='"+res[i]+"'>"+res[i]+"</option>");
				
			}
		
		},"json")
		
		
		$.post("pro/getallgrade.action","",function(res){
	
			$("#select_grade").append("<option value=''>全部</option>");
			
			for(var i in res){
				
				$("#select_grade").append("<option value='"+res[i]+"'>"+res[i]+"</option>");
				
			}
		
		},"json")
		
		
	})
	
	function query(){
		
		$("#queryform").submit();
		
	}
	
</script>
<style>	
	#chaxundiv{
		
		position:absolute;
		top:50px;
		left:720px;
		
	}	
</style>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：基础数据&nbsp;&gt;&nbsp;查询产品信息
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button">
    <a href="javascript:query()": title="查询">查询</a>
  </div>
  <form id="queryform" action="pro/getall.action" method="post">
  <div class="search_input">
    <ul class="txt">
      <li>名称：
        <input type="text" name="name" size="30"  style="width:180px" />
      </li>
      <li>型号：
        <select id="select_type" name="type" style="width:180px"></select>
      </li>
      <li>批次：     
         <select id="select_grade" name="grade" style="width:180px"></select>
      </li>
    </ul>
  </div>
  </form>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          
          <th width="5%">编号</th>
          <th width="25%">名称</th>
          <th width="15%">型号</th>
          <th width="15%">等级/批次</th>
          <th width="5%">单位</th>
          <th width="10%">单价(元)</th>
          <th width="25%">备注</th>
        </tr>
      </thead>
      <tbody>
     <c:forEach items="${proparam.list }" var="pdt">
     <tr>
          <td>${pdt.pid }</td>
          <td>${pdt.pname }</td>
          <td>${pdt.ptype }</td>
          <td>${pdt.pgrade }</td>
          <td>${pdt.unit }</td>
          <td>${pdt.price }</td>
          <td>${pdt.pdesc }</td>
        </tr>
     </c:forEach>

      </tbody>
    </table>
  </div>
   <div class="position"> 
  	共${proparam.maxRows}条记录&nbsp;每页${proparam.pageSize}条&nbsp;第${proparam.page}页/共${proparam.maxPages}页 
    <a href="pro/getall.action?page=1" title="首页">&laquo;首页</a>
    <c:if test="${proparam.page>1}">  
    <a href="pro/getall.action?page=${proparam.page-1}" title="上一页">&laquo; 上一页</a> 
    </c:if>
	    <c:forEach begin="1" end="${proparam.maxPages}" var="pp">
	    	 <a href="pro/getall.action?page=${pp}" class="${proparam.page==pp?'number current':'number' }" title="${pp}">${pp}</a> 
	    </c:forEach>
	<c:if test="${proparam.page<proparam.maxPages}">
    <a href="pro/getall.action?page=${proparam.page+1}" title="下一页">下一页&raquo;</a>
    </c:if>
    <a href="pro/getall.action?page=${proparam.maxPages}" title="末页">末页&raquo;</a>
    </li>
  </div>
</div>
</body>
</html>
