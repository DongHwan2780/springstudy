package com.gdu.prj01.xml01;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

  public static void method1()
  {
    // appCtx.xml 읽기
    AbstractApplicationContext ctx = new GenericXmlApplicationContext("com/gdu/prj01/xml01/appCtx.xml");
    
    // appCtx.xml 에 등록한 빈(bean) 가져오기
    Calculator cal = ctx.getBean("calculator", Calculator.class);
    
    // 가져온 빈(bean) 사용하기
    cal.add(10,20);
    cal.sub(10, 5);
    cal.mul(10, 3);
    cal.div(10, 4);
    
    ctx.close();    
  }
  
  public static void method2()
  {
    AbstractApplicationContext ctx = new GenericXmlApplicationContext("com/gdu/prj01/xml01/appCtx.xml");
    
    Computer com = ctx.getBean("computer1", Computer.class);
    
    System.out.println(com.getModel());
    System.out.println(com.getPrice());
    com.getCalculator().add(10, 20);
    com.getCalculator().sub(10, 5);
    com.getCalculator().mul(10, 3);
    com.getCalculator().div(10, 4);
    
    ctx.close();
  }
  
  public static void method3()
  {
    AbstractApplicationContext ctx = new GenericXmlApplicationContext("com/gdu/prj01/xml01/appCtx.xml");
    
    Computer com2 = ctx.getBean("computer2", Computer.class);
    
    System.out.println(com2.getModel());
    System.out.println(com2.getPrice());
    com2.getCalculator().add(10, 20);
    com2.getCalculator().sub(10, 5);
    com2.getCalculator().mul(10, 3);
    com2.getCalculator().div(10, 4);
    
    ctx.close();
  }
  
  public static void main(String[] args) {
    
    method3();
  }
}
