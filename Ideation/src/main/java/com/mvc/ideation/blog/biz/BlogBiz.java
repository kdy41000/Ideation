package com.mvc.ideation.blog.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.ideation.blog.dto.BlogDto;

@Service
public interface BlogBiz {

	public int BlogNameInsert(BlogDto dto);     //블로그 간단 정보 insert
	public BlogDto selectInfo(BlogDto dto);  //블로그 가기 전 정보 추출
}
