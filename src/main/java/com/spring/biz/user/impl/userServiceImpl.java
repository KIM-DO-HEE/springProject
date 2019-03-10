package com.spring.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.user.userService;
import com.spring.biz.user.userVO;

@Service("userService")
public class userServiceImpl implements userService{
	@Autowired
	private userDAO userdao;
	
	@Override
	public void joinUser(userVO vo) {
		// TODO Auto-generated method stub
		userdao.joinUser(vo);
	}

	@Override
	public userVO login(userVO vo) {
		// TODO Auto-generated method stub
		return userdao.login(vo);
		
	}
}
