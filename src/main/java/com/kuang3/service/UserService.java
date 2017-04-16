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

}
