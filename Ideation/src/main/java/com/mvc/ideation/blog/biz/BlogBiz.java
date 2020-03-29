package com.mvc.ideation.blog.biz;

import org.springframework.stereotype.Service;

import com.mvc.ideation.blog.dto.BlogDto;

@Service
public interface BlogBiz {

	public int BlogNameInsert(BlogDto dto);
}
