package com.gdu.prj00.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.gdu.prj00.dao.MenuDao;
import com.gdu.prj00.dto.MenuDto;
import com.gdu.prj00.dto.UserDto;

import lombok.RequiredArgsConstructor;

  @RequiredArgsConstructor
  public class MenuServiceImpl implements MenuService {
    private final MenuDao menuDao;

    @Override
    public List<MenuDto> getMenuList() {

      return menuDao.getMenuList();
    }
    @Override
    public MenuDto getMenu(int menuNo) {
      return menuDao.getMenu(menuNo);
    }
    @Override
    public ResponseEntity<Map<String, Object>> modifyMenu(Map<String, Object> map) {
      int modifyCount = menuDao.modifyMenu(map);
      return new ResponseEntity<Map<String,Object>>(Map.of("modifyCount", modifyCount), HttpStatus.OK);
    }
    
    @Override
    public ResponseEntity<Map<String, Object>> removeMember(int memberNo) {
      int deleteCount = menuDao.deleteMenu(memberNo);
      return new ResponseEntity<Map<String,Object>>(Map.of("deleteCount", deleteCount), HttpStatus.OK);
    }
    
}
