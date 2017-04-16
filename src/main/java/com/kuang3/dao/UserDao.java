package com.kuang3.dao;

import org.springframework.stereotype.Repository;

import com.kuang3.entity.User;

@Repository
public interface UserDao {

	void saveUser(User user);
	
}
