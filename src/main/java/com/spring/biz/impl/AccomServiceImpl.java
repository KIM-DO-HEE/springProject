package com.spring.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.accom.AccomService;
import com.spring.biz.accom.accomVO;

@Service("accomService")
public class AccomServiceImpl implements AccomService{
	@Autowired 
	private accomDAO accomDAO;

	@Override
	public List<accomVO> getAccomList(accomVO vo) {
		// TODO Auto-generated method stub
		return accomDAO.getAccomList(vo);
	} 
	
}
