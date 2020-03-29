<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/home/footer.css"    
	  rel="stylesheet"    
	  type="text/css" />  	
</head>
<body>
<!-- FOOTER START -->
<div class="footer">
  <div class="contain"  style="margin-left: 23%;">
  <div class="col">
    <h1>QuickMenu</h1>
    <ul>
      <li>Home</li>
      <li></li>
      <li>Services</li>
      <li>Social</li>
      <li>Get in touch</li>
    </ul>
  </div>
  <div class="col">
    <h1>Accounts</h1>
    <ul>
      <li>Login</li>
      <li>Signup</li>
      <li>Search for ID</li>
      <li>Search for PW</li>
    </ul>
  </div>
  <div class="col">
    <h1>Support</h1>
    <ul>
      <li>Contact us</li>
      <li>Web chat</li>
    </ul>
  </div>
   <div class="col">
    <h1>Developer info</h1>
    <ul>
      <li>Name : <br/>DongyoungKim</li>
      <li>Republic : <br/>South Korea</li>
      <li>Email : <br/>kdy41000@gmail.com</li>
      <li>Phone: <br/>82)10-5054-3568</li>
    </ul>
  </div>
  <div class="col social">
    <h1>Social</h1>
    <ul>
      <li><img src="https://svgshare.com/i/5fq.svg" width="32" style="width: 32px;"></li>
      <li><img src="https://svgshare.com/i/5eA.svg" width="32" style="width: 32px;"></li>
      <li><img src="https://svgshare.com/i/5f_.svg" width="32" style="width: 32px;"></li>
    </ul>
  </div>
<div class="clearfix"></div>
</div>
</div>
<div style="background:#190303; color:white; width:100%; height:30px; text-align:center;">
	<address>Made by developer DongyoungKim &copy; 2020</address>
</div>
<!-- END OF FOOTER -->
</body>
<script type="text/javascript">
	function beautyAlt(msg){
		
		Swal.fire({
			  title: msg,
			  text: "버튼을 클릭해 주세요!",
			  icon: 'warning',
			  confirmButtonColor: '#3085d6',
			  confirmButtonText: '확인'
			})
	}
</script>
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</html>