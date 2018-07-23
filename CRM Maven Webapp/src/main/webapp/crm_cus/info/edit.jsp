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
<script src="js/jquery-1.12.4.js"></script>
<script>
		$(function(){
		
	
			$.post("us/ajaxlist.action","",function(res){				
				$("#selectid").html("");
				var xx='${bjcus.mgr.userid}';
				
					for(var x in res){
					
						if(res[x].userid==xx){
						$("#selectid").append("<option selected value="+res[x].userid+">"+res[x].uname+"</option>");
						}else{
							$("#selectid").append("<option value="+res[x].userid+">"+res[x].uname+"</option>");
						}
					} 	
				},"json") 
				
				
		
				$.post("cust/getallarea.action","",function(res){					
					$("#areaid").html("");
					var xx='${bjcus.area.areaid}';
					for(var i in res){
						if(res[i].areaid==xx){
							$("#areaid").append("<option selected value="+res[i].areaid+" >"+res[i].areaname+"</option>");
						}else{
							$("#areaid").append("<option value="+res[i].areaid+" >"+res[i].areaname+"</option>");
						}
						
					}					
				},"json")
	
				$.post("cust/getallgrade.action","",function(res){
					$("#gradeid").html("");
					var xx='${bjcus.custgrade.gid}';
					for(var i in res){
						if(res[i].gid==xx){
							$("#gradeid").append("<option selected value="+res[i].gid+">"+res[i].gname+"</option>");	
						}else{
							$("#gradeid").append("<option value="+res[i].gid+">"+res[i].gname+"</option>");	
						}
					}		
				},"json");			
						
		})
	
</script>
</head>

<body>
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;编辑客户信息&nbsp;&gt;&nbsp;
    <hr class="hr1" />
  </div>
  <div class="operation_button">
  </div>
  <div class="out_bg">
    <div class="in_bg">
    <form id="custplan" action="cust/modcust.action" method="post">
      <table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
        <tr>
          <td width="126">客户编号</td>
          <td width="411">
          <input type="text" name="custid" value="${bjcus.custid }" disabled="disabled" />
          <input type="hidden" name="custid" value="${bjcus.custid }"/>
          </td>
          <td width="126">客户名称</td>
          <td width="442"><input type="text" value="${bjcus.cname}" name="cname" /></td>
        </tr>
        <tr>
          <td>客户经理</td>
          <td>        
          <select id="selectid" name="mgr.userid"  >
          </select>
          </td>
          <td>地区</td>
          <td>
          <select id="areaid" name="area.areaid" >
          </select>
          </td>
        </tr>
        <tr>
          <td>客户等级</td>
          <td>          
          <select id="gradeid" name="custgrade.gid" >
          </select>
          </td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
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
