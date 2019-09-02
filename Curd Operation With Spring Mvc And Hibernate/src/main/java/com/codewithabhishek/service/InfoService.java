package com.codewithabhishek.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codewithabhishek.model.InfoModel;

@Service
public interface InfoService {
	
	public void addInfo(InfoModel infomodel);
	public List<InfoModel> infolist();
	public void delete(int id);
}
