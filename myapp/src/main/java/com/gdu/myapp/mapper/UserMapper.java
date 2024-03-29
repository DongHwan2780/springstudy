package com.gdu.myapp.mapper;

import java.util.Map;

import com.gdu.myapp.dto.UserDto;

public interface UserMapper {
  UserDto getUserByMap(Map<String, Object> params);
  int insertUser(UserDto user);
}
