<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>        
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
                <span>Login</span>
                <p>Welcome back, please login to your account. You can login with facebook, twitter or by your regular
                    user login.</p>
            </div>

            <div>
                <a href="#" class="btn-face"><i class="fa fa-facebook" aria-hidden="true"></i> Kakao</a>
                <a href="#" class="btn-twitter"><i class="fa fa-twitter" aria-hidden="true"></i> Naver</a>
            </div>

            <div class="or"><span>OR</span></div>

            <form action="loginres.do" method="post">
                <input name="mem_email" type="email" placeholder="Email Account">
                <input name="mem_pw" type="password" placeholder="Password">
                <p id="loginchk" style="color:red;">아이디 및 비밀번호를 확인해 주세요.</p>
                <a href="#" onclick="chkinfo();" class="btn-signin" style="background:#5397d7;">Login</a>
                <a href="signup.do" class="btn-signin">Signup</a>

                <a href="searchpw.do" class="btn-member btn-fade">Forgot your password?</a>
            </form>
        </div>
    </div>
</div>

<!--
 * Created by Muhammed Erdem on 10.10.2017.
 *-->
</section>
<%@ include file="../home/footer.jsp" %>

</body>
<script type="text/javascript">
	$(function(){
		$("#loginchk").hide();    /* 로그인 정보가 잘못되었을 때 나타나게 하기 위한다. */
	});

	function chkinfo(){
		var mem_email = $("input[name=mem_email]").val().trim();;
		var mem_pw = $("input[name=mem_pw]").val().trim();;
		
		if(mem_email == ""){
			beautyAlt("아이디를 입력해 주세요!");
			
		}else if(mem_pw == ""){
			beautyAlt("비밀번호를 입력해 주세요!");
		
		}else{
			var loginVal = {
				"mem_email" : mem_email,
				"mem_pw" : mem_pw
			}
			
			$.ajax({
				type:"post",
				url:"ajaxlogin.do",
				data: JSON.stringify(loginVal),   //전송할 데이터 타입을 JSON형태의 문자열로 변환
				contentType:"application/json",   //서버에 데이터를 보낼 때 사용 content - type 헤더의 값
				dataType: "json",        //전송받는 데이터타입
				success: function(msg){
					if(msg.check == true){
						Swal.fire({
							  title: '로그인 성공!',
							  text: "버튼을 클릭해 주세요!",
							  icon: 'warning',
							  confirmButtonColor: '#3085d6',
							  confirmButtonText: '확인'
							}).then(() => {
								 location.href="section.do";
									});
						
					}else{
						$("#loginchk").show();
					}
				},
				error: function(){
					alert("통신 실패.");
				}
			});
		}	
	}
</script>

<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</html>