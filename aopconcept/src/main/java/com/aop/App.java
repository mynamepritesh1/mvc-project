package com.aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.aop.services.paymentService;

public class App {
	public static void main(String[] args) {
		
		ApplicationContext context =new ClassPathXmlApplicationContext("com/aop/config.xml");
		paymentService paymentObject =context.getBean("payment",paymentService.class);
		
		//auth,print:paymentStarted
		paymentObject.makepayment();
		
	}

}
