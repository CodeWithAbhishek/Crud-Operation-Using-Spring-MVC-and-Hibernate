package com.codewithabhishek.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codewithabhishek.dao.InfoDao;
import com.codewithabhishek.model.InfoModel;



@Service
@Transactional
public class InfoServiceImpl implements InfoService {

	
	@Autowired
	private InfoDao infodao;
	
	public void addInfo(InfoModel infomodel) {
		 infodao.addinfo(infomodel);
		
	}

	public List<InfoModel> infolist() {
		
		return infodao.infolist();
	}

	
	public void delete(int id) {
		
		infodao.delete(id);
	}
	
	
}
