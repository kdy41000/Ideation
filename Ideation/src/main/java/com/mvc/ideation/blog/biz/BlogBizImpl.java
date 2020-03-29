package com.mvc.ideation.blog.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.ideation.blog.dao.BlogDao;
import com.mvc.ideation.blog.dto.BlogDto;

@Service
public class BlogBizImpl implements BlogBiz{
	
	@Autowired
	private BlogDao dao;

	@Override
	public int BlogNameInsert(BlogDto dto) {
		
		return dao.BlogNameInsert(dto);
	}

}
