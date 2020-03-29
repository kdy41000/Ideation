package com.mvc.ideation.signup.biz;

import org.springframework.stereotype.Service;

import com.mvc.ideation.signup.dto.SignupDto;

@Service
public interface SignupBiz {

	public SignupDto chkEmail(SignupDto dto);
	public int insertInfo(SignupDto dto);
}
