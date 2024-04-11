<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <div>
    <form method="POST"
          action="${contextPath}/menu/login.do">
      <div>
        <label for="email">아이디</label>
        <input type="text" id="email" name="email" placeholder="aaa@naver.com">
      </div>
      <div>
        <label for="pw">비밀번호</label>
        <input type="password" id="pw" name="pw" placeholder="●●●●●●●●">
      </div>    
      <div>
        <input type="hidden" name="url" value="${url}">
        <button type="submit">로그인하기</button>   
      </div>    
    </form>
  </div>


</body>
</html>