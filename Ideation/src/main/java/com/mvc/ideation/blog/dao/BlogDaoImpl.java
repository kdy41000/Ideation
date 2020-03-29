package com.mvc.ideation.blog.dao;

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

}
