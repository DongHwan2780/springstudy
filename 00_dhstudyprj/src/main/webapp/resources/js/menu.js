/**
 * 
 */
 
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
      alert("들어왔어!");
      $.ajax({
          type: 'GET',
          url: fnGetContextPath() + '/menu/menu.do',
          dataType: 'json', // JSON 데이터를 받아오도록 설정
          success: function(resData) {
              alert("성공이야!");
              var tmp = document.querySelectorAll('#date td');
              console.log(resData[i]);
              for (var i = 0; i < tmp.length; i++) {
                  if (tmp[i].innerHTML != "") {
                      // 받아온 데이터를 이용하여 처리
                      var menu = resData[i]; // 현재 인덱스의 메뉴 데이터
                      tmp[i].innerHTML += '<div>' + menu.menuNo + '</div>';
                      tmp[i].innerHTML += '<div>' + menu.bob + '</div>';
                      tmp[i].innerHTML += '<div>' + menu.gook + '</div>';
                      tmp[i].innerHTML += '<div>' + menu.banchan1 + '</div>';
                      tmp[i].innerHTML += '<div>' + menu.banchan2 + '</div>';
                  }
              }
          },
          error: function(jqXHR) {
              alert(jqXHR.statusText + '(' + jqXHR.status + ')');
          }
      });
  }
    
   
 fnShowMenu();
   
 
 
 
 
 
 
 
 
 
 