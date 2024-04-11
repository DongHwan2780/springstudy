package com.gdu.prj00.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.gdu.prj00.service.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class UserController {
  
  private final UserService userService;
  
  // 로그인 페이지로 매핑
  @GetMapping("/menu/login.do") // 엔드포인트 => JSON 형식의 메뉴 리스트를 반환
  public String menuLogin()
  {
    return "menu/login";    
  } 
  
  @PostMapping("/login.do")
  public void login(HttpServletRequest request, HttpServletResponse response)
  {
     
  }
  
  
  
  // 로그아웃 페이지로 매핑
  @GetMapping("/menu/logout.do") // 엔드포인트 => JSON 형식의 메뉴 리스트를 반환
  public String menuLogout()
  {
    return "menu/logout";    
  } 
}
