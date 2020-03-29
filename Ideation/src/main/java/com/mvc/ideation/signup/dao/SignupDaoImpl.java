package com.mvc.ideation.signup.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.ideation.signup.dto.SignupDto;

@Repository
public class SignupDaoImpl implements SignupDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public SignupDto chkEmail(SignupDto dto) {
		SignupDto dtoRes = new SignupDto();
		
		System.out.println(dto.getMem_email()+"::DAOIMPL 들어온 이메일");
		try {
			dtoRes = sqlSession.selectOne(NAMESPACE+"chkEmail",dto);
		} catch (Exception e) {
			System.out.println("[error]:chkEmail");
			e.printStackTrace();
		}
		
		return dtoRes;
	}

	@Override
	public int insertInfo(SignupDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"insertInfo",dto);
		} catch (Exception e) {
			System.out.println("[error]:insertInfo");
			e.printStackTrace();
		}
		return res;
	}

}
