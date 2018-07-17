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
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：营销管理&nbsp;&gt;&nbsp;销售机会管理&nbsp;&gt;&nbsp;<a href="list.html">销售机会</a>&nbsp;&gt;&nbsp;新建销售机会
    <hr class="hr1" />
  </div>
  <div class="operation_button">
  	<!-- <a href="#" title="返回" onclick="back()">返回</a>
    <a id="baocun" href="javascript:void(0)" title="保存" >保存</a> -->
  </div>
  <div class="out_bg">
    <div class="in_bg">
    <form id="custplan" action="../../plan/doadd.action" method="post">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td width="126">编号</td>
          <td width="411"><input type="text" disabled="disabled" /></td>
          <td width="126">机会来源</td>
          <td width="442"><input type="text" name="laiyuan" /></td>
        </tr>
        <tr>
          <td>客户名称</td>
          <td><input id="changeid" type="text" name="gongsi" /></td>
          <td>成功几率</td>
          <td><input type="text" name="jilv"/></td>
        </tr>
        <tr>
          <td>概要</td>
          <td><input type="text" name="gaiyao"/></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>联系人</td>
          <td><input type="text" name="lianxiren" /></td>
          <td>联系人电话</td>
          <td><input type="text"  name="dianhua"/></td>
        </tr>
        <tr style="padding:0px;">
          <td valign="top">机会描述</td>
          <td><textarea rows="6" cols="36" name="miaoshu" /></textarea></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>创建人</td>
          <td><input type="text" value="登录人"/></td>
          <td>创建时间</td>
          <td><input type="text" value="当前时间" /></td>
        </tr>
        <tr>
          <td>指派给</td>
          <td>
          	<select id="selectid" style="width:311px;height:30px;" name="zhixingren.userid" >
			
			</select>
           </td>
          <td>指派时间</td>
          <td><input type="text" disabled="disabled"/></td>
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
