package com.mvc.ideation.login.biz;

import org.springframework.stereotype.Service;

import com.mvc.ideation.login.dto.LoginDto;

@Service
public interface LoginBiz {

	public LoginDto login(LoginDto dto);
}
