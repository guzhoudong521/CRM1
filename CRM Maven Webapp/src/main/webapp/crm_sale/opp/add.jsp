<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>营销管理</title>
<link href="../../css/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/javascript.js"></script>
<script src="../../js/jquery-1.12.4.js"></script>
<script>
		$(function(){
		
		$.post("../../us/ajaxlist.action","",function(res){
		
			$("#selectid").html("");
				for(var x in res){
					$("#selectid").append("<option value="+res[x].userid+">"+res[x].uname+"</option>");
				} 
				
			},"json") 
						
		})
	
</script>
<!-- <style>	
	#chaxundiv{
		
		position:absolute;
		top:50px;
		left:800px;
		
	}	
</style> -->
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：营销管理&nbsp;&gt;&nbsp;销售机会管理&nbsp;&gt;&nbsp;销售机会&nbsp;&gt;&nbsp;新建销售机会
    <hr class="hr1" />
  </div>
  <div id="chaxundiv" class="operation_button">
  	<a href="javascript:void(0)" title="返回" onclick="back()">返回</a>
    <!-- <a id="baocun" href="javascript:void(0)" title="保存" >保存</a> -->
  </div>
  <div class="out_bg">
    <div class="in_bg">
    <form id="custplan" action="../../plan/doadd.action" method="post">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td width="126">编号</td>
          <td width="411"><input type="text" disabled="disabled" /></td>
          <td width="126">机会来源</td>
          <td width="442"><input type="text" name="laiyuan" required="required"  /></td>
        </tr>
        <tr>
          <td>客户名称</td>
          <td><input id="changeid" type="text" name="gongsi" required="required" /></td>
          <td>成功几率</td>
          <td><input type="text" name="jilv" required="required"/></td>
        </tr>
        <tr>
          <td>概要</td>
          <td><input type="text" name="gaiyao"/></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>联系人</td>
          <td><input type="text" name="lianxiren" required="required"/></td>
          <td>联系人电话</td>
          <td><input type="text"  name="dianhua" required="required"/></td>
        </tr>
        <tr style="padding:0px;">
          <td valign="top">机会描述</td>
          <td><textarea rows="6" cols="40" name="miaoshu"  required="required"/></textarea></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
       <tr>
        </tr>
        <tr >
          
          <td colspan="4" align="center" style="height:60px">
	          <input style="height:30px;width:120px" type="submit" value="提交" />
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
