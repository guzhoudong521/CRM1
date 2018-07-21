<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户开发计划列表</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<script src="js/jquery-1.12.4.js"></script>
<script>
	$(function(){
		$("#chaxun").click(function(){
	
			$("#queryform").submit();
		});
	})
	function jihua(x){
		location="plan/getbyid.action?id="+x;
	}
	
	function succ(x){
		var flag=confirm("确定该计划已完成？");
		if(flag){
			location="plan/getbyid.action?id="+x;
		}else{
		
		}
		
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
  <div class="txt" style="padding-top:3px;" >当前位置：营销管理&nbsp;&gt;&nbsp;客户开发计划<!-- &nbsp;&gt;&nbsp; -->
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button">
    <a id="chaxun" href="javascript:void(0)" title="查询">查询</a>
  </div>
  <form id="queryform" action="plan/getall.action" method="post">
  <div class="search_input">
    <ul class="txt">
      <li>客户名称：
        <input type="text" name="name" size="30" />
      </li>
      <li>联系人：
        <input type="text" name="lianxiren" size="30" />
      </li>
      <li>状态：
       <!--  <input type="text" name="lianxiren" size="30" /> -->
        <select  style="width:150px;align:center" name="zhuangtai">
        	<option value="">全部</option>
        	<option value="未开发">未开发</option>
        	<option value="计划已制定">计划已制定</option>
        	<option value="开发中">开发中</option>
        	<option value="开发成功">开发成功</option>
        </select>
      </li>
      <!-- <li>创建时间：
        <input type="text" name="chuangjianshijian" size="30" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})" />
      </li> -->
    </ul>
  </div>
  </form>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="5%">编号</th>
          <th width="15%">客户名称</th>
          <th width="15%">概要</th>
          <th width="10%">联系人</th>
          <th width="15%">联系电话</th>
          <th width="15%">创建时间</th>
          <th width="10%">状态</th>
          <th width="15%">操作</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${queryp.list }" var="cus">
      
      <tr>
          <td>${cus.planid }</td>
          <td><a href="#">${cus.gongsi }</a></td>
          <td>${cus.gaiyao }</td>
          <td>${cus.lianxiren }</td>
          <td>${cus.dianhua }</td>
          <td>${cus.chuangjianshijian }</td>
          <td>${cus.zhaungtai }</td>
          <td>          
          <c:if test="${cus.zhaungtai=='未开发' }">
          	 <img  title="制定计划" src="images/pencil.ico" class="op_button" onclick="javascript:jihua(${cus.planid})" />        	
          </c:if>         
           <c:if test="${cus.zhaungtai=='计划已制定'}">  
            <img title="执行计划" src="images/right.ico" class="op_button" onclick="javascript:jihua(${cus.planid})" />
           </c:if>
         <c:if test="${cus.zhaungtai=='开发中'}">        
          <img title="开发成功" src="images/tick.ico" class="op_button" onclick="javascript:succ(${cus.planid})" />
          </c:if> 
          <c:if test="${cus.zhaungtai=='开发成功'}">
          <img title="已归档" src="images/briefcase.ico" class="op_button" />
          </c:if>
          </td>
        </tr>

        </tr>
      
      </c:forEach>
      
      </tbody>
    </table>
  </div>
  <div class="position"> 
  	共${queryp.maxRows}条记录&nbsp;每页${queryp.pageSize}条&nbsp;第${queryp.page}页/共${queryp.maxPages}页 
    <a href="plan/getall.action?page=1" title="首页">&laquo;首页</a>
    <c:if test="${queryp.page>1}">  
    <a href="plan/getall.action?page=${queryp.page-1}" title="上一页">&laquo; 上一页</a> 
    </c:if>
	    <c:forEach begin="1" end="${queryp.maxPages}" var="pp">
	    	 <a href="plan/getall.action?page=${pp}" class="${queryp.page==pp?'number current':'number' }" title="${pp}">${pp}</a> 
	    </c:forEach>
	<c:if test="${queryp.page<queryp.maxPages}">
    <a href="plan/getall.action?page=${queryp.page+1}" title="下一页">下一页&raquo;</a>
    </c:if>
    <a href="plan/getall.action?page=${queryp.maxPages}" title="末页">末页&raquo;</a>
    </li>
  </div>
</div>
</body>
</html>
