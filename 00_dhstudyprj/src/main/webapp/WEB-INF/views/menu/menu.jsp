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
<link rel="stylesheet" href="${contextPath}/resources/css/menu.css">

</head>
<body>
  <div class="title">
    2024년 4월 메뉴표
  </div>
  <table class="table2">
    <tr class="top">
      <td>MON</td>
      <td>TUE</td>
      <td>WED</td>
      <td>THU</td>
      <td>FRI</td>
    </tr>
    <tr id="date">
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
      <td>5</td>
    </tr>
    <tr id="date">
      <td>8</td>
      <td>9</td>
      <td>10</td>
      <td>11</td>
      <td>12</td>
    </tr>
    <tr id="date">
      <td>15</td>
      <td>16</td>
      <td>17</td>
      <td>18</td>
      <td>19</td>
    </tr>
    <tr id="date">
      <td>22</td>
      <td>23</td>
      <td>24</td>
      <td>25</td>
      <td>26</td>
    </tr>
    <tr id="date">
      <td>29</td>
      <td>30</td>
      <td><button id="btn-test">테스트용버튼</button></td>
      <td>
        <input type="text" name="name" value="${menuList[0].menuNo}">
        <input type="text" name="name" value="${menuList[0].bob}">
        <input type="text" name="name" value="${menuList[0].gook}">
        <input type="text" name="name" value="${menuList[0].banchan1}">
        <input type="text" name="name" value="${menuList[0].banchan1}">
      </td>
      <td></td>
    </tr>
  </table>
  
  
<script src="${contextPath}/resources/js/menu.js"></script>

  
</body>
</html>