package com.kuang3.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.kuang3.entity.Message;
import com.kuang3.entity.Order;
import com.kuang3.entity.OrderVo;
import com.kuang3.entity.User;
import com.kuang3.entity.UserLog;
import com.kuang3.service.UserService;
import com.kuang3.util.StrKit;
import com.kuang3.util.UserUtil;

@Controller
@RequestMapping("/userController")
public class UserController {
	@Autowired
	private UserService userService;
	/**
	 * 用户注册
	 * @param user
	 * @return
	 */
	@RequestMapping("reg")
	public ModelAndView reg(User user){
		user.setUid(StrKit.getuuid());
		if(userService.vailEmail(user)==0){
		userService.saveUser(user);
		System.out.println(user);
		
		return  new ModelAndView("success.jsp").addObject("message", "注册成功，请到邮箱进行激活");
		}
		return  new ModelAndView("redirect:/jsps/user/reg.jsp").addObject("error", "邮箱已经被注册");
		}
	/**
	 * 邮箱激活
	 * @param user
	 * @return
	 */
	@RequestMapping("activeUser")
	public ModelAndView activeUser(User user){
		String message = userService.activeUser(user);
		return new ModelAndView("/jsp/user/message.jsp").addObject("message", message);
	}
	
	/**
	 * 用户登陆
	 * @param formUser
	 * @param session
	 * @return
	 */
	@RequestMapping("userLogin")
	public ModelAndView userLogin(User formUser,HttpSession session,HttpServletRequest request){
		User user = userService.login(formUser);
		if(user==null){
			return new ModelAndView("redirect:/jsps/user/log.jsp").addObject("error", "邮箱或者密码错误");
		}
		System.out.println(UserUtil.getIpAddr(request));
		session.setAttribute("user", user);
		String ip = UserUtil.getIpAddr(request);
		Date date = new Date();
		UserLog userLog = new UserLog();
		userLog.setUid(user.getUid());
		userLog.setLoginIP(ip);
		userLog.setLoginTime(date);
		userService.saveuserLog(userLog);
		return new ModelAndView("redirect:/jsp/user/index.jsp");
	}
	/**
	 * 验证码AJAX请求是否正确
	 * @param captcha
	 * @param session
	 * @return
	 */
	@RequestMapping(value="valiCaptcha",method=RequestMethod.POST)
	public@ResponseBody Message valiCaptcha(String captcha,HttpSession session){
		Message msg = new Message();
		String vCode = (String) session.getAttribute("vCode");
		if(vCode.equalsIgnoreCase(captcha)){
			msg.setMessage("pass");
		}else{
			msg.setMessage("nopass");
		}
		return msg;
		
	}
	/**
	 * 验证码邮箱是否被注册
	 * @param captcha
	 * @param session
	 * @return
	 */
	@RequestMapping("valiEmail")
	public @ResponseBody Message valiEmail(String email){
		Message msg = new Message();
		int count = userService.findEmail(email);
		if(count<1){
			msg.setMessage("pass");
		}else{
			msg.setMessage("nopass");
		}
		System.out.println(msg.getMessage());
		return msg;
	}
	/**
	 * 展示我的账户那一栏的所有数据
	 * 待测试
	 * @param session
	 * @return
	 */
	@RequestMapping("listMyInfo")
	public ModelAndView listMyInfo(HttpSession session){
		User user = (User) session.getAttribute("user");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		List<Order> olist = userService.findOrder(user);
		List<OrderVo> ovv = new ArrayList<OrderVo>();
		for (Order order : olist) {
			OrderVo ov = new OrderVo();
			ov.setOrderid(order.getOrderid());
			ov.setMid( order.getMills().getMid());
			ov.setPerformance(order.getMills().getPerformance());
			ov.setMaintenanceCost(order.getMills().getMaintenanceCost());
			ov.setPrice(order.getCount()*ov.getMaintenanceCost());
			ov.setBuyTime(sdf.format(order.getBuyTime()).toString());
			ovv.add(ov);
		}
		JSON jo = (JSON) JSON.toJSON(ovv);
		System.out.println(jo);
		session.setAttribute("arr", JSON.toJSON(jo));
		return new ModelAndView("redirect:/jsp/user/extendHtml/personAccount.jsp").addObject("user", user);
	}
}
