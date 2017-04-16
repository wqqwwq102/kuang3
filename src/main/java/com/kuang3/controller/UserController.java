package com.kuang3.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.util.StrKit;
import com.kuang3.entity.User;
import com.kuang3.service.UserService;

@Controller
@RequestMapping("/userController")
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("reg")
	public String reg(User user,HttpSession session){
		user.setUid(StrKit.uuid());
		userService.saveUser(user);
		System.out.println(user);
		return  "redirect:/jsp/user/login.jsp";
	}
	
}
