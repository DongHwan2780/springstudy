package com.gdu.prj00.controller;

import java.util.ArrayList;
import java.util.List;

import java.util.Map;
import java.util.Optional;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.gdu.prj00.dto.MenuDto;
import com.gdu.prj00.service.MenuService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@Controller
public class MenuController {
  private final MenuService menuService;

  
  // 메뉴를 보여주는 페이지로 매핑
  @GetMapping("/menu/menu.do") // 엔드포인트 => JSON 형식의 메뉴 리스트를 반환
  public String menuMenu()
  {
    return "menu/menu";    
  }
  
  @ResponseBody   //@Responsebody 어노테이션을 사용하면 http요청 body를 자바 객체로 전달받을 수 있다.
  @GetMapping(value="/menu", produces = "application/json")
  public List<MenuDto> getMenuList()
  {   
    List<MenuDto> menuList = menuService.getMenuList();
    System.out.println(menuList);
    return menuList;
  }
  
  
  @RequestMapping("/menu/modify.do")
  public String getNum(HttpServletRequest request, Model model)
  {
    int num = Integer.parseInt(request.getParameter("num"));
    model.addAttribute("num", num);
    return "menu/modify";
  }
  
  @ResponseBody
  @GetMapping(value="/getMenu", produces = "application/json")
  public MenuDto modify(int menuNo)
  {
    System.out.println(menuService.getMenu(menuNo));
    return menuService.getMenu(menuNo);
  }
  
  @PutMapping(value="/modifymenu", produces = "application/json")   // modify에서 사용, 수정할 값을 가진 Object를 DB로 전송
  public ResponseEntity<Map<String, Object>> modifyMenu(@RequestBody Map<String, Object> map)
  {
    return menuService.modifyMenu(map);
  }
  
  
  @DeleteMapping(value="/deletemenu/{menuNo}", produces = "application/json")
  public ResponseEntity<Map<String, Object>> deleteMenu(@PathVariable(value="menuNo") Optional<String> opt)
  {
   int menuNo = Integer.parseInt(opt.orElse("0"));
   return menuService.removeMember(menuNo);
  }
}

