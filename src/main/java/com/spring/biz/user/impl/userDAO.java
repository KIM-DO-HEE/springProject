package com.spring.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.spring.biz.common.JDBCUtil;
import com.spring.biz.user.userVO;

@Repository("userDAO")
public class userDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String user_Join = "insert into user values(?,?,?,?)";
	private final String user_Login = "select * from springproject.user where userId=? and userPw=?";
	
	public void joinUser(userVO user) {
		System.out.println("===>JDBC로 joinUser() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(user_Join);
			
			stmt.setString(1, user.getUserId());
			stmt.setString(2, user.getUserPw());
			stmt.setString(3, user.getUserName());
			stmt.setString(4, user.getUserEmail());
			
			stmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public userVO login(userVO user) {
		System.out.println("===>JDBC로 login() 기능 처리");
		userVO uservo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(user_Login);
			
			stmt.setString(1, user.getUserId());
			stmt.setString(2, user.getUserPw());
			
			rs = stmt.executeQuery();
			
			System.out.println(rs);
			
			if(rs.next()) {
				uservo = new userVO();
				uservo.setUserId(rs.getString("userId"));
				uservo.setUserPw(rs.getString("usrePw"));
				uservo.setUserName(rs.getString("userName"));
				uservo.setUserEmail(rs.getString("userEmail"));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return uservo;
	}
}
