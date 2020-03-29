package com.mvc.ideation.login.dto;

public class LoginDto {

	private String mem_email;
	private String mem_name;
	private String mem_pw;
	
	public LoginDto() {
		
	}

	public LoginDto(String mem_email, String mem_name, String mem_pw) {
		super();
		this.mem_email = mem_email;
		this.mem_name = mem_name;
		this.mem_pw = mem_pw;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

}
