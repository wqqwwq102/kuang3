package com.kuang3.util;

import javax.servlet.http.HttpServletRequest;

public class PagerUtil {
	public  static final int PAGESIZE=2;
	public static int getPageNumber(HttpServletRequest request) {
		int i = 0;
		try {
			//当前台页面没有传递pageNumber,默认为1
			i = 1;
			String pageNumberStr = request.getParameter("pageNumber");
			if(StrKit.notBlank(pageNumberStr)){
				i = Integer.parseInt(pageNumberStr);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
		return i;
	}
	
	public static String getUrl(HttpServletRequest request,String flagString) {
		String str = "";
		try {
			String queryString = request.getQueryString();//参数：？后面的所有内容
			String url = request.getScheme() +"://" + request.getServerName()  
						+ ":" +request.getServerPort() +request.getContextPath()
						+ request.getServletPath();
			if(queryString == null){
				queryString = flagString;
			}
			if(queryString.contains("&pageNumber=")){
				queryString = queryString.substring(0, queryString.lastIndexOf("&pageNumber="));
			}
			str = url + "?"+queryString;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
		return str;
	}
}
