package com.mvc.ideation.login.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.ideation.login.dto.LoginDto;

@Repository
public class LoginDaoImpl implements LoginDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public LoginDto login(LoginDto dto) {
		LoginDto res = new LoginDto();
		
		try {
			res = sqlSession.selectOne(NAMESPACE + "selectLoginfo",dto);
		} catch (Exception e) {
			System.out.println("[error]:login");
			e.printStackTrace();
		}
			
		return res;
	}

}
