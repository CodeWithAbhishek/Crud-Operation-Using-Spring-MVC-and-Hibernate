package com.codewithabhishek.dao;

import java.util.List;

import com.codewithabhishek.model.InfoModel;

public interface InfoDao {
	
	public void addinfo(InfoModel infomodel);
	public List<InfoModel> infolist();
	public void delete(int id);

}
