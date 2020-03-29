<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/home/slider.css"    
	  rel="stylesheet"    
	  type="text/css" />  	  
</head>
<body>
<%@ include file="header.jsp" %>
<div>
	<img alt="img" src="resources/images/home/backgroundtop.jpg" style="width:100%; height:250px;"/>
	<h1 style="color:white; text-align:center; margin-top:-10%;">Welcome to IDEATION!</h1>
</div>

<!-- Slider -->
<!-- Slider -->
<div id="slider" style="margin-top: 7%;">
  <div class="slides">
    <div class="slider">
      <div class="legend"></div>
      <div class="content">
        <div class="content-txt">
          <h1>개발자를 위한 블로그</h1>
          <h2>나만의 블로그 & 포트폴리오를 만들어서 내 자신을 표현해보세요.</h2>
        </div>
      </div>
      <div class="image">
        <img src="https://cdn.stocksnap.io/img-thumbs/960w/VVHE6VHMAW.jpg">
      </div>
    </div>
    <div class="slider">
      <div class="legend"></div>
      <div class="content">
        <div class="content-txt">
          <h1>Blogs for Developers</h1>
          <h2>Create your own blog & portfolio to express yourself.</h2>
        </div>
      </div>
      <div class="image">
        <img src="https://cdn.stocksnap.io/img-thumbs/960w/AKWVXIXFA8.jpg">
      </div>
    </div>
    <div class="slider">
      <div class="legend"></div>
      <div class="content">
        <div class="content-txt">
          <h1>開発者のためのブログ</h1>
          <h2>今すぐ自分だけのブログ及びポートフォリオを作って自分のことを表現して下さい。</h2>
        </div>
      </div>
      <div class="image">
        <img src="https://cdn.stocksnap.io/img-thumbs/960w/TPLJK7JPRR.jpg">
      </div>
    </div>
    <div class="slider">
      <div class="legend"></div>
      <div class="content">
        <div class="content-txt">
          <h1>开发商博客</h1>
          <h2>制作只属于自己的博客投资组合,表现自己吧。</h2>
        </div>
      </div>
      <div class="image">
        <img src="https://cdn.stocksnap.io/img-thumbs/960w/XJ2BKV9ASS.jpg">
      </div>
    </div>
  </div>
  <div class="switch">
    <ul>
      <li>
        <div class="on"></div>
      </li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
  </div>
</div>
<!-- Slider -->
<div style="margin-top:2%; text-align:center;">
	<h1>IDEATION으로 전 세계 사람들과 블로그 & 포트폴리오를 공유하세요!</h1>
</div>
<section style="margin-top:2%; text-align:center;">
<h2>IDEATION 사용방법</h2>
	<p>1. 회원가입</p>
	<p>2. 블로그 만들기</p>
	<p>3. 포트폴리오 만들기</p>
	<p>4. follow & following</p><br/><br/>
	<hr style="margin-left:10%; width:80%;"/><br/><br/>
	<p>IDEATION은 우리가 살아가면서 기억해야 하는 수많은 정보들을 저장하기위해 만들었습니다.</p>
    <p>공유 목적 뿐만 아니라</p>
    <p>내가 기억하고싶은것들을 찾아보기 편하게 정리 할 수 있도록 만들어가는것을 목표로 하고 있습니다.</p><br/>
    <input type="button" value="Move to Signup" style="width:8%; height:40px; background:#6f3ba9; font-weight:bold; color:white; border-radius:8px;"/>
    <br/><br/>
    <hr style="margin-left:10%; width:80%;"/><br/><br/>
    <br/>
    <%@ include file="bloglist.jsp" %>
</section><br/><br/><br/>
<%@ include file="footer.jsp" %>
</body>
</html>