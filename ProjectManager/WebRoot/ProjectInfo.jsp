<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("ctx",path);

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'ProjectInfo.jsp' starting page</title>
    <link rel="stylesheet" href="${ctx}/statics/css/project.css" >
  </head>
  
  <body>
  	<div id="div_1">
  		<form action="#" method="get">
    		申报状态 : <select>
    					<option value="0">全部</option>
    					<option value="1">审核中</option>
    					<option value="2">已审核</option>
    				</select> <input type="submit" value="查询"/>
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
	   		<tr>
	   			<td>1</td>
	   			<td>北京社会</td>
	   			<td>121212</td>
	   			<td>1212</td>
	   			<td>已审核</td>
	   			<td>审核</td>
	   		</tr>
    	</table>
    	<p>
    		<a>首页</a>
    		<a>上一页</a>
    		<a>下一页</a>
    		<a>末页</a>
			<span> 第 1 页/共 3 页</span>    	
    	</p>
    </div>
  </body>
</html>
