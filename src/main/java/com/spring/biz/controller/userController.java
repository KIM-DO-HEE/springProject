package com.spring.biz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.user.userService;
import com.spring.biz.user.userVO;
import com.spring.biz.user.impl.userDAO;

@Controller
public class userController {
	@Autowired
	private userService userservice;
	
	@RequestMapping(value="/joinUser.do")
	public String joinUser(userVO vo) {
		System.out.println("join 컨트롤러");
		userservice.joinUser(vo);
		
		return "index.jsp";
	}
	
	@RequestMapping(value="/login.do")
	public String login(userVO vo,HttpSession session) {
		System.out.println("login 컨트롤러");

		if(userservice.login(vo) == null) {
			System.out.println(vo);
			return "loginForm.jsp";
		   }
		else {
			session.setAttribute("user", vo.getUserId());
			return "index.jsp";
		}
	}
	
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session) {
		System.out.println("logout 컨트롤러");
		
		session.invalidate();
		
		System.out.println(session);
		return "index.jsp";
	}
}
