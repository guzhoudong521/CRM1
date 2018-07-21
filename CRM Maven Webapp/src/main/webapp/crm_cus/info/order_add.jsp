<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>办公自动化管理系统</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.12.4.js"></script>
<script>

			/* $(function(){
			
				$(".delimg").click(function(){
					var x=$(this).next("input").val();
					
					location="cla/deldetail.action?id="+x;
				});
				
				$("#addsave").click(function(){
					$("#cdlistform").submit();
				});
				
				$("#buttonsave").click(function(){
				
					$("#eventform").submit();
				
				});
				
			})
		 */
</script>

<style>
#chaxundiv{
		
		position:absolute;
		top:340px;
		left:300px;
		
	}	
	#actiondiv{
	
		position: absolute;
		top:5px;
		left:5px;
	
	}
	

</style>
</head>

<body style="background:#F9F9F9">


<div class="global-width">
	
	
    <div class="action" id="actiondiv">
    	<div class="t">增加订单</div> 
   		<div class="pages">
        	<!--增加报销单 区域 开始-->
                <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                  <caption>基本信息</caption>
                  <tr>
                    <td width="36%">客户：${bjcus.cname}</td>
                    <td width="64%">创建时间：${claim.create_time }</td>
                  </tr>
                  <tr>
                    <td>总金额：￥${claim.total_account}</td>
                    <td>状态：${claim.status}</td>
                  </tr>
                </table>
                <p>&nbsp;</p>
                <table  width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-item">
               
                  <thead>
	                  <tr>
	                    <td align="center">商品</td>
	                    <td align="center">数量</td>
	                    <td align="center">价格</td>
	                    <td>&nbsp;</td>
	                  </tr>
                  </thead>
                  <c:forEach items="${list }" var="cd">
                  <tr>
                    <td>${cd.item }</td>
                    <td>￥${cd.account }</td>
                    <td>${cd.desc }</td>
                    <td>
                    	 <img  title="保存" src="images2/edit.gif" class="op_button" onclick="javascript:jihua(${cus.planid})" />  
                    	 <img  title="删除" src="images2/delete.gif" class="op_button" onclick="javascript:jihua(${cus.planid})" />  
                    	<input type="hidden" value="${cd.listid}">                   	
                    </td>
                  </tr>
                  </c:forEach>
              
                  <form  id="cdlistform" action="cla/befor2.action" method="post">
	                  <tr>
						<td align="center">
		                    <select name="item" id="select"  class="input_01">
		                      <option value="基本通讯费用">笔记本</option>
		                      <option value="住宿费">电脑</option>
		                      <option value="伙食费">电视</option>
		                    </select>
						</td>
		                <td align="center">
		               		 <input type="number"  name="account" id="textfield2" class="input_01" />
		               		
		               		 	<span>${account}<span>
		               	
		                </td>
		                <td align="center">
		               		 <input type="text"  name="desc" id="textfield" class="input_01" />
		               		 
		               		 	<span>${desc}<span>
		               	
		                </td>
		                <td >		              		
		              		  <img title="增加" src="images/add_detail.png" class="op_button" onclick="javascript:jihua(${cus.planid})" />  
		                </td>
	                  </tr>
                  </form>
                
                   <tr>
                   <form id="eventform" action="cla/addcla.action" method="post">
                  	 <td colspan="4" class="event">
                  		    <label>收货地址：</label>                   
                   	 		<textarea  style="resize:none;" name="event" id="textarea" cols="60" rows="10"></textarea>
                  	 </td>
                  	</form>
                   </tr>    
                
                </table>   
                
                    <div  id="chaxundiv" class="operation_button">
					      <a href="javascript:void(0)" title="返回" onclick="to('')">保 存</a>
					      <a href="javascript:void(0)" title="新建" onclick="to('')">保存并提交</a>
					      <a href="javascript:void(0)" title="新建" onclick="to('')">添加明细</a>
					</div>
                
                      
            <!--增加报销单 区域 结束-->
        </div>
    </div>
</div>




</body>
</html>