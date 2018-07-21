<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="datepicker/WdatePicker.js"> </script>
<script src="js/jquery-1.12.4.js"></script>
<script>
		$(function(){
		
		$.post("us/ajaxlist.action","",function(res){
			
			$("#selectid").html("<option value=''>全部</option>");
				for(var x in res){
					$("#selectid").append("<option value="+res[x].userid+">"+res[x].uname+"</option>");
				} 
				
			},"json") 
			
			$.post("cust/getallarea.action","",function(res){
				
				$("#areaid").html("<option value=''>全部</option>");
				for(var i in res){
					$("#areaid").append("<option value="+res[i].areaid+">"+res[i].areaname+"</option>");
				}
				
			},"json")
			
			
			$.post("cust/getallgrade.action","",function(res){
				$("#gradeid").html("<option value=''>全部</option>");
				for(var i in res){
					
					$("#gradeid").append("<option value="+res[i].gid+">"+res[i].gname+"</option>");
					
				}
				
			},"json");
			
			$("#chaxuna").click(function(){
				$("#queryform").submit();
			});
						
		})
	
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
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;客户信息
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button"> 
  <a id="chaxuna" href="javascript:void(0)" title="查询">查询</a> 
  </div>
  <div class="search_input">
  <form id="queryform" action="cust/dolist.action" method="post">
    <ul class="txt">
      <li>客户名称：
        <input type="text" name="name" size="30" />
      </li>
      <li>客户经理：
        <select id="selectid" name="gonghao"></select>
      </li>
      <li>地区：
        <select id="areaid" name="areaid">
         
        </select>
      </li>
      <li>客户等级：
        <select id="gradeid" name="gradeid">
          
        </select>
      </li>
    </ul>
    </form>
  </div>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
         
          <th width="15%">客户编号</th>
          <th colspan="2" width="20%">客户名称</th>
          <th width="10%">地区</th>
          <th width="15%">客户经理</th>
          <th width="15%">客户等级</th>
          <th width="15%">操作</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${custparam.list }" var="cus">
      <tr>
          
          <td>${cus.custid }</td>
          <td colspan="2"><a href="#">${cus.cname }</a></td>
          <td>${cus.area.areaname }</td>
          <td>${cus.mgr.uname }</td>
          <td>${cus.custgrade.gname}</td>
          <td>
	          <img title="编辑" src="images/hammer_screwdriver.png" class="op_button" onclick="to('cust/getbyid.action?id=${cus.custid}&type=bj')" />
	          <img title="联系人" src="images/user.ico" class="op_button" onclick="to('cust/getbyid.action?id=${cus.custid}&type=lxr')" />
	          <img title="交往记录" src="images/bubble.ico" class="op_button" onclick="to('cust/getmeet.action?custid=${cus.custid}')" />
	          <img title="历史订单" src="images/document.ico" class="op_button" onclick="to('cust/getallorder.action?custid=${cus.custid}')" />
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
  
  <div class="position"> 
  	共${custparam.maxRows}条记录&nbsp;每页${custparam.pageSize}条&nbsp;第${custparam.page}页/共${custparam.maxPages}页 
    <a href="cust/dolist.action?page=1" title="首页">&laquo;首页</a>
    <c:if test="${custparam.page>1}">  
    <a href="cust/dolist.action?page=${custparam.page-1}" title="上一页">&laquo; 上一页</a> 
    </c:if>
	    <c:forEach begin="1" end="${custparam.maxPages}" var="pp">
	    	 <a href="cust/dolist.action?page=${pp}" class="${custparam.page==pp?'number current':'number' }" title="${pp}">${pp}</a> 
	    </c:forEach>
	<c:if test="${custparam.page<custparam.maxPages}">
    <a href="cust/dolist.action?page=${custparam.page+1}" title="下一页">下一页&raquo;</a>
    </c:if>
    <a href="cust/dolist.action?page=${custparam.maxPages}" title="末页">末页&raquo;</a>
    </li>
  </div>
  
</div>
</body>
</html>
