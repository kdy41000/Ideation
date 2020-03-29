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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="resources/js/home/menu.js"></script>
<link href="resources/css/home/menu.css"    
	  rel="stylesheet"    
	  type="text/css" />  
<link href="resources/css/home/header.css"    
	  rel="stylesheet"    
	  type="text/css" />  
<link href="resources/css/home/button.css"    
	  rel="stylesheet"    
	  type="text/css" />  	  

</head>
<body>
<!-- 로그인 전 -->
<c:if test="${null eq sessionScope.logininfo}">
<div id="header">
  <div class="logo" style="margin-left:2%;" onclick="location.href='section.do';">
  	<img alt="logo" src="resources/images/home/logo.png" style="width:10%; height:50px;"/>
    <a href="#" id="logo" style="margin: -10% 0% 0% 8%;">IDEATION</a>
  </div> 
  <input type="text" placeholder="Search Blog" style="width: 25%;
    height: 40px;
    margin: 1.5% 0% 0% 7%;"/>
  <input type="button" value="로그인" onclick="location.href='login.do';" style="width:8%; height:40px; background:#6f3ba9; font-weight:bold; color:white; border-radius:8px; margin-left: 26%;"/>
</div>
<!-- MENU -->
<div id="menu-wrapper">
  <div id="menu-bar"></div>
  
  <div id="menu-nav">
    <ul>
      <li>Home</li>
      <li>Login & Signup</li>
      <li>Start to make Blog</li>
      <li>Start to make Portfolio</li>
    </ul>
  </div>
  
  <div id="menu-tab" class="closed" style="position:absolute; margin-left:96%; color:white;">MENU</div>
</div>
</c:if>
<!-- 로그인 전 -->
<!-- 로그인 후 -->
<c:if test="${null ne sessionScope.logininfo}">
<div id="header">
  <div class="logo" style="margin-left:2%;" onclick="location.href='section.do';">
  	<img alt="logo" src="resources/images/home/logo.png" style="width:10%; height:50px;"/>
    <a href="#" id="logo" style="margin: -10% 0% 0% 8%;">IDEATION</a>
  </div> 
  <input type="text" placeholder="Search Blog" style="width: 25%;
    height: 40px;
    margin: 1.5% 0% 0% 7%;"/>
  <input type="button" value="로그아웃" onclick="location.href='logout.do';" style="width:8%; height:40px; background:red; font-weight:bold; color:white; border-radius:8px; margin-left: 26%;"/>
</div>
<!-- MENU -->
<div id="menu-wrapper">
  <div id="menu-bar"></div>
  
  <div id="menu-nav">
    <ul>
      <li>Home</li>
      <li>Revise MyInfo</li>
      <li>LogOut</li>
      <li>Start to make Blog</li>
      <li>Start to make Portfolio</li>
    </ul>
  </div>
  
  <div id="menu-tab" class="closed" style="position:absolute; margin-left:96%; color:white;">MENU</div>
</div>
</c:if>
<!-- 로그인 후 -->
</body>
</html>