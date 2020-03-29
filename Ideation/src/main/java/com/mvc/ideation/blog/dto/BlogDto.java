package com.mvc.ideation.blog.dto;

public class BlogDto {

	private int blogseq;            //블로그 구분 Primary Key
	private String mem_email;       //회원정보
	private String mem_name;        //회원정보
	private String mem_pw;          //회원정보
	private String blog_name;        //블로그 이름
	private String blog_description;   //블로그 간단 설명
	private String blog_logo;
	
	public BlogDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BlogDto(int blogseq, String mem_email, String mem_name, String mem_pw, String blog_name,
			String blog_description, String blog_logo) {
		super();
		this.blogseq = blogseq;
		this.mem_email = mem_email;
		this.mem_name = mem_name;
		this.mem_pw = mem_pw;
		this.blog_name = blog_name;
		this.blog_description = blog_description;
		this.blog_logo = blog_logo;
	}

	public int getBlogseq() {
		return blogseq;
	}

	public void setBlogseq(int blogseq) {
		this.blogseq = blogseq;
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

	public String getBlog_name() {
		return blog_name;
	}

	public void setBlog_name(String blog_name) {
		this.blog_name = blog_name;
	}

	public String getBlog_description() {
		return blog_description;
	}

	public void setBlog_description(String blog_description) {
		this.blog_description = blog_description;
	}

	public String getBlog_logo() {
		return blog_logo;
	}

	public void setBlog_logo(String blog_logo) {
		this.blog_logo = blog_logo;
	}
	
	
}
