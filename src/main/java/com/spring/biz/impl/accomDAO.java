package com.spring.biz.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.biz.accom.accomVO;
import com.spring.biz.common.JDBCUtil;

@Repository("accomDAO")
public class accomDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String accom_Select = "select * from accom";
	
	public List<accomVO> getAccomList(accomVO vo){
		System.out.println("===>JDBC로 selectAccomList()기능 처리");
		List<accomVO> accomList = new ArrayList<accomVO>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(accom_Select);
			rs =  stmt.executeQuery();
			
			while(rs.next()) {
				accomVO accom = new accomVO();
				accom.setAccomId(rs.getInt("accomId"));
				accom.setName(rs.getString("name"));
				accom.setAddress(rs.getString("address"));
				accom.setAccomExplain(rs.getString("accomInfo"));
				accom.setType(rs.getString("type"));
				
				accomList.add(accom);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(accomList);
		return accomList;
	}
}
