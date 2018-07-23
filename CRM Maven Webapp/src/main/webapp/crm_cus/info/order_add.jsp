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

			$(function(){
			
				
			
				$.post("pro/ajaxgetall.action","",function(res){
					
						for(var i in res){
							$("#select").append("<option value='"+res[i].pid+"'>"+res[i].pname+"</option>");
						}
						
						var pidx=$("#select").val();									
						getprice(pidx);
					
				},"json")
				
				
				
				
				
				
				$("#select").change(function(){
				
					var pid=$(this).val();					
					getprice(pid);
				})
				
				
				
				
				 $("#addimg").click(function(){
					$("#cdlistform").submit();
				}); 
			
				$(".delimg").click(function(){
					var x=$(this).next("input").val();
					
					location="cla/deldetail.action?id="+x;
				});
				
				
										
				
			})
			
			function getprice(pid){
			
				$.post("pro/getpricbyid.action","pid="+pid,function(res){
					
						$("#price").val(res.price);
						
					},"json")
			}
			
			function del(xx){
			
				location="cust/deldetail.action?id="+xx;
			}
			
			function submits(){
				var xx=$("#address").val();
				if(xx==''){
					alert("地址不能为空");
				}else{
				$("#eventform").submit();
				}
				
			}
		 
</script>

<style>


	#actiondiv{
	
		position: absolute;
		top:5px;
		left:5px;
	
	}
	#chaxundiv{
		
		position:relative;
		top:20px;
		left:-400px;
		
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
                    <td width="36%">客户：${currorder.cust.cname}</td>
                    <td width="64%">创建时间：${currorder.ordtime }</td>
                  </tr>
                  <tr>
                    <td>总金额：￥${currorder.sumprice}</td>
                    <td>状态：${currorder.status}</td>
                  </tr>
                </table>
                <p>&nbsp;</p>
                <table   width="100%" border="0" cellspacing="0" cellpadding="0" class="addform-item">
               
                  <thead>
	                  <tr>
	                    <td width="30%" align="center">选择商品</td>
	                    <td width="30%"  align="center">单价</td>
	                    <td width="20%"  align="center">数量</td>
	                    <td width="20%"  align="left">&nbsp;</td>
	                  </tr>
                  </thead>
                  <c:forEach items="${listDetail}" var="det">
                  <tr>
                    <td align="center"> ${det.pro.pname }</td>
                    <td align="center">￥${det.pro.price }</td>
                    <td align="center">${det.pnum }</td>
                    <td align="left">                  	
                    	 <img  title="删除" src="images2/delete.png" class="op_button" onclick="javascript:del(${det.id})" />                     	                	
                    </td>
                  </tr>
                  </c:forEach>
              
                  <form  id="cdlistform" action="cust/adddetail.action" method="post">
	                  <tr>
						<td align="center" >
		                    <select name="pro.pid" id="select" style="width:300px;height:30px"  class="input_01">		                      
		                    </select>
						</td>
						<td align="center">
							<input id="price" class="input_01"  type="text"  disabled="disabled"  name="pro.price"/>
						</td>	                
		                <td align="center">
		                 <input type="number" required="required"  min="1" max="100" value="1"   name="pnum" id="textfield2" class="input_01" />				               		              		 		               		 		               	
		                </td>
		                <td>		              		
		              		  <img id="addimg" title="增加" src="images/add_detail.png" class="op_button" /> 
		                </td>
	                  </tr>
                  </form>
                
                   <tr>
                   <form id="eventform" action="cust/addorder.action" method="post">
                  	 <td colspan="4" class="event">
                  		    <label>收货地址：</label>    
                  		              
                   	 		<textarea id="address"  style="resize:none;" name="address" id="textarea" cols="60" rows="10"></textarea>
                  	 </td>
                  	</form>
                   </tr>    
                
                </table>   
                
                    <div  id="chaxundiv" class="operation_button">
					      <a href="javascript:submits()" title="提交" >提交</a> 
					      <a href="cust/addorder1.action?id=1" title="取消" >取消</a>
					</div>
                
                      
            <!--增加报销单 区域 结束-->
        </div>
    </div>
</div>




</body>
</html>