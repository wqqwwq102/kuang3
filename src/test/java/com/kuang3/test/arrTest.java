package com.kuang3.test;

import org.junit.Test;

public class arrTest {
	@Test
	public void arrTest1(){
		String arr[][]=new String[2][2];
		arr[0][0]="00";
		arr[0][1]="01";
		arr[1][0]="10";
		for (String[] strings : arr) {
			for (String string : strings) {
				System.out.println(string);
			}
			
		}
		
	}
	
}
