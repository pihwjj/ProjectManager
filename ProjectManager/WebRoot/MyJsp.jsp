<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("ctx",path);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'MyJsp.jsp' starting page</title>
    <link rel="stylesheet" href="${ctx}/statics/css/review.css"  />
  </head>
  
  <body>
  	<div>
  		<h1>申报项目信息</h1>
  		<table>
  			<tr>
  				<td>项目编号</td>
  				<td>21</td>
  			</tr>
  			<tr>
  				<td>项目名称</td>
  				<td>12</td>
  			</tr>
  			<tr>
  				<td>申报开始日期</td>
  				<td>12</td>
  			</tr>
  			<tr>
  				<td>申报结束日期</td>
  				<td>12</td>
  			</tr>
  			<tr>
  				<td>申报状态</td>
  				<td>
  					<select name="statues">
  						<option value="0">已申报</option>
  						<option value="1">审核中</option>
  						<option value="2">已审核</option>
  					</select>
  				</td>
  			</tr>
  			<tr>
  				<td colspan="2" align="center">
  					<input type="button" value="审核"/>
  					<input type="button" value="返回"/>
  				</td>
  			</tr>
  		</table>
  	</div>
		<script type="text/javascript" src="${ctx}/statics/js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
			$("tr td:odd").css("background-color","#FFC0CB");
		
		</script>
  </body>
</html>
