package com.gdu.prj00.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.gdu.prj00.dto.MenuDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class MenuDaoImpl implements MenuDao {
  
  private final SqlSessionTemplate sql;
  public final static String NS = "com.gdu.prj00.mybatis.mapper.menu_t.";
  
  @Override
  public List<MenuDto> getMenuList() {
    return sql.selectList(NS + "getMenuList");
  }
}
