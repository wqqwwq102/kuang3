package com.kuang3.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kuang3.dao.UserDao;
import com.kuang3.entity.User;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	public void saveUser(User user) {
		userDao.saveUser(user);
	}
	public void activeUser(User user) {
		userDao.activeUser(user);
	}
	public int vailEmail(User user) {
		int i =0;
		i=userDao.vailEmail(user);
		return i;
	}
	public User login(User formUser) {
		User user = null;
		user = userDao.login(formUser);
		return user;
	}

}
