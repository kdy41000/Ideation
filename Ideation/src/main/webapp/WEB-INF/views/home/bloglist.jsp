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
<script type="text/javascript" src="resources/js/home/bloglist.js"></script>
<link href="resources/css/home/bloglist.css"    
	  rel="stylesheet"    
	  type="text/css" /> 
</head>
<body>
<section>
<div id="content">
        <div id="products">
            <ul>
<%
	for(int i = 0; i < 9; i++){
%>            
                <li class="product">
                    <figure>
                        <img src="resources/images/home/logo.png" alt="" style="width:60%; height:150px; margin-left:20%;"/>
                        <figcaption style="font-weight:bold;">동영의 블로그</figcaption>
                        <input type="button" value="Go" style="width:45%; height:30px; background:purple; color:white; font-weight:bold; border-radius:20px;"/>
                    </figure>
                </li>
<%
	}
%>                
            </ul>

        </div>
    </div>  
</section>
</body>
</html>