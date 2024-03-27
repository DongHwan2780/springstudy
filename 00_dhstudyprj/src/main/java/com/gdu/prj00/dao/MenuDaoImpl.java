package com.gdu.prj00.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.gdu.prj00.dto.MenuDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class MenuDaoImpl implements MenuDao {
  
  private final SqlSessionTemplate sqlSessionTemplate;
  public final static String NS = "com.gdu.prj00.mybatis.mapper.menu_t.";
  
  @Override
    public int updateMenu(MenuDto menuDto) {
      // TODO Auto-generated method stub
      return 0;
    }
  
  @Override
  public int deleteMenu(int menuNo) {
    // TODO Auto-generated method stub
    return 0;
  }
}
