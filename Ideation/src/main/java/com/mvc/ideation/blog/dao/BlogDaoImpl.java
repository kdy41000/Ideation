package com.mvc.ideation.blog.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.ideation.blog.dto.BlogDto;

@Repository

public class BlogDaoImpl implements BlogDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int BlogNameInsert(BlogDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "insertblogname",dto);
		} catch (Exception e) {
			System.out.println("[error]:insertblogname");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public BlogDto selectInfo(BlogDto dto) {
		BlogDto dtoRes = new BlogDto();
		
		try {
			dtoRes = sqlSession.selectOne(NAMESPACE + "selectInfo",dto);
		} catch (Exception e) {
			System.out.println("[error]:selectInfo");
			e.printStackTrace();
		}
		
		return dtoRes;
	}

}
