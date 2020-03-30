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
<script type="text/javascript" src="resources/js/login/loginpage.js"></script>
<link href="resources/css/login/loginpage.css"    
	  rel="stylesheet"    
	  type="text/css" />  

</head>
<body>
<%@ include file="../home/header.jsp" %>
<section>
<div class="wrapper">
    <div class="sign-panels">
        <div class="login">
            <div class="title">
                <span>Let's Make Blog</span>
                <p>Welcome to IDEATION, Please write down your blog title.</p>
            </div>

            <form action="makeblogname.do" method="post" enctype="multipart/form-data">
                <input name="mem_email" type="email" value="${sessionScope.logininfo.mem_email }" readonly/>
                <input name="mem_name" type="text" value="${sessionScope.logininfo.mem_name }" readonly/>
                <input name="mem_pw" type="hidden" value="${sessionScope.logininfo.mem_pw }"/>
                <input name="blog_name" type="text" value="" placeholder="블로그 이름을 입력해 주세요."/>
                <input name="blog_description" type="text" value="" placeholder="블로그에 대한 간단한 설명을 입력해 주세요."/>
                <input type="file" name="blog_logo" placeholder="블로그 로고를 선택해 주세요."/>
                <a href="#" onclick="chkinfo();" class="btn-signin" style="background:#5397d7;">Make the blog</a>
            </form>
        </div>
    </div>
</div>
</section>
<%@ include file="../home/footer.jsp" %>
</body>
<script type="text/javascript">
	function chkinfo(){
		var blog_name = $("input[name=blog_name]").val();
		var blog_description = $("input[name=blog_description]").val();
		var blog_logo = $("input[name=blog_logo]").val();
		
		if(blog_name ==""){
			beautyAlt("블로그 이름을 입력해 주세요.");
		}else if(blog_description ==""){
			beautyAlt("블로그에 대한 간단한 설명을 입력해 주세요.");
		}else if(blog_logo ==""){
			beautyAlt("블로그 로고를 선택해 주세요.");
		}else{
			$("form").submit();
		}
	}
</script>
</html>