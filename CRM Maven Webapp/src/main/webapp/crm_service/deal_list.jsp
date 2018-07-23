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
<style type="text/css">
#nulldiv{
		position:absolute;
		top:200px;
		left:300px;
		font-size: 20px;
	}
#chaxundiv{		
		position:absolute;
		top:55px;
		left:800px;	
	}
</style>
<script type="text/javascript">
  $(function() {
      var xx="${par.servicetyle}";
      $("select option[value="+xx+"]").attr("selected",true);
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

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户服务管理&nbsp;&gt;&nbsp;服务处理列表
    <hr class="hr1" />
  </div>
  <c:if test="${par.maxRows==0}">
           <div id="nulldiv">暂无服务可处理</div>
  </c:if>
  <c:if test="${par.maxRows!=0 }">
  <div class="search_input">
    <form action="ser/getAllById.action" method="post" id="searchForm">
    <ul class="txt">
      <li>客户名称：
        <input name="page" type="hidden" id="pages" value="1">
        <input name="name" type="text" size="30" value="${par.realname }"/>
      </li>
      <li> 服务类型：
        <select name="servicetyle">
          <option value="">全部...</option>
          <option value="咨询">咨询</option>
          <option value="投诉">投诉</option>
          <option value="建议">建议</option>
        </select>
      </li>
      <li> 创建日期：
        <input name="createtime" value="${par.createtime }" type="text" size="30" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd'})" />
      </li>
    </ul>
    </form>
  </div>
  <div class="operation_button" id="chaxundiv">
    <a href="javascript:sub()" title="查询">查询</a>
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
        <c:forEach items="${par.list}" var="ser">
        <tr>
          <td>${ser.id}</td>
          <td><a href="#">${ser.customer}</a></td>
          <td>${ser.des}</td>
          <td>${ser.servicetyle}</td>
          <td>${ser.createuser.uname }</td>
          <td><fmt:formatDate value="${ser.createtime}" pattern="yyyy-MM-dd"/></td>
          <td><img title="操作" src="images/gear.ico" class="op_button" onclick="to('ser/getServiceById.action?id=${ser.id}')" /></td>
        </tr>
       </c:forEach> 
        <!-- <tr>
          <td>1</td>
          <td><a href="#">太阳药业</a></td>
          <td>询问我公司倒闭时间</td>
          <td>咨询</td>
          <td>小明</td>
          <td>2007-12-6</td>
          <td><img title="操作" src="images/gear.ico" class="op_button" onclick="to('deal.jsp')" /></td>
        </tr> -->
      </tbody>
    </table>
  </div>
 <div class="position"> 
  	共${par.maxRows}条记录&nbsp;每页${par.pageSize}条&nbsp;第${par.page}页/共${par.maxPages}页 
    <a href="javascript:page(1)" title="首页">&laquo;首页</a>
     <c:if test="${par.page>1}"> 
    <a href="javascript:page(${par.page-1})" title="上一页">&laquo; 上一页</a> 
     </c:if>
    <c:forEach begin="1" end="${par.maxPages}" var="pp">
    	 <a href="javascript:page(${pp})" class="${pp==par.page?'number current':'number' }" title="${pp}">${pp}</a> 
    </c:forEach> 
    <c:if test="${par.page<par.maxPages}">
    <a href="javascript:page(${par.page+1})" title="下一页">下一页&raquo;</a>
    </c:if>
    <a href="javascript:page(${par.maxPages})" title="末页">末页&raquo;
    
    </li>
  </div>
  </c:if>
</div>
</body>
</html>
