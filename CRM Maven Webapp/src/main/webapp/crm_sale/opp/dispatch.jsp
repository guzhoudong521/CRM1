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
<title>营销管理</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/javascript.js"></script>
</head>
<script src="js/jquery-1.12.4.js"></script>
<script>
		$(function(){
		
		$.post("us/ajaxlist.action","",function(res){
			
			$("#selectid").html("");
				for(var x in res){
					$("#selectid").append("<option value="+res[x].userid+">"+res[x].uname+"</option>");
				} 
				
			},"json") 
						
		})
	
</script>
<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：营销管理&nbsp;&gt;&nbsp;销售机会管理&nbsp;&gt;&nbsp;<a href="list.html">销售机会</a>&nbsp;&gt;&nbsp;指派销售机会
    <hr class="hr1" />
  </div>
  <div class="operation_button">

  </div>
  <div class="out_bg">
    <div class="in_bg">
    <form action="plan/domod.action" method="post">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
      <input type="hidden" name="planid" value="${currplan.planid }">
        <tr>
          <td width="126" height="50">编号</td>
          <td width="411"><input type="text" name="planid" value="${currplan.planid }" disabled="disabled" /></td>
          <td width="126">机会来源</td>
          <td width="442"><input type="text"  value="${currplan.laiyuan }" disabled="disabled" /></td>
        </tr>
        <tr>
          <td height="50">客户名称</td>
          <td><input type="text" value="${currplan.gongsi }" disabled="disabled" /></td>
          <td>成功几率</td>
          <td><input type="text" value="${currplan.jilv }" disabled="disabled" /></td>
        </tr>
        <tr>
          <td height="50">概要</td>
          <td><input type="text" value="${currplan.gaiyao }" disabled="disabled" /></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="50">联系人</td>
          <td><input type="text" value="${currplan.lianxiren }" disabled="disabled" /></td>
          <td>联系人电话</td>
          <td><input type="text" value="${currplan.dianhua }" disabled="disabled" /></td>
        </tr>
        <tr style="padding:0px;">
          <td valign="top">机会描述</td>
          <td><textarea rows="6" cols="36" name="miaoshu" disabled="disabled"  />${currplan.miaoshu }</textarea></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="50">创建人</td>
          <td><input type="text" value="${currplan.chuangjianren.uname }" disabled="disabled" /></td>
          <td>创建时间</td>
          <td><input type="text" value="${currplan.chuangjianshijian }" disabled="disabled" /></td>
        </tr>
        <tr>
          <td height="50">指派给</td>
          <td>
          	<select id="selectid" name="zhixingren.userid" style="width:311px;height:30px;">			
				
			</select>
           </td>
          <td></td>
          <td></td>
        </tr>
          <tr >
          
          <td colspan="4" align="center" style="height:60px">
	          <input style="height:30px;width:120px" type="submit" value="提交" />
	          <input style="height:30px;width:120px" type="button" onclick="back()" value="取消" />
          </td>
          
        </tr>
      </table>
      </form>
    </div>
  </div>
</div>
</body>
</html>
