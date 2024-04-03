package com.gdu.prj00.controller;

import java.util.List;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gdu.prj00.dto.MenuDto;
import com.gdu.prj00.service.MenuService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@RequiredArgsConstructor
@Controller
@Slf4j
public class MenuController {
  private final MenuService menuService;

  // 받아온 데이터를 이쪽에서 model 객체에 담아 뿌려줘야한다.
  @GetMapping("/menu/menu.do")
  public String menuMenu(Model model)
  {
    model.addAttribute("menuList", menuService.getMenuList());
    return "menu/menu";
  }

  
  // fnShowMenu에서 ajax 요청을 하면 이쪽으로 와서 json 데이터를 받아오고
  @GetMapping(value="/menu", produces = "application/json")
  public ResponseEntity<?> getMenuList()
  {     
    List<MenuDto> menuList = menuService.getMenuList();
    log.info("메뉴리스트", menuList);
    return ResponseEntity.ok().body(menuList);
  }
}

