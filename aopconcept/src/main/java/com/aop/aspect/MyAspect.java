package com.aop.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

// make the aspect class
@Aspect
public class MyAspect {
	
	//make the advice if we want to add all method then just *c instead of makepayment
	@Before("execution(* com.aop.services.PaymentServiceImpl.*())")
	public void printBefore() {
		System.out.println("payment Started...");
	}

}
