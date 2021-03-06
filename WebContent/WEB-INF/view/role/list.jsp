<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="base" value="${pageContext.request.contextPath}"/>
<c:set var="appname" value="role"/>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
<meta charset="utf-8">
<title>ZPro 基础架构 -冰迪网络(出品)</title>
<link href="${base}/css/bootstrap.css" rel="stylesheet">
<link href="${base}/css/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<c:import  url="../common/nav.jsp" />
		<table class="table table-hover">
		<thead>
			<tr>
				<td>编号</td>
				<td>角色名</td>
				<td class="inline-block"><i class="icon-wrench"></i>操作&nbsp;&nbsp;&nbsp;&nbsp;<a href="${base}/${appname}/input.do" ><i class="icon-plus"></i>添加</a></td>
			</tr>
		</thead>
			<c:forEach items="${page.list}" var="xx">
			<tr>
				<td>${xx.id}</td>
				<td>${xx.name}</td>
				<td><a href="${base}/${appname}/input.do?id=${xx.id}" class="btn">修改</a> <a href="${base}/${appname}/delete.do?id=${xx.id}"  class="btn">删除</a> </td>
			</tr>
			</c:forEach>
		</table>
		
		<form class="form-search" method="post"  name="formsearch">
		 <input type="hidden" name="index" value="${page.index}"  id="formindex"/>
		  <input type="text" class="input-medium search-query" name="name_LIKES" value="${page.p.name_LIKES}" placeholder="角色名">
		  <button type="submit" class="btn">Search</button>
		</form>
		
		<tags:pagination page="${page}"/>
		
	</div>

	<!-- javascript -->
	<script src="${base}/js/jquery.js"></script>
	<script src="${base}/js/bootstrap.js"></script>
</body>
</html>
