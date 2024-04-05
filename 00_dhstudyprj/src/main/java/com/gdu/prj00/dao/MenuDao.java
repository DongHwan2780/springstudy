package com.gdu.prj00.dao;

import java.util.List;
import java.util.Map;

import com.gdu.prj00.dto.MenuDto;

public interface MenuDao {

  List<MenuDto> getMenuList();
  MenuDto getMenu(int menuNo);
  int modifyMenu(Map<String, Object> map);
}
