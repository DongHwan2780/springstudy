package com.gdu.prj00.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.gdu.prj00.service.MenuService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MenuController {
  private final MenuService menuService;
  
  @GetMapping("/menu/menu.do")
  public void menuMenu()
  {
    
  }
}
