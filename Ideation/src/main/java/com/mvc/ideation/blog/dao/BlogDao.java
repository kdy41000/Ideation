package com.mvc.ideation.blog.dao;

import org.springframework.stereotype.Repository;

import com.mvc.ideation.blog.dto.BlogDto;

@Repository
public interface BlogDao {

	String NAMESPACE = "blogquery.";
	public int BlogNameInsert(BlogDto dto);
}
