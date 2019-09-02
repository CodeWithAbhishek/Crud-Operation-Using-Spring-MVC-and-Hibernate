package com.codewithabhishek.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codewithabhishek.model.InfoModel;

@Repository
public class InfoDaoImpl  implements InfoDao {

	
	@Autowired
	private SessionFactory sessionfactory;
	
	
	
	
	public void addinfo(InfoModel infomodel) {
		
		sessionfactory.getCurrentSession().saveOrUpdate(infomodel);
		
		
	}


	@SuppressWarnings("unchecked")
	public List<InfoModel> infolist() {
		
		return sessionfactory.getCurrentSession().createCriteria(InfoModel.class).list();
	}


	public void delete(int id ) {
		
		sessionfactory.getCurrentSession().createQuery("DELETE FROM codeabhi WHERE id = "+id).executeUpdate();
		
	}

}
