package com.mvc.ideation.signup.dao;

import org.springframework.stereotype.Repository;

import com.mvc.ideation.signup.dto.SignupDto;

@Repository
public interface SignupDao {

	String NAMESPACE = "signupquery.";
	public SignupDto chkEmail(SignupDto dto);
	public int insertInfo(SignupDto dto);
}
