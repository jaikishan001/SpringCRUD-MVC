package springmvc.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.userDao;
import springmvc.model.User;

@Service
public class userServices {
	
	@Autowired
	private userDao userdao;
	
	public int createUser(User user) {
		
		return this.userdao.saveUser(user);
	}

}
