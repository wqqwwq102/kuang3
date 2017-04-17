package com.kuang3.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kuang3.util.VerifyCode;

@Controller
public class WelcomeController {
	
	@RequestMapping("index")
	public String index(){
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
