package com.mvc.ideation.blog.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mvc.ideation.blog.dto.BlogDto;

@Repository
public interface BlogDao {

	String NAMESPACE = "blogquery.";
	public int BlogNameInsert(BlogDto dto);
	public BlogDto selectInfo(BlogDto dto);
}
