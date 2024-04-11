package com.gdu.prj00.service;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.gdu.prj00.dto.UserDto;
import com.gdu.prj00.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
  
  private final UserMapper userMapper;
  
  public UserServiceImpl(UserMapper userMapper) {
   this.userMapper = userMapper;
  }
  
  @Override
  public void login(HttpServletRequest request, HttpServletResponse response) {
    try {
      String email = request.getParameter("email");
      String pw = request.getParameter("pw");
      
      Map<String, Object> params = Map.of("email", email, "pw", pw);
      
      UserDto user = userMapper.getUserByMap(params);
      
      if(user != null)
      {
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        session.setMaxInactiveInterval(60 * 10);
        
        response.sendRedirect(request.getParameter("url"));
      }
      else
      {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>");
        out.println("alert('일치하는 회원 정보가 없습니다.');");
        out.println("location.href='" + request.getContextPath() + "/main.page';");
        out.println("</script>");
        out.flush();
        out.close();        
      }
      
      
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    
  }
}
