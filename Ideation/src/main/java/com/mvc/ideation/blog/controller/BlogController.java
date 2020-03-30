package com.mvc.ideation.blog.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mvc.ideation.blog.biz.BlogBiz;
import com.mvc.ideation.blog.dto.BlogDto;

@Controller
public class BlogController {

	private Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@Autowired
	private BlogBiz blogbiz;
	
	@RequestMapping(value = "/makeblog.do", method = RequestMethod.GET)
	public String MoveToMakeBlog(HttpServletRequest request,Model model) {
		logger.info("MAKE BLOG");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("logininfo") == null) {
			session.setAttribute("msg", "로그인이 필요합니다!");
			session.setAttribute("loc", "login.do");
			return "alert/alert";
		}else {
			return "blog/makeblogpage";
		}
	}
	
	//이미지 업로드
	@RequestMapping(value = "/makeblogname.do", method = RequestMethod.POST)
	public String MakeBlogName(Model model, @RequestParam("blog_logo") MultipartFile blog_logo,
								@RequestParam("mem_email") String mem_email, @RequestParam("mem_name") String mem_name, @RequestParam("mem_pw") String mem_pw,
								@RequestParam("blog_name") String blog_name, @RequestParam("blog_description") String blog_description,
								HttpServletRequest request) {
		logger.info("MAKE BLOG NAME");
		 String savePath = "C:\\git_ideation_branch\\Ideation\\Ideation\\src\\main\\webapp\\resources\\blogimgstorage\\logo";
		 String originalFilename = blog_logo.getOriginalFilename(); // ???.jpg
		    String onlyFileName = originalFilename.substring(0, originalFilename.indexOf(".")); // fileName
		    String extension = originalFilename.substring(originalFilename.indexOf(".")); // .jpg
		     
		    String rename = onlyFileName + "_" + getCurrentDayTime() + extension; // fileName_20150721-14-07-50.jpg
		    String fullPath = savePath + "\\" + rename;
		     
		    HttpSession session = request.getSession();
		    BlogDto dto = new BlogDto();
		    int res = 0;
		    
		    if (!blog_logo.isEmpty()) {
		        try {
		            byte[] bytes = blog_logo.getBytes();
		            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(fullPath)));
		            stream.write(bytes);
		            stream.close();
		            System.out.println(blog_logo.getOriginalFilename()+":************");
		            System.out.println(rename+":rename*****************");
		            dto.setMem_email(mem_email);
		            dto.setMem_name(mem_name);
		            dto.setMem_pw(mem_pw);
		            dto.setBlog_name(blog_name);
		            dto.setBlog_description(blog_description);
		            dto.setBlog_logo(rename);    //???_2020.01.01_png
		           
		            res = blogbiz.BlogNameInsert(dto);
		            
		            if(res > 0) {
		            	 session.setAttribute("msg", "환영합니다! 블로그를 시작합니다.");
				         session.setAttribute("loc", "blogmain.do");
				         session.setAttribute("mem_email", mem_email);
				         session.setAttribute("blog_name", blog_name);
				         return "alert/alert";
		            }
		         
		        } catch (Exception e) {
		           session.setAttribute("msg", "블로그 정보등록에 실패하였습니다!");
		           session.setAttribute("loc", "makeblog.do");
		           return "alert/alert";
		        }
		    }
			return null;

	}
	
	public String getCurrentDayTime(){      //파일에 구분값을 주기 위한 함수(+현재시간)
	    long time = System.currentTimeMillis();
	    SimpleDateFormat dayTime = new SimpleDateFormat("yyyyMMdd-HH-mm-ss", Locale.KOREA);
	    return dayTime.format(new Date(time));
	}
	
	@RequestMapping(value = "/blogmain.do", method = RequestMethod.GET)
	public String MoveBlogmain(Model model, HttpServletRequest request) {
		logger.info("MOVE BLOG MAIN");
		HttpSession session = request.getSession();
		String mem_email = (String)session.getAttribute("mem_email");
		String blog_name = (String)session.getAttribute("blog_name");
		System.out.println(mem_email+"::"+blog_name);
		BlogDto dto = new BlogDto();
		dto.setMem_email(mem_email);
		dto.setBlog_name(blog_name);
		BlogDto dtoRes = blogbiz.selectInfo(dto);
		System.out.println(dtoRes.getBlog_logo()+"*************로고경로");
		model.addAttribute("bloginfo", dtoRes);
		return "blog/blogmainpage";
		
	}
}
