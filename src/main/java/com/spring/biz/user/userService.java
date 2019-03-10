package com.spring.biz.user;

public interface userService {
	void joinUser(userVO vo);
	
	userVO login(userVO vo);
}
