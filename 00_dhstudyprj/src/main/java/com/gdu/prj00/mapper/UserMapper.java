package com.gdu.prj00.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.gdu.prj00.dto.UserDto;

@Mapper
public interface UserMapper {
  UserDto getUserByMap(Map<String, Object> map);
  int insertUser(UserDto user);
}
