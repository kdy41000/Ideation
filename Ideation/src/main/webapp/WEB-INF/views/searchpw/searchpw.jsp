<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

        <div class="recover-password">
            <div class="title">
                <span>Find to Password</span>
                <p>Enter in the EmailAddress associated with your account</p>
            </div>

            <form action="${pageContext.request.contextPath}/searchpwRes.do" method="post">
                <input type="email" name="mem_email" placeholder="Email Address" id="resetPassword" required>
                <span class="error"></span>
                <a href="#" onclick="chkinfo();" class="btn-signin btn-password">Submit</a>
                <a href="login.do" class="btn-login btn-fade">Cancel and go back to Login page </a>
            </form>

            <div class="notification">
                <p>If you click submit button Please check your Email.
                    <span class="reset-mail"></span>Check your Password and then try to Login. Thanks!</p>
            </div>

        </div>
    </div>
</div>

</section>
<%@ include file="../home/footer.jsp" %>
</body>
<script type="text/javascript">
	function chkinfo(){
		var mem_email = $("input[name=mem_email]").val();
		if(mem_email == ""){
			beautyAlt("이메일을 입력해 주세요!");
		}else{
			$("form").submit();
		}
	}
</script>
</html>