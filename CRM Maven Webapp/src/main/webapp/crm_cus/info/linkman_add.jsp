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
<script type="text/javascript" src="js/javascript.js"></script>
<script src="js/jquery-1.12.4.js"></script>
<script>
	
	$(function(){
	
	
		
		
		
	
		
	})
	
	function checkzuoji(){
	var xx=$("#input_dianhua").val();
			var str=/^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$|(^(13[0-9]|15[0|3|6|7|8|9]|18[8|9])\d{8}$)/;
			if(!str.test(xx)){							
				$("#input_dianhua").val("");
				$("#input_dianhua").attr("placeholder","格式不正确！！！");		
			}else{
			}	
	}
	
	function checkphone(){
	
		var xx=$("#input_phone").val();			
			var str=/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;	
			if(!str.test(xx)){			
				$("#input_phone").val("");
				$("#input_phone").attr("placeholder","格式不正确！！！");		
			}else{
			}
	}
	
	function checknames(){
	
		var xx=$("#names").val();
		var str=/^[u4e00-u9fa5]/;
		
		if(str.test(xx)){		
			$("#names").val("");
			$("#names").attr("placeholder","格式不正确！！！");			
		}else if(xx.length>6){
			alert(xx.length);
			$("#names").val("");
			$("#names").attr("placeholder","名称过长！！！");	
		}
		
	}
	
	function checkjob(){
	
		var xx=$("#jobs").val();
		var str=/^[u4e00-u9fa5]/;
		
		if(str.test(xx)){		
			$("#jobs").val("");
			$("#jobs").attr("placeholder","格式不正确！！！");			
		}else if(xx.length>7){
		alert(xx.length);
		$("#jobs").val("");
			$("#jobs").attr("placeholder","工作名称过长！！！");		
		}
		
	}
		
</script>
<style>


	#chaxundiv{
		
		position:absolute;
		top:50px;
		left:900px;
		
	}	

</style>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;客户信息&nbsp;&gt;&nbsp;联系人&nbsp;&gt;&nbsp;新建联系人
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button">
  	 <a href="javascript:void(0)" title="返回" onclick="back()">返回</a>
  </div>
  <form action="cust/addcon.action" method="post">
  <table border="0" cellpadding="0" cellspacing="0" class="table_show txt">
        <tr>
          <td width="100" align="center">客户编号：</td>
          <td width="200">${bjcus.custid }</td>
          <td width="100" align="center">客户名称：</td>
          <td width="200">${bjcus.cname}</td>
        </tr>
  </table>
  <div class="out_bg">
    <div class="in_bg">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
      <input type="hidden" name="customer.custid" value="${bjcus.custid}">
        <tr>
          <td width="126">姓名</td>
          <td width="411"><input type="text" id="names" onchange="checknames()"    required="required" name="coname"  /></td>
          <td width="126">性别</td>
          <td width="442">
	          <input type="radio" name="cosex" value="男" checked="checked" id="radio" />男
	          <input type="radio" name="cosex" value="女" id="radio" />女
		  </td>
        </tr>
        <tr>
          <td>职位</td>
          <td><input type="text" id="jobs" onchange="javascript:checkjob()" name="cojob" required="required" /></td>
          <td>办公电话</td>
          <td><input id="input_dianhua" onchange="javascript:checkzuoji()"   placeholder="例如：0591-7654321" type="text" name="workphone" required="required"/></td>
        </tr>
        <tr>
          <td>手机</td>
          <td><input id="input_phone" onchange="javascript:checkphone()"     type="text" name="cophone" required="required" /></td>
          <td>备注</td>
          <td><input type="text" name="notes"/></td>
        </tr>
         <tr>
          
          <td colspan="4" align="center" style="height:60px">
	          <input style="height:30px;width:120px" id="submit_but" type="submit" value="提交" />
	          <input style="height:30px;width:120px" type="reset" value="重置" />
          </td>
          
        </tr>
      </table>
      </form>
    </div>
  </div>
</div>
</body>
</html>
