package springmvc.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.User;

@Repository
public class userDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	@Transactional
	public int saveUser(User user) {
		
		Integer i=(Integer)this.hibernateTemplate.save(user);
		return i;
	}
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	
}
