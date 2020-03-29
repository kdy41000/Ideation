package com.mvc.ideation.signup.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.ideation.signup.dao.SignupDao;
import com.mvc.ideation.signup.dao.SignupDaoImpl;
import com.mvc.ideation.signup.dto.SignupDto;

@Service
public class SignupBizImpl implements SignupBiz{

	@Autowired
	private SignupDao dao = new SignupDaoImpl();
	
	@Override
	public SignupDto chkEmail(SignupDto dto) {
		
		return dao.chkEmail(dto);
	}

	@Override
	public int insertInfo(SignupDto dto) {
		
		return dao.insertInfo(dto);
	}

}
