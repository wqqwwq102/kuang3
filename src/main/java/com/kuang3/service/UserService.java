package com.kuang3.service;

import java.io.IOException;
import java.text.MessageFormat;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kuang3.dao.UserDao;
import com.kuang3.entity.IpLog;
import com.kuang3.entity.Mail;
import com.kuang3.entity.Order;
import com.kuang3.entity.User;
import com.kuang3.util.MailKit;
import com.kuang3.util.PropKit;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	public void saveUser(User user) {
		userDao.saveUser(user);
		//发邮件
		PropKit.use("email_template.properties");
		String host = PropKit.get("host");
		String username = PropKit.get("username");
		String password = PropKit.get("password");
		Session session = MailKit.createSession(host, username, password);
		String from = PropKit.get("from");
		String to = user.getEmail();
		String subject = PropKit.get("subject");
		//{0}  {1} 
		String content = MessageFormat.format(PropKit.get("content"), user.getUid());
		Mail mail = new Mail(from, to, subject, content);
		try {
			MailKit.send(session, mail);
		} catch (Exception e) {
			e.printStackTrace();
			}
	}
	public String activeUser(User user) {
		boolean bl=false;
		User blUser = userDao.findUserByUid(user);
		if(blUser==null){
			return "该邮箱不存在，请联系管理员";
		}
		if(blUser.getStatus()==1){
			return "该邮箱已经激活，请不要重复激活";
		}
		userDao.activeUser(user);
		return "激活成功";
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
	public int findEmail(String email) {
		int count = 0;
		count = userDao.findEmail(email);
		return count;
	}
	public List<Order> findOrder(User user) {
		List<Order> olist = userDao.findOrderByUser(user);
		
		return olist;
	}

	public void saveIp(IpLog ipLog) {
		userDao.saveIp(ipLog);
	}
	
	public int isExistIp(IpLog ipLog) {
		int i =0;
		i=userDao.isExistIp(ipLog);
		return i;
	}

}
