package com.kuang3.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kuang3.entity.IpLog;
import com.kuang3.entity.Order;
import com.kuang3.entity.User;
import com.kuang3.entity.UserLog;

@Repository
public interface UserDao {

	void saveUser(User user);

	void activeUser(User user);

	int vailEmail(User user);

	User login(User formUser);

	User findUserByUid(User user);

	int findEmail(String email);

	List<Order> findOrderByUser(User user);

	void saveIp(IpLog ipLog);

	int isExistIp(IpLog ipLog);

	void saveuserLog(UserLog userLog);

}
