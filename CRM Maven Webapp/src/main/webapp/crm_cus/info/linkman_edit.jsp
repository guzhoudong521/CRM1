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
			var sex='${currcon.cosex}';			
			$("input[value="+sex+"]").attr("checked","checked");		
		})
</script>

</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;客户信息&nbsp;&gt;&nbsp;联系人&nbsp;&gt;&nbsp;编辑联系人
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button">
   <a href="javascript:void(0)" title="返回" onclick="back()">返回</a>
  </div>
  
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
    <form action="cust/modcon.action" method="post">
    <input type="hidden" name="contcatid" value="${currcon.contcatid}">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td width="126">姓名</td>
          <td width="411"><input type="text" name="coname" value="${currcon.coname}" /></td>
          <td width="126">性别</td>
          <td width="442">
	          <input type="radio" name="cosex" value="男" id="radio" />男
	          <input type="radio" name="cosex" value="女" id="radio" />女
		  </td>
		  
        </tr>
        <tr>
          <td>职位</td>
          <td><input type="text" name="cojob" value="${currcon.cojob}" /></td>
          <td>办公电话</td>
          <td><input type="text" name="workphone" value="${currcon.workphone}" /></td>
        </tr>
        <tr>
          <td>手机</td>
          <td><input type="text" name="cophone" value="${currcon.cophone}" /></td>
          <td>备注</td>
          <td><input type="text" name="notes" value="${currcon.notes}" /></td>
        </tr>
        
        <tr>
          
          <td colspan="4" align="center" style="height:60px">
	          <input style="height:30px;width:120px" type="submit" value="提交" />
	          <input style="height:30px;width:120px" type="button"  onclick="back()" value="取消" />
          </td>
          
        </tr>
      </table>
      
      </form>
    </div>
  </div>
</div>
</body>
</html>
