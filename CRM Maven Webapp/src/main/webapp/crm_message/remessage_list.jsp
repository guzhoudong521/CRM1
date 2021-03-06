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
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
  $(function(){
     var ck="${par.zhuangtai}"; 
     $("input[value="+ck+"]").attr("checked","checked");
  })
  function page(page){
      $("#pages").val(page);
      $("#searchForm").submit();
  }
  function sub(){
      $("#searchForm").submit();
  }
  function del(id){
      location="ser/del.action?id="+id;
  }
</script>
</head>
<style>
#chaxundiv{
		
		position:absolute;
		top:55px;
		left:500px;	
	}
#nulldiv{
		position:absolute;
		top:200px;
		left:300px;
		font-size: 20px;
	}		
</style>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：消息管理&nbsp;&gt;&nbsp;收到的消息
    <hr class="hr1" />
  </div>
  <c:if test="${par.maxRows==0}">
    <div id="nulldiv">暂无消息</div>
  </c:if>
  <c:if test="${par.maxRows!=0}">
  <div class="search_input">
    <form action="message/getReMessage.action" method="post" id="searchForm">
    <ul class="txt">
      <li>
        <input type="hidden" name="page" id="pages" value="${par.page}"/>
        <input type="radio" name="zhuangtai"  value=""/>全部
        <input type="radio" name="zhuangtai"  value="已读"/>已读
        <input type="radio" name="zhuangtai"  value="未读"/>未读
      </li>
      <li> 创建日期：
        <input name="createtime" type="text" size="30" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})" />
      </li>
    </ul>
    </form>
  </div>
  <div class="operation_button" id="chaxundiv">
    <a href="javascript:sub()" title="查询">查询</a>
    <a href="message/getSdMessage.action">我发出的消息</a>
  </div>
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list" >
      <thead>
        <tr>
          <th width="10%">状态</th>
          <th width="10%">发送人</th>
          <th width="20%">标题</th>
          <th width="15%">接受时间</th>
          <th width="10%">操作</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${par.list}" var="ser">
        <tr>
          <td>
             <c:if test="${ser.status=='未读'}">【<span style="color:red">未读</span>】</c:if>
            <c:if test="${ser.status=='已读'}">【<span >已读</span>】</c:if>
          </td>
          <td>${ser.suser.uname}</td>
          <td>${ser.title}</td>
          <td><fmt:formatDate value="${ser.createtime}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
          <td>
          <img title="阅读" src="images/ad.gif" class="op_button" onclick="to('message/getById.action?id=${ser.id}')" />
          <img title="删除" src="images/delete.ico" class="op_button" onclick="to('message/del1.action?id=${ser.id}')" />
          </td>
         </tr>
       </c:forEach> 
      </tbody>
    </table>
  </div>
 <div class="position"> 
  	共${par.maxRows}条记录&nbsp;每页${par.pageSize}条&nbsp;第${par.page}页/共${par.maxPages}页 
    <c:if test="${par.page!=1}"><a href="javascript:page(1)" title="首页">&laquo;首页</a></c:if>
     <c:if test="${par.page>1}">  
    <a href="javascript:page(${par.page-1})" title="上一页">&laquo; 上一页</a> 
    </c:if>
    <c:forEach begin="1" end="${par.maxPages}" var="pp">
    	 <a href="javascript:page(${pp})" class="${pp==par.page?'number current':'number' }" title="${pp}">${pp}</a> 
    </c:forEach> 
    <c:if test="${par.page<par.maxPages}">
    <a href="javascript:page(${par.page+1})" title="下一页">下一页&raquo;</a>
     </c:if>
    <c:if test="${par.page!=par.maxPages}"><a href="javascript:page(${par.maxPages})" title="末页">末页&raquo;</a></c:if>
  </div>
  </c:if>
</div>
</body>
</html>
