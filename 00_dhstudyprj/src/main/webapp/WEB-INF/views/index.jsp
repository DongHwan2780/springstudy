<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>

  <div class="user-space"> 
    <c:if test="${sessionScope.user == null}">
      <a href="${contextPath}/menu/login.do">로그인</a>        
    </c:if>
    <c:if test="${sessionScope.user != null}">
      ${sessionScope.user.name}님 반갑습니다
      <a href="${contextPath}/menu/logout.do">로그아웃</a>
    </c:if>
  </div>

  <a href="${contextPath}/menu/menu.do">메뉴표 가기</a>
   
</body>
</html>