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
  <h1>수정페이지</h1>
  <div>
    <input type="text" id="menuNo" placeholder="${num}" readonly>
    <br>
    <input type="text" id="bob" placeholder="">
    <br>
    <input type="text" id="gook" placeholder="">
    <br>
    <input type="text" id="banchan1" placeholder="">
    <br>
    <input type="text" id="banchan2" placeholder="">
    <br>
    <button type="button" id="btn-modify" onclick="modify();">변경하기</button>
    <button type="button" id="btn-goback" onclick="goback();">돌아가기</button>
  </div>

  
  <script>
  
  var jqMenuNo = $('#menuNo');
  var jqBob = $('#bob');
  var jqGook = $('#gook');
  var jqBanchan1 = $('#banchan1');
  var jqBanchan2 = $('#banchan2');
  const menuNo = document.getElementById('menuNo').getAttribute('placeholder');
  
  const fnGetContextPath = ()=>{
	  const host = location.host;  /* localhost:8080 */
	  const url = location.href;   /* http://localhost:8080/mvc/getDate.do */
	  const begin = url.indexOf(host) + host.length;
	  const end = url.indexOf('/', begin + 1);
	  return url.substring(begin, end);
	}
  
  
  const fnShowModify = ()=>{
	  console.log(menuNo);
	  $.ajax({
		  type:'GET',
		  url: fnGetContextPath() + '/getMenu',
		  data:'menuNo=' + menuNo,
		  dataType: 'json', 
		  success: function(data)
		  {
			  alert("성공이야2!");
			  document.getElementById('bob').setAttribute('placeholder', data.bob); 
			  document.getElementById('gook').setAttribute('placeholder', data.gook); 
			  document.getElementById('banchan1').setAttribute('placeholder', data.banchan1); 
			  document.getElementById('banchan2').setAttribute('placeholder', data.banchan2); 
		  },
		  error: function(jqXHR)
		  {
			  alert(jqXHR.statusText + '(' + jqXHR.status + ')');
		  }
	  })
  }
  
  const goback = ()=>{
	  window.location.href = fnGetContextPath() + '/menu/menu.do';
	  //window.history.back();
  }
  
  const modify = ()=>{
	  alert("modify 들어왔어!");
	  $.ajax({
		  type: 'PUT',
		  url: fnGetContextPath() + '/modifymenu',
		  contentType: 'application/json',
		  data: JSON.stringify({
			  'bob':jqBob.val(),
			  'gook':jqGook.val(),
			  'banchan1':jqBanchan1.val(),
			  'banchan2':jqBanchan2.val(),
			  'menuNo': menuNo
		  }),
		  dataType:'json',
		  success:(resData)=>{
			  alert("modify 성공!");
			  alert(resData);
			  goback();
		  },
		  error:(jqXHR)=>{
			  alert(jqXHR.statusText + '(' + jqXHR.status + ')');
		  }
	  })
  }
  
  fnShowModify();

  </script>
</body>
</html>