package com.gdu.prj00.dao;

import com.gdu.prj00.dto.MenuDto;

public interface MenuDao {
  int updateMenu(MenuDto menuDto);
  int deleteMenu(int menuNo);
}
