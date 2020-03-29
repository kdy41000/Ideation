package com.mvc.ideation.login.dao;

import org.springframework.stereotype.Repository;

import com.mvc.ideation.login.dto.LoginDto;

@Repository
public interface LoginDao {

	String NAMESPACE = "loginquery.";
	public LoginDto login(LoginDto dto);
}
