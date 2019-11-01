<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<td>${info.id}</td>
			</tr>
			<tr>
				<td>项目名称</td>
				<td>${info.projectName}</td>
			</tr>
			<tr>
				<td>申报开始日期</td>
				<td>${info.startDate}</td>
			</tr>
			<tr>
				<td>申报结束日期</td>
				<td>${info.endDate}</td>
			</tr>
			<tr>
				<td>申报状态</td>
				<td>
					<select name="statues" id="statues">
						<c:choose>
							<c:when test="${info.statues eq '已申报'}">
								<option selected="selected" value="0">已申报</option>
								<option value="1">审核中</option>
								<option value="2">已审核</option>
							</c:when>
							<c:when test="${info.statues eq '审核中'}">
								<option selected="selected" value="1">审核中</option>
								<option value="2">已审核</option>
							</c:when>
							<c:when test="${info.statues eq '已审核'}">
								<option value="2">已审核</option>
							</c:when>
						</c:choose>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="审核" onclick="modify(${info.id})"/>
					<input type="button" value="返回" onclick="javascript:history.back()"/>
				</td>
			</tr>
		</table>
  	</div>
		<script type="text/javascript" src="${ctx}/statics/js/jquery-1.12.4.js"></script>
		<script type="text/javascript">
			$("tr td:odd").css("background-color","#FFC0CB");
			
			//修改项目状态
			function modify(id){
				var path = "${ctx}";
				var statues = $("select[name='statues'] option:selected").val();
				location.href= path+"/project/modify?statue="+statues+"&id="+id;
			}	
			
		</script>
  </body>
</html>
