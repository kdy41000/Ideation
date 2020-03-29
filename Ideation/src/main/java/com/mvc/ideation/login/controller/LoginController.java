package com.mvc.ideation.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.ideation.login.biz.LoginBiz;
import com.mvc.ideation.login.dto.LoginDto;

@Controller
public class LoginController {

	private Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginBiz loginbiz;
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String MovePage(Model model) {
		System.out.println("로그인 들어왔다.");
		return "/login/loginpage";
		
	}
	
	@RequestMapping(value = "/ajaxlogin.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> ajaxLogin(HttpSession session, @RequestBody LoginDto dto){
		logger.info("AJAX LOGIN");
		
		LoginDto logininfo = loginbiz.login(dto);
	
		//System.out.println(logininfo.getMem_email()+"::뽑힌 정보");
		boolean check = false;
		if(logininfo != null) {
			session.setAttribute("logininfo", logininfo);    //select한 로그인 정보
			check = true;
		}
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("check", check);   //로그인 성공 시 true / 실패 시 false 
		
		return map;
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String Logout(HttpSession session) {
		session.invalidate();
		System.out.println("로그아웃성공******************");
		return "login/loginpage";
	}
}
