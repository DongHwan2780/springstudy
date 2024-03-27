package com.gdu.prj00.service;

import java.util.Map;

import org.springframework.http.ResponseEntity;

import com.gdu.prj00.dao.MenuDao;
import com.gdu.prj00.dto.MenuDto;

import lombok.RequiredArgsConstructor;

  @RequiredArgsConstructor
  public class MenuServiceImpl implements MenuService {
    private final MenuDao menuDao;
    
    
  @Override 
    public ResponseEntity<Map<String, Object>> modifyMember(MenuDto menu) {
      // TODO Auto-generated method stub
      return null;
    }
  @Override
    public ResponseEntity<Map<String, Object>> removeMember(int menuNo) {
      // TODO Auto-generated method stub
      return null;
    }
}
