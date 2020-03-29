package com.mvc.ideation.signup.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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

import com.mvc.ideation.login.controller.LoginController;
import com.mvc.ideation.signup.biz.SignupBiz;
import com.mvc.ideation.signup.dto.SignupDto;

@Controller
public class SignupController {
	
	private Logger logger = LoggerFactory.getLogger(SignupController.class);

	@Autowired
	private SignupBiz signupbiz;
	
	@RequestMapping(value = "/signup.do", method = RequestMethod.GET)
	public String MovePage(Model model) {
		System.out.println("회원가입 들어왔다.");
		return "/signup/signuppage";
		
	}
	
	@RequestMapping(value = "/chkemail.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean>chkEmail(HttpSession session, @RequestBody SignupDto dto){
		logger.info("AJAX CHKEMAIL");
		System.out.println(dto.getMem_email()+"::입력한 이메일");
		SignupDto chkinfo = signupbiz.chkEmail(dto);
		
		//System.out.println(chkinfo.getMem_email()+"::이메일 체크 뽑힌 이메일");
		boolean check = false;
		if(chkinfo == null) {    //이메일 사용가능
			check = true;
		}
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("check", check);   //이메일 사용가능 시 true / 사용불가 시 false 
		
		return map;
	}
	
	@RequestMapping(value = "/signupres.do", method = RequestMethod.POST)
	public String SignupRes(HttpServletRequest request, Model model, SignupDto dto) {
		logger.info("SIGNUP RES");
		int res = signupbiz.insertInfo(dto);
		
		HttpSession session = request.getSession();
		
		if(res > 0) {
			session.setAttribute("msg", "회원가입이 완료되었습니다!");
			session.setAttribute("loc", "login.do");
			return "alert/alert";
		}else {
			session.setAttribute("msg", "회원가입을 실패하였습니다.");
			session.setAttribute("loc", "signup.do");
			return "alert/alert";
		}
		
	}
}
