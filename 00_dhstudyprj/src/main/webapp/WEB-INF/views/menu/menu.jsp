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
  <button type="button" id="btn-reload">리로드테스트</button>
  <button type="button" id="btn-create">생성테스트</button>
  
<script>
var buttonModify;
var buttonRemove;
var buttonReload = document.getElementById('btn-reload');

var tmp = 0;
var bgWhite = 'rgba(255, 255, 255, 1)';
var bgChange = 'rgba(0, 0, 0, 0.1)';
var dbdata;
var date = document.querySelectorAll('#date td');

var arrs = [];
var arrString;
var numsString;
var numsArr;

var deleteCount = 0;
  
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
              console.log(evt.target.value);
              evt.target.innerHTML = "";

              evt.target.style.backgroundColor = bgChange;       
              fnCreateBtn(evt.target);
          
          }
          else if(evt.target.hasAttribute('data-clicked')){
              evt.target.innerHTML = tmp;
              tmp = 0;
              evt.target.removeAttribute('data-clicked');
              buttonModify.remove();
              buttonRemove.remove();
              evt.target.style.backgroundColor = bgWhite;
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
      var pageData = "reloadtest";
      sessionStorage.setItem("reload", pageData);
		  window.location.href = "${contextPath}/menu/modify.do?num=" + (evt.target.parentNode.value + 1);
	  })
  }
  
  const fnRemove = ()=>{
    buttonRemove.addEventListener('click', function(evt){
    	$.ajax({
    		type:'DELETE',
    		url: fnGetContextPath() + '/deletemenu/' + (evt.target.parentNode.value + 1),
    		dataType:'json'
    	})
    	.done(function(){
    		alert("삭제 성공");
    		deleteCount++;
    	})
    	.fail(function(){
    		alert(jqXHR.statusText + '(' + jqXHR.status + ')');
    	})
    })
  }

 const fnShowMenu = () => {
      $.ajax({
          type: 'GET',
          url: fnGetContextPath() + '/menu',
          dataType: 'json',
          success: function(data) {
            alert("성공이야!");
            for(var i = 0; i < date.length; i++)
          	  {
            	  const ran = Math.floor(Math.random() * (data.length - deleteCount));
                if (date[i].innerHTML != "") {
                	  date[i].value = ran;
                	  date[i].innerHTML += '<div id="bob' + i +'">' + data[ran].bob + '</div>';
                	  date[i].innerHTML += '<div id="gook' + i +'">' + data[ran].gook + '</div>';
                	  date[i].innerHTML += '<div id="banchan1' + i +'">' + data[ran].banchan1 + '</div>';
                	  date[i].innerHTML += '<div id="banchan2' + i +'">' + data[ran].banchan2 + '</div>';
                }
          	  } 
            
            for(var i = 0; i < date.length; i++)
            {
              arrs.push(date[i].value);
            } 
            arrString = JSON.stringify(arrs);
            console.log(arrString);
            window.localStorage.setItem('nums', arrString);
            
          },
          error: function(jqXHR) {
              alert(jqXHR.statusText + '(' + jqXHR.status + ')');
          }
      });
  }
 
 const fnReloadMenu = ()=>{
     $.ajax({
         type: 'GET',
         url: fnGetContextPath() + '/menu',
         dataType: 'json',
         success: function(data) {
           alert("리로드성공이야!");
           numsString = window.localStorage.getItem('nums');
           numsArr = JSON.parse(numsString);
           console.log(numsArr);
           for(var i = 0; i < date.length; i++)
             {
               if (date[i].innerHTML != "") {
            	   console.log(numsArr[i]);
            	   date[i].value = numsArr[i];
            	   date[i].innerHTML += '<div id="bob' + i +'">' + data[numsArr[i]].bob + '</div>';
                 date[i].innerHTML += '<div id="gook' + i +'">' + data[numsArr[i]].gook + '</div>';
                 date[i].innerHTML += '<div id="banchan1' + i +'">' + data[numsArr[i]].banchan1 + '</div>';
                 date[i].innerHTML += '<div id="banchan2' + i +'">' + data[numsArr[i]].banchan2 + '</div>';
               }
             }
           //window.localStorage.clear();
         },
         error: function(jqXHR) {
             alert(jqXHR.statusText + '(' + jqXHR.status + ')');
         }
     }); 
 }
 
 const fnReload = ()=>{
	 buttonReload.addEventListener('click', function(evt){
		 console.log(1);
     if(date[0].value == undefined)
    	 {
	  		 fnReloadMenu();
    	 }
    })  
 }
 
 const fnCreate = ()=>{
	   document.getElementById('btn-create').addEventListener('click', function(evt){
		   console.log(1);
		   if(date[0].value == undefined)
			   {
			   fnShowMenu();
			   }
	    })  
	 }
 
fnReload();

fnCreate();


</script>

</body>
</html>