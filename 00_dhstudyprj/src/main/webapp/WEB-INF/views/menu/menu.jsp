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
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </table>
  
  
<script>
var buttonModify;
var buttonRemove;
var tmp = 0;
var bgWhite = 'rgba(255, 255, 255, 1)';
var bgChange = 'rgba(0, 0, 0, 0.1)';
  
const fnGetContextPath = ()=>{
  const host = location.host;  /* localhost:8080 */
  const url = location.href;   /* http://localhost:8080/mvc/getDate.do */
  const begin = url.indexOf(host) + host.length;
  const end = url.indexOf('/', begin + 1);
  return url.substring(begin, end);
}
  
  document.querySelector('.table2').addEventListener('click', function(evt) {
      if (evt.target.tagName === 'TD' && evt.target.parentNode.id == "date") {
          if (!evt.target.hasAttribute('data-clicked') && tmp == 0) {          // data-clicked 속성이 없으면
              evt.target.setAttribute('data-clicked', 'true');

              tmp = evt.target.innerHTML;           
              console.log(tmp);
              evt.target.innerHTML = "";

              evt.target.style.backgroundColor = bgChange;       
              fnCreateBtn(evt.target);
          
          }
          else if(evt.target.hasAttribute('data-clicked')){
              evt.target.innerHTML = tmp;
              tmp = 0;
              evt.target.removeAttribute('data-clicked');
              evt.target.style.backgroundColor = bgWhite;
              console.log(1);         
          }
      }
  });
  
  const fnCreateBtn = (evt)=>{
      buttonModify = document.createElement('button');
      buttonModify.type = 'button';
      buttonModify.id = 'btn-modify';
      buttonModify.textContent = '수정하기';
      buttonModify.classList.add('btn-modify');
      buttonModify.style.backgroundColor = 'rgba(255, 0, 0, 0.1)';
      buttonModify.style.width = '80px';
      buttonModify.style.height = '40px';
      buttonModify.style.margin = '10px auto';              
      evt.appendChild(buttonModify);

      buttonRemove = document.createElement('button');
      buttonRemove.type = 'button';
      buttonRemove.id = 'btn-remove';
      buttonRemove.textContent = '삭제하기';
      buttonRemove.classList.add('btn-remove');
      buttonRemove.style.backgroundColor = 'rgba(0, 0, 255, 0.1)';
      buttonRemove.style.width = '80px';
      buttonRemove.style.height = '40px';
      buttonRemove.style.margin = '10px auto';    
      evt.appendChild(buttonRemove);
      
      fnModify(buttonModify);
      fnRemove(buttonRemove);
  }
  
  const fnModify = ()=>{
    buttonModify.addEventListener('click', function(evt){
          var str = 'rgba(';
          for(var i = 0; i < 3; i++)
          {
            var color = Math.random() * 255;
            str += color + ',';                 
          }
          str += '1)';
          buttonModify.style.backgroundColor = str;
      })  
  }
  
  const fnRemove = ()=>{
    buttonRemove.addEventListener('click', function(evt){
          var str = 'rgba(';
          for(var i = 0; i < 3; i++)
          {
            var color = Math.random() * 255;
            str += color + ',';                 
          }
          str += '1)';
          buttonRemove.style.backgroundColor = str;
      })  
  }

 const fnShowMenu = () => {
      $.ajax({
          type: 'GET',
          url: fnGetContextPath() + '/menu',
          dataType: 'json',
          success: function(data) {
        	  console.log(data);
            alert("성공이야!");
            var tmp = document.querySelectorAll('#date td');
            for(var i = 0; i < tmp.length; i++)
          	  {
                if (tmp[i].innerHTML != "") {
                    // 받아온 데이터를 이용하여 처리
                    tmp[i].innerHTML += '<div>' + data[i].bob + '</div>';
                    tmp[i].innerHTML += '<div>' + data[i].gook + '</div>';
                    tmp[i].innerHTML += '<div>' + data[i].banchan1 + '</div>';
                    tmp[i].innerHTML += '<div>' + data[i].banchan2 + '</div>';
                }
          	  } 
          },
          error: function(jqXHR) {
              alert(jqXHR.statusText + '(' + jqXHR.status + ')');
          }
      });
  }
    
   
 fnShowMenu();

</script>


  
</body>
</html>