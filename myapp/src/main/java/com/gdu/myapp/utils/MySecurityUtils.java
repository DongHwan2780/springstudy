package com.gdu.myapp.utils;

import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

public class MySecurityUtils {
  /*
   * SHA-256
   * 1. 어떤 값을 256비트(32바이트)로 암호화하는 해시 알고리즘이다.
   * 2. 암호화는 가능하고 복호화는 불가능하다. (단방향 알고리즘)
   * 3. java.security 패키지를 활용한다.
   * */
  
  public static String getSha256(String origin)
  {
   StringBuilder sb = new StringBuilder();
   
   try {
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    md.update(origin.getBytes());
    byte[] bytes = md.digest();
    for(int i = 0; i < bytes.length; i++)
    {
      sb.append(String.format("%02X", bytes[i]));
    }
    
  } catch (Exception e) {
    e.printStackTrace();
  }
   
   return sb.toString();
  }
  
  // 크로스 사이트 스크립팅(Cross Site Scripting) 방지
  // 1. 스크립트 코드를 입력하여 시스템을 공격할 수 있다.
  // 2. 스크립트 코드에 반드시 필요한 "<script>" 입력을 무력화하기 위해서
  //  "<" 기호와 ">" 기를 엔티티 코드로 변환한다.
  public static String getPreventXss(String origin) {
    return origin.replace("<",  "&lt;").replace(">", "&gt;");
  }
  
  
  /*
   * 인증 코드
   * 1. 랜덤으로 생성
   * 2. 보안을 위해 SecureRandom 클래스를 활용
   * */
  
  public static String getRandomString(int count, boolean letter, boolean number)
  {
   StringBuilder sb = new StringBuilder();
   List<String> list = new ArrayList<String>();
   
   if(letter)
   {
     for(char ch = 'A'; ch <= 'Z'; ch++)
     {
       list.add(ch + "");
     }
     for(char ch = 'a'; ch <= 'z'; ch++)
     {
       list.add(ch + ""); 
     }
   }
   
   if(number)
   {
     for(int i = 0; i <= 9; i++)
     {
       list.add(i + "");
     }
   }
   
   SecureRandom sr = new SecureRandom();
   while(count > 0)
   {
     if(list.size() != 0)
       sb.append(list.get(sr.nextInt(list.size())));
     
     count--;
   }
   
   return sb.toString();
  }
  
  public static void main(String[] args)
  {
    String pw = "1111";
    System.out.println(getSha256(pw));
    
    String title = "<script>alert('hi');</script>";
    System.out.println(getPreventXss(title));
    
    System.out.println(getRandomString(6, false, false));
  }
  
}
