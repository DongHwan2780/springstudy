package com.gdu.prj00.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;

import com.gdu.prj00.dto.MenuDto;

public interface MenuService {

  public List<MenuDto> getMenuList();
  public MenuDto getMenu(int menuNo);
  public ResponseEntity<Map<String, Object>> modifyMenu(Map<String, Object> map);
  public ResponseEntity<Map<String, Object>> removeMember(int memberNo);
}
