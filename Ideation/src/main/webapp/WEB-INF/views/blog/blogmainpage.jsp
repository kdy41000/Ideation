<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="blogundermenu.jsp" %>
<section>
  <div class="title"><img alt="logo" src="resources/blogimgstorage/logo/${bloginfo.blog_logo }" style="width:15%; height:150px;"/>
  <span>${bloginfo.blog_name }</span><span>Blog for<a target="_blanck" href="salfia.com">Web Developer</a>| ${bloginfo.blog_description }</span></div>
</section>

</body>
</html>