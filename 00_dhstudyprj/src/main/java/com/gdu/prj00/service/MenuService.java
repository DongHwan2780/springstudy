package com.gdu.prj00.service;

import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;

import com.gdu.prj00.dto.MenuDto;

public interface MenuService {

  public List<MenuDto> getMenuList();
  
}
