package com.kuang3.dao;

import org.springframework.stereotype.Repository;

import com.kuang3.entity.User;

@Repository
public interface UserDao {

	void saveUser(User user);

	void activeUser(User user);

	int vailEmail(User user);

	User login(User formUser);

	User findUserByUid(User user);
	
}
