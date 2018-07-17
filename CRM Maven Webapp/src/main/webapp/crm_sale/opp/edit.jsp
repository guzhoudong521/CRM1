<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>营销管理</title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script>
     $(function(){
        $.getJSON("role/getAll.action","",function(res){
          $("#roleSelect").html("");
          $("#roleSelect").append("<option>--请选择--</option>");
            for(var x=0;x<res.length;x++){
               $("#roleSelect").append("<option value="+res[x].roleid+">"+res[x].rolename+"</option>")
            }
        })
     })
     
     function rightChange(id){
			var div = document.getElementById(id);
			div.className = "overflow";
		}
    function sub(){
        $("#selectForm").submit();
    }
</script>
<style>
	body{ margin:0;
		  padding:0}
	.role{  margin:0px 30px 0px 0px;  }
	.right{
		display:none;
		}		
	.overflow{
		padding-left:30px;
		display:block;}	
</style>
</head>

<body style="width:1366px">
<div style="padding:5px;">
  <div class="txt" style="padding-top:3px;" >当前位置：客户开发计划&nbsp;&gt;&nbsp;客户信息管理&nbsp;&gt;&nbsp;<a href="list.html">客户信息</a>&nbsp;&gt;&nbsp;编辑客户信息
    <hr class="hr1" />
  </div>
  <div class="operation_button"> <a href="#" title="返回" onclick="back()">返回</a>
     <a href="javascript:sub()" title="提交" onclick="back()">返回</a>
   </div>
  <div class="out_bg">
    <div class="in_bg" style=" height:470px;">
     <div style="margin:100px 0px 0px 300px">
     	 <form method="post" action="">
         	<table border="0" cellpadding="0" cellspacing="0" class="table_input txt">
                <tr>
                  <td width="50" height="50">角色：</td>
                  <td>
                        <select name="role.roleid" id="roleSelect" >
                            <option>--请选择--</option>
                            <option>BOSS</option>
                            <option>销售主管</option>
                        </select>
                  </td>
                </tr>
                <tr>
                <form action="au/t.action" method="post" id="selectForm">
                  <td width="50" valign="top">权限:</td>
                  <td>
                        <div class="role">
                            <input name="aulist.aid" type="checkbox" value="营销管理" onclick="rightChange('sale')"/>营销管理
                            <div id="sale" class="right">
                                <input name="aulist.list.auid" type="checkbox" value="101"/>销售机会管理<br />
                                <input name="aulist.list.auid" type="checkbox" value="102"/>客户开发计划<br />                    
                            </div>
                        </div>
                        <div class="role">
                            <input name="aulist.aid" type="checkbox" value="营销管理" onclick="rightChange('cust')"/>客户管理
                            <div id="cust" class="right">
                                <input name="aulist.list.auid" type="checkbox" value="103"/>客户信息管理<br />
                                <input name="aulist.list.auid" type="checkbox" value="104"/>客户流失管理<br />
                            </div>
                        </div>
                        <div class="role">
                            <input name="aulist.aid" type="checkbox" value="营销管理"  onclick="rightChange('service')"/>服务管理
                            <div id="service" class="right">
                                <input name="aulist.list.auid" type="checkbox" value="105"/>服务创建<br />
                                <input name="aulist.list.auid" type="checkbox" value="106"/>服务分配<br />
                                <input name="aulist.list.auid" type="checkbox" value="107"/>服务处理<br />
                                <input name="aulist.list.auid" type="checkbox" value="108"/>服务反馈<br />
                                <input name="aulist.list.auid" type="checkbox" value="109"/>服务归档<br />
                            </div>
                        </div>
                        <div class="role">
                            <input name="aulist.aid" type="checkbox" value="营销管理"  onclick="rightChange('chart')"/>统计报表
                            <div id="chart" class="right">
                                <input name="aulist.list.auid" type="checkbox" value="110"/>客户贡献分析<br />
                                <input name="aulist.list.auid" type="checkbox" value="111"/>客户构成分析<br />
                                <input name="aulist.list.auid" type="checkbox" value="112"/>客户服务分析<br />
                                <input name="aulist.list.auid" type="checkbox" value="113"/>客户流失分析<br />
                            </div>
                        </div>
                        <div class="role">
                            <input name="aulist.aid" type="checkbox" value="营销管理"  onclick="rightChange('base')"/>基础数据
                            <div id="base" class="right">
                                <input name="aulist.list.auid" type="checkbox" value="114"/>数据字典管理<br />
                                <input name="aulist.list.auid" type="checkbox" value="115"/>查询产品信息<br />
                                <input name="aulist.list.auid" type="checkbox" value="116"/>查询库存<br />
                            </div>
                        </div>
                        <div class="role">
                            <input name="aulist.aid" type="checkbox" value="营销管理"  onclick="rightChange('sys')"/>系统设置
                            <div id="sys" class="right">
                                <input name="aulist.list.auid" type="checkbox" value="117"/>权限管理<br />
                                <input name="aulist.list.auid" type="checkbox" value="118"/>日志管理<br />
                                <input name="aulist.list.auid" type="checkbox" value="119"/>用户信息管理<br />
                            </div>
                        </div>
                  </td>
               </form>
                </tr>
          </table>
         </form>
     </div>
    </div>
  </div>
</div>
</body>
</html>
