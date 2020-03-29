package com.mvc.ideation.searchpw.controller;

import java.util.Properties;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.ideation.signup.biz.SignupBiz;
import com.mvc.ideation.signup.biz.SignupBizImpl;
import com.mvc.ideation.signup.dto.SignupDto;

@Controller
public class SearchpwController extends HttpServlet{

	private static final Transport mailSender = null;
	@Autowired
	private SignupBiz signupbiz = new SignupBizImpl();
	
	@RequestMapping(value = "/searchpw.do", method = RequestMethod.GET)
	public String MovePage(Model model) {
		System.out.println("비밀번호찾기 들어왔다.");
		return "/searchpw/searchpw";
		
	}
	
	@RequestMapping(value = "/searchpwRes.do", method = RequestMethod.POST)
	public String searchPwRes(HttpServletRequest request, SignupDto dto) {
		SignupDto dtoRes = signupbiz.chkEmail(dto);
		System.out.println("메일 보내기 들어왔다");
		HttpSession session = request.getSession();
		if(dtoRes == null) {
			session.setAttribute("msg", "입력하신 정보가 존재하지 않습니다.");
			session.setAttribute("loc", "searchpw.do");
			return "alert/alert"; 
		}else {
				String setfrom = "kdy41000@gmail.com";         
			    String tomail  = dtoRes.getMem_email();     // 받는 사람 이메일
			    String title   = request.getParameter("IDEATION에서 보낸 메일입니다.");      // 제목
			    String content = dtoRes.getMem_pw();    // 내용
			   
			    try {
			      MimeMessage message = ((JavaMailSender) mailSender).createMimeMessage();
			      MimeMessageHelper messageHelper 
			                        = new MimeMessageHelper(message, true, "UTF-8");
			 
			      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
			      messageHelper.setTo(tomail);     // 받는사람 이메일
			      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			      messageHelper.setText(content);  // 메일 내용
			     
			      mailSender.send(message);
			      System.out.println("메일 보내기 성공");
			    } catch(Exception e){
			      System.out.println(e);
			    }
			   return null;
		}
		
	}
}
