package com.gdu.prj00.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UserService {
  public void login(HttpServletRequest request, HttpServletResponse response);
}
