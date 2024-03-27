package com.gdu.prj00.service;

import java.util.Map;

import org.springframework.http.ResponseEntity;

import com.gdu.prj00.dto.MenuDto;

public interface MenuService {
  ResponseEntity<Map<String, Object>> modifyMember(MenuDto menu);
  ResponseEntity<Map<String, Object>> removeMember(int menuNo);
}
