package com.mvc.ideation.login.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.ideation.login.dao.LoginDao;
import com.mvc.ideation.login.dao.LoginDaoImpl;
import com.mvc.ideation.login.dto.LoginDto;

@Service
public class LoginBizImpl implements LoginBiz{

	@Autowired
	private LoginDao dao = new LoginDaoImpl();
	
	@Override
	public LoginDto login(LoginDto dto) {
		
		return dao.login(dto);
	}

}
