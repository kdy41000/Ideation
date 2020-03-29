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
<link href="resources/css/signup/signuppage.css"    
	  rel="stylesheet"    
	  type="text/css" />	  
</head>
<body>
<%@ include file="../home/header.jsp" %>
<section>
<div class="wrapper">
    <div class="sign-panels">
        <div class="signup">
            <div class="title">
                <span>Sign Up</span>
                <p>Create a new account. You can sign up with your facebook or twitter accunt. Or your regular user
                    login.</p>
            </div>

            <div>
                <a href="#" class="btn-face"><i class="fa fa-facebook" aria-hidden="true"></i> Kakao</a>
                <a href="#" class="btn-twitter"><i class="fa fa-twitter" aria-hidden="true"></i> Naver</a>
            </div>

            <div class="or"><span>OR</span></div>

            <form action="signupres.do" method="post">
                <input type="email" name="mem_email" placeholder="Email Address">
                <input type="button" value="Check" id="chkemail" onclick="chkEmailAccount();"/>
                	<p id="cannotuse" style="color:red; margin-top:-9.5%; margin-left:-23%;">중복된 이메일 존재<br/><br/></p>
                	<p id="canuse" title="n" style="color:blue; margin-top:-9.5%; margin-left:-23%;">이메일 사용가능<br/><br/></p>
                <input type="text" name="mem_name" placeholder="Username">
                <input type="password" name="mem_pw" placeholder="Password">
                <input type="password" id="chkpw" placeholder="Repeat Password">

                <a href="#" onclick="chkTotalinfo();" class="btn-signin">Sign Up</a>
                <a href="javascript:void(0)" class="btn-login btn-fade">Already have an account, Sign In <i
                        class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
            </form>
        </div>
    </div>
</div>
 </section>
 <%@ include file="../home/footer.jsp" %>
</body>
<script type="text/javascript">
$(function(){
	$("#canuse").hide();
	$("#cannotuse").hide();
});
	function chkEmailAccount(){
		
		var mem_email = $("input[name=mem_email]").val().trim();
		
		if(mem_email == ""){
			beautyAlt("이메일을 입력해주세요!");
		}else{
			var chkEmailVal = {
					"mem_email" : mem_email
			}
			
			$.ajax({
				type:"post",
				url:"chkemail.do",
				data: JSON.stringify(chkEmailVal),   //전송할 데이터 타입을 JSON형태의 문자열로 변환
				contentType:"application/json",   //서버에 데이터를 보낼 때 사용 content - type 헤더의 값
				dataType: "json",        //전송받는 데이터타입
				success: function(msg){
					if(msg.check == true){
						$("#cannotuse").hide();
						document.getElementById("canuse").title="y";
						//$("#canuse").attr("title",'y');
						$("#canuse").show();
					}else{
						$("#canuse").hide();
						document.getElementById("canuse").title="n";
						$("#cannotuse").show();		
					}
				},
				error: function(){
					alert("통신 실패.");
				}
			});
		}	
	}
	
	function chkTotalinfo(){
		//alert("서브밋");
		var titleStatus = document.getElementById("canuse");
		//alert(titleStatus.title);
		if($("input[name=mem_email]").val() == ""){
			beautyAlt("이메일을 입력해 주세요!");
			//alert("이메일을 입력해 주세요!");
		}else if(titleStatus.title=="n"){
			beautyAlt("이메일 중복체크를 진행해주세요!");
			//alert("이메일 중복체크를 진행해주세요!");
		}else if($("input[name=mem_name]").val() ==""){
			beautyAlt("이름을 입력해 주세요!");
			//alert("이름을 입력해 주세요!");
		}else if($("input[name=mem_pw]").val()==""){
			beautyAlt("비밀번호를 입력해 주세요!");
			//alert("비밀번호를 입력해 주세요!");
		}else if($("#chkpw").val()=="" || $("#chkpw").val() != $("input[name=mem_pw]").val()){
			beautyAlt("비밀번호가 일치하지 않습니다.");
			//alert("비밀번호가 일치하지 않습니다.");
		}else{
			$("form").submit();
		}
	}
</script>
</html>