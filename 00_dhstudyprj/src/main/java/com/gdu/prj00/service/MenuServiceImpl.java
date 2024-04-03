package com.gdu.prj00.service;

import java.util.List;

import com.gdu.prj00.dao.MenuDao;
import com.gdu.prj00.dto.MenuDto;

import lombok.RequiredArgsConstructor;

  @RequiredArgsConstructor
  public class MenuServiceImpl implements MenuService {
    private final MenuDao menuDao;

    @Override
    public List<MenuDto> getMenuList() {
      System.out.println(menuDao.getMenuList());
      return menuDao.getMenuList();
    }
    
}
