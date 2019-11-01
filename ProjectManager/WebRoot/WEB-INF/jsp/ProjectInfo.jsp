<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset= UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("ctx",path);

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="UTF-8">
    <title>My JSP 'ProjectInfo.jsp' starting page</title>
    <link rel="stylesheet" href="${ctx}/statics/css/project.css" >
  </head>
  
  <body>
  	<div id="div_1">
 		<form action="${ctx}/project/main" method="get">
	   		申报状态 : <select name="statue">
	   					<option value="-1">全部</option>
	   					<option value="0">已申报</option>
	   					<option value="1">审核中</option>
	   					<option value="2">已审核</option>
	   				</select><input type="submit" value="查询"/>
	   	</form>
  	</div>
    <div id="div_2">
    	<h1>申报项目列表</h1>
    	<table>
	   		<tr>
	   			<th>项目编号</th>
	   			<th>项目名称</th>
	   			<th>申报开始日期</th>
	   			<th>申报结束日期</th>
	   			<th>申报状态</th>
	   			<th>操作</th>
	   		</tr>
	   		<c:forEach items="${projects}" var="project">
	   			<tr>
		   			<td>${project.id}</td>
		   			<td>${project.projectName}</td>
		   			<td>${project.startDate}</td>
		   			<td>${project.endDate}</td>
		   			<c:choose>
		   				<c:when test="${project.statues == 0}">
		   					<td>已申报</td>
		   					<td><a href="#" onclick="value(this)">审核</a></td>
		   				</c:when>
		   				<c:when test="${project.statues == 1}">
		   					<td>审核中</td>
		   					<td><a href="#" onclick="value(this)">审核</a></td>
		   				</c:when>
		   				<c:when test="${project.statues == 2}">
		   					<td>已审核</td>
		   					<td></td>
		   				</c:when>
		   			</c:choose>
		   		</tr>
	   		</c:forEach>
    	</table>
    	<p>
    		<a href="#">首页</a>
    		<a href="#">上一页</a>
    		<a href="#">下一页</a>
    		<a href="#">末页</a>
			<span> 第 1 页/共 3 页 </span>    	
    	</p>
    </div>
    
    <form id="projectInfo" action="${ctx}/project/review" method="post">
    	<input type="hidden" name="id">
    	<input type="hidden" name="projectName">
    	<input type="hidden" name="startDate">
    	<input type="hidden" name="endDate">
    	<input type="hidden" name="statues">
    </form>
    
    
  </body>
  
<script type="text/javascript" src="${ctx}/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$("table tr:odd").css("background-color","#FFC0CB");
	
	function value(val){
		//closest("tr"): 获取当前元素的父级元素
		var id = $($(val).closest("tr").find("td").eq(0)).text();
		var projectName = $($(val).closest("tr").find("td").eq(1)).text();
		var startDate = $($(val).closest("tr").find("td").eq(2)).text();
		var endDate = $($(val).closest("tr").find("td").eq(3)).text();
		var statues = $($(val).closest("tr").find("td").eq(4)).text();
		
		$("#projectInfo").find("input").eq(0).val(id);
		$("#projectInfo").find("input").eq(1).val(projectName);
		$("#projectInfo").find("input").eq(2).val(startDate);
		$("#projectInfo").find("input").eq(3).val(endDate);
		$("#projectInfo").find("input").eq(4).val(statues);
		$("#projectInfo").submit();
	}
	
	
	
	
	
</script>
  
  
  
  
</html>
