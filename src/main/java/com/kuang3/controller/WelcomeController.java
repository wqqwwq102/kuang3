package com.kuang3.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kuang3.entity.IpLog;
import com.kuang3.service.UserService;
import com.kuang3.util.UserUtil;
import com.kuang3.util.VerifyCode;

@Controller
public class WelcomeController {
	@Autowired
	UserService UserService;
	@RequestMapping("index")
	public String index(HttpSession session,HttpServletRequest request){
		String ip = UserUtil.getIpAddr(request);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String ipDate = sdf.format(date);
		IpLog ipLog =new IpLog();
		ipLog.setIp(ip);
		ipLog.setIpDate(ipDate)
		;
		if(UserService.isExistIp(ipLog)<1){
		UserService.saveIp(ipLog);
		}
		return "redirect:/jsp/user/log.jsp";
	}
	@RequestMapping("vCode")
	public void vCode(HttpSession session,HttpServletResponse response){
		VerifyCode vc = new VerifyCode();
		BufferedImage image = vc.getImage();// 获取一次性验证码图片
		// 该方法必须在getImage()方法之后来调用
		// System.out.println(vc.getText());//获取图片上的文本
		try {
			// 把图片写到指定流中
			VerifyCode.output(image, response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 把文本保存到session中，为LoginServlet验证做准备
		session.setAttribute("vCode", vc.getText());
	}	
}
