<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>쉼표 | 마이페이지</title>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--  -->
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cover/">
    <!-- Bootstrap core CSS -->
    
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
   
   <!-- Calendar -->
   <link
   href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.css'
   rel='stylesheet' />
   <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");
  body::-webkit-scrollbar{
       display: none; /* Chrome, Safari, Opera*/
     }   
        :root {
            --header-height: 3rem;
            --nav1-width: 68px;
            --first-color: #0080ff;
            --first-color-light: #AFA5D9;
            --white-color: #ffffff;
            --body-font: 'Nunito', sans-serif;
            --normal-font-size: 1rem;
            --z-fixed: 100
        }

        *,
        ::before,
        ::after {
            box-sizing: border-box
        }

        body {
            position: relative;
            margin: var(--header-height) 0 0 0;
            padding: 0 1rem;
            font-family: var(--body-font);
            font-size: var(--normal-font-size);
            transition: .5s
        }

        a {
            text-decoration: none
        }

        .header {
            width: 100%;
            height: var(--header-height);
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 1rem;
            background-color: var(--white-color);
            z-index: var(--z-fixed);
            transition: .5s
        }

        .header_toggle {
            color: black;
            font-size: 1.5rem;
            cursor: pointer
        }

        .header_img {
            width: 35px;
            height: 35px;
            display: flex;
            justify-content: center;
            border-radius: 50%;
            overflow: hidden
        }

        .header_img img {
            width: 40px
        }

        .l-navbar {
            position: fixed;
            top: 0;
            left: -30%;
            width: var(--nav1-width);
            height: 100vh;
            background-color: var(--first-color);
            padding: .5rem 1rem 0 0;
            transition: .5s;
            z-index: var(--z-fixed)
        }

        .nav1 {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            overflow: hidden
        }

        .nav1_logo,
        .nav1_link {
            display: grid;
            grid-template-columns: max-content max-content;
            align-items: center;
            column-gap: 1rem;
            padding: .5rem 0 .5rem 1.5rem
        }

        .nav1_logo {
            margin-bottom: 2rem
        }

        .nav1_logo-icon {
            font-size: 1.25rem;
            color: var(--white-color)
        }

        .nav1_logo-name {
            color: var(--white-color);
            font-weight: 700
        }

        .nav1_link {
            position: relative;
            color: var(--first-color-light);
            margin-bottom: 1.5rem;
            transition: .3s
        }

        .nav1_link:hover {
            color: var(--white-color)
        }

        .nav1_icon {
            font-size: 1.25rem
        }

        .show1 {
            left: 0
        }

        .body-pd {
            padding-left: calc(var(--nav1-width) + 1rem)
        }

        .active {
            color: var(--white-color)
        }

        .active::before {
            content: '';
            position: absolute;
            left: 0;
            width: 2px;
            height: 32px;
            background-color: var(--white-color)
        }
      .login, .join{
           color:black;
         }
          .card-details{
    position:relative;
    display:flex;
    
    padding-bottom:20px;
}
.card-details input{
    height:50px;
    width:100%;
    font-size:18px;
    background-color:#f5f5f7;
    color:black;
    padding:0px 20px;
    padding-left:50px;
    box-sizing:border-box;
    border-radius:10px;
/*     outline:none; */
    border:none;
}
.card-details i{
    position:absolute;
    left:10px;
    top:16px;
    color:black;
    font-size:18px;
}
.card-details span{
    position:absolute;
    width:20px;
    height:20px;
    background-color:#fff;
    border-radius:50%;
    color:#ffe4be;
    font-size:10px;
    
    right:10px;
    top:15px;
    opacity:0.4;
    display:flex;
    justify-content:center;
    align-items:center;
    cursor:pointer; 
}

.fa{
   color:black;
}

.card-details span:hover{
    opacity:1;
}
        @media screen and (min-width: 768px) {
            body {
                margin: calc(var(--header-height) + 1rem) 0 0 0;
                padding-left: calc(var(--nav1-width) + 2rem)
            }

            .header {
                height: calc(var(--header-height) + 1rem);
                padding: 0 2rem 0 calc(var(--nav1-width) + 2rem)
            }

            .header_img {
                width: 40px;
                height: 40px
            }

            .header_img img {
                width: 45px
            }

            .l-navbar {
                left: 0;
                padding: 1rem 1rem 0 0
            }

            .show1 {
                width: calc(var(--nav1-width) + 156px)
            }

            .body-pd {
                padding-left: calc(var(--nav1-width) + 188px)
            }
        }

        /*  */
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
        .comuview{
       	color:rgb(0, 0, 0);
    	position: absolute;
    	left: 50%;
    	transform: translate(-50%, -50%);
    	text-align:center;
    	font-weight: bold;
    	font-size:20px;
       }
.comuview:hover{
       color:#0080ff;
       }


        /*마이페이지 ------------------------------------------------------------------------------------------------*/
        .container {
            height: 100vh;
            /* border: 1px solid red */
        }
        /*탭*/
        #myTabContent>div{
            color: black;
        }


        /*--일정 관리---------------------------------------------------------------------------------------*/


        #wt{
            border: 1px solid black;
            height: 100%;
        }
        #ht{
            border: 1px solid black;
            height: 100%;
        }
        #bar{
        border: 1px solid black;
        height: 8%;
        padding-top: 5px;
        }
      
        #month{
            height: 100%;
            float: left;
            padding-bottom: 10px;
           
        }
        #today{
            height: 100%;
            float: left;
            padding-bottom: 10px;
          
        }
        #td{
            width: 95%;
            border-radius: 10px;
            height: 66%;
            border: 1px solid hsl(0, 1%, 65%);
            padding-left: 10px;
        }
        #api{
            width: 95%;
            height: 66%;
            border: 1px solid hsl(0, 1%, 65%);
            border-radius: 10px;
        }
        #calendar{
           width: 100%;
           height: 100%;
           min-height:520px;
        }
        #board_menu_text{
            font-size: 18px;
            font-weight:bold ;
            margin-bottom: 20px;
        }
        .board{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
        }
        .board_row{
            padding-top: 10px;
           height: 100%;
        }
        #board_menu{
            height: 50px;
        }
        #board_menu_text{
            font-size: 18px;
            font-weight:bold ;
            margin-bottom: 20px;
        }

		

        /* 제목이 길어서 잘렸을 경우 밑의 두개 처리해준다 */
       .ellipsis{
           position: relative;
           min-width: 50px;
           
       }
       .ellipsis>span{
        overflow: hidden;
           white-space: nowrap;
           text-overflow: ellipsis;
           position:absolute;
           left: 9px;
           right: 9px;
       }



        /*--쪽지-------------------------------------------------------------------------------------------*/
        /*쪽지 탭*/
        #message{
            padding-top: 50px;
        }
        /*탭 내용*/
        #v-pills-tabContent{
            padding-left: 0px;
            padding-right: 25px;
            width: 100%;
            /* border: 1px solid black; */

        }
        #v-pills-tabContent >div{
            color: black;
        }
		.title{
			font-weight:bold;
			text-decoration: none;
			color:black;
		}
		a{color:black;}
        /*쪽지함 메인-----------------------------------*/
        #board_menu_text{
            font-size: 18px;
            font-weight:bold ;
            margin-bottom: 20px;
        }
        #board_menu_text>div{
            padding: 0px;
        }
        .board{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
        .board_row{
            padding-top: 10px;
            height: 100%;
        }
        #board_menu{
            height: 50px;
        }

        /* 제목이 길어서 잘렸을 경우 밑의 두개 처리해준다 */
       .ellipsis{
           position: relative;
           min-width: 50px;
       }
       .ellipsis>span{
        overflow: hidden;
           white-space: nowrap;
           text-overflow: ellipsis;
           position:absolute;
           left: 0px;
           right: 0px;
           height: 100%;
       }
       #editID, #pwtext, .pw_check{
       width:90%;
       }
       /*받은 쪽지함, 보낸 쪽지함 버튼*/
       #v-pills-tab> button{
           width: 80px;
       }
       /* div{border: 1px solid blue;} */
        /*--게시글-----------------------------------------------------------------------------------------*/
        #list{
        border: 1px solid black;
        padding-top: 20px;
        height:100%;
         }

        #board_text{
            font-size: 18px;
            font-weight:bold ;
            margin-bottom: 20px;
        }
        #board_text>div{
            padding: 0px;
        }
        .board2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
         .receive_msgboard2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
        .send_msgboard2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
        .board_row2{
            padding-top: 10px;
            height: 100%;
        }
        .free_boardbox2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
        .gallery_boardbox2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
        .job_boardbox2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
        .food_boardbox2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
        .house_boardbox2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
        .jjim_boardbox2{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
            padding: 0px;
        }
		
        /*--계정관리---------------------------------------------------------------------------------------*/
	.newcheck{
	text-align:center;
	display:none;
	}
         #header_header {
           height: 100%;
          padding-top: 80px;
          border: 1px #cfcfcf;
        }

        #modi{
            margin: auto;
            width: 60%; 
            max-width: 500px;
            border: 1px solid #cfcfcf;
            border-radius: 10px;
            padding-top: 50px;
            padding-bottom: 50px;
        }
        #modi div{
            font-size: 20px;   
           padding: 0px;
           margin-top: 5px;
          
        }
        #modi>div{
            padding-top: 5px;
            /* border-top: 1px solid #0080ff; */
        }
        .btn{
            margin-top: 20px;
        }

/*--top버튼----------------------------------------------------------------*/

#myBtn {
  display: none; 
  position: fixed; 
  bottom: 12px;
  width: 45px;
  height: 45px;
  right: 10px; 
  z-index: 99; 
  border: none; 
  outline: none; 
  background-color:  #0080ff;
  color: white; 
  cursor: pointer; 
  padding: 3px; 
  border-radius: 50%; 
  font-size: 32px; 
  font-weight: bold;
  padding-bottom:40px;
  padding-top: 0px;
}

#myBtn:hover {
  background-color: #555; 
}

 메세지보내기버튼 
 #sendMsgBtn{ 
 	min-width:90px; 
/* 	padding-right:25px;  */
 }


    </style>
	<script>
// 	 let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.

//  	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
//   	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//   	        getList(page);
//    	        page++;   
// //                console.log(page);
//     	 } 
//  	   });
	
	</script>



</head>

<body id="body-pd">
    <header class="header" id="header" style="background-color:#f5f5f7">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div><a href="/myPage.jsp" class="comuview">마이페이지</a></div>
        <div>
            <c:choose>
            <c:when test="${loginID !=null}">
                 <div class="d-md-inline d-none"> ${loginID }님 안녕하세요 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="/logout.member" class="d-md-inline d-none"  >logout</a>               
            </c:when>
      
            <c:otherwise>
               <a href="#" class="login" id="login"  data-bs-toggle="modal" data-bs-target="#exampleModal">login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/goJoinPage.member" class="join">join</a>
            </c:otherwise>
         </c:choose>
        </div>
    </header>
    
    <div class="l-navbar" id="nav1-bar">
        <nav class="nav1">
            <div> <a href="/goIndex.board" class="nav1_logo"> <i class='bx bx-layer nav1_logo-icon'></i> <span class="nav1_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav1_list">
                    <a class="nav1_link" style="color:white;"> <i class='CurrIcon'></i> <span class="nav1_name"><span class="weather">
                    <span class="CurrTemp"></span>
                    <span class="City"></span>
                    </span></span> </a>
                    <a href="/communityMain.board" class="nav1_link"> <i class='bx bx-message nav1_icon'></i> <span
                            class="nav1_name">커뮤니티</span> </a>
                    <a href="/editorReMain.board?" class="nav1_link"> <i class='bx bx-book-bookmark nav1_icon'></i> <span class="nav1_name">에디터추천</span>
                    </a>
                    
                   
                    <a href="/houseMain.board?cpage=1" class="nav1_link"> <i class='bx bx-home nav1_icon'></i> <span class="nav1_name">숙소리뷰</span>
                    </a>
                    <c:choose>
						<c:when test="${loginID != null}">
							<a href="/goMyPage.mpg" class="nav1_link active"> <i class='bx bx-user nav1_icon'></i> <span class="nav1_name">마이페이지</span> </a>
							
						</c:when>
		
						<c:otherwise>
							<a href="/goMyPage.mpg" class="nav1_link" data-bs-toggle="modal" data-bs-target="#exampleModal"> <i class='bx bx-user nav1_icon'></i> <span class="nav1_name">마이페이지</span> </a>
						</c:otherwise>
					</c:choose>
             
            </div>
            <c:choose>
            <c:when test="${loginIsAdmin == 'Y'}">
               				<a href="/adiminPage.admin" class="nav1_link"> <i class='bx bx-hard-hat nav1_icon'></i> <span class="nav1_name">관리자페이지</span> </a>
            </c:when>
            <c:otherwise>
							
			</c:otherwise>
           
         </c:choose>
         </div>
<c:choose>
						
                 <c:when test="${loginID !=null}">
               <a href="/logout.member" class="nav1_link"> <i class='bx bx-log-out nav1_icon'></i> <span class="nav1_name">로그아웃</span> </a>   
            </c:when>	
                		
                	</c:choose>            
       </nav>
    </div>
    
<!--로그인 모달-->
    <div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-right" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title text-center" id="exampleModalLabel">로그인</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="card-details">
                  <input type="text" id="id-input" placeholder="email" name="email" required>
                  <i class="fa fa-envelope"></i>
              </div>
              <div class="card-details">
                  <input type="password" id="password-input" placeholder="password" name="pw" required>
                  <i class="fa fa-lock"></i>
                  <span><small class="fa fa-eye-slash passcode"></small></span>
              </div>
              <div>
              <span id="idpw_check"></span>
                  </div>            
            </div>
            <div class="modal-footer">
                <button class="btn btn-outline-success" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal">비밀번호를 잊으셨나요 ?</button>
            <button type="button" class="btn btn-primary" id="modal_loginBtn">로그인</button>
              <a href="/signup.jsp"><button type="button" class="btn btn-outline-primary">회원가입</button></a>
            </div>
          </div>
        </div>
      </div>
      <!--pw 찾기 모달-->
      <div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalToggleLabel2">비밀번호 찾기</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              가입한 <strong>이메일</strong>과 사용한 <strong>닉네임</strong>이 같으면 
              <br>임시 비밀번호가 발급됩니다

              <div class="input-group mb-3">
                <span class="input-group-text" id="inputGroup-sizing-default">이메일</span>
                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="findpw_email">
              </div>
              <div class="input-group mb-3">
                <span class="input-group-text" id="inputGroup-sizing-default">닉네임</span>
                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="findpw_nickname">
              </div>
              <input class="form-control" type="text" placeholder="임시비밀번호" aria-label="default input example" id="temp_pw" disabled>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-bs-target="#exampleModal" id="new_pw_btn">임시 비밀번호 발급</button>
              <button class="btn btn-primary" data-bs-target="#exampleModal" data-bs-toggle="modal">로그인으로</button>
            </div>
          </div>
        </div>
      </div>
      
<script>
$("#login").on("click",function(){
	$("#idpw_check").text("");
	$("#idpw_check").css({ color: "black" })
})
$("#modal_loginBtn").on("click",function(){
			$.ajax({
				url:"/login.member",
				type:"post",
				data:{email:$("#id-input").val(),pw:$("#password-input").val()},
				dataType:"json"
			}).done(function(resp){
				console.log(resp);
				if(resp==false){					
					$("#idpw_check").text("Email 또는 비밀번호가 올바르지 않습니다!");
					$("#idpw_check").css({ color: "red" })
					$("#id-input").val("");
					$("#id-input").focus();					
					$("#password-input").val("");
				}else if(resp==true){
					location.reload();
				}
				
			});
		})

$("#new_pw_btn").on("click",function(){
			let email = $("#findpw_email").val();
			let nickname= $("#findpw_nickname").val();
			
			
			let pw = (Math.floor(Math.random() * 10)*10000000)+(Math.floor(Math.random() * 10)*1000000)+(Math.floor(Math.random() * 10)*100000)+(Math.floor(Math.random() * 10)*10000)+(Math.floor(Math.random() * 10)*1000)+(Math.floor(Math.random() * 10)*100)+(Math.floor(Math.random() * 10)*10)+Math.floor(Math.random() * 10);
			
			for(i=1; i<9; i++){
				
			}
			
			console.log(pw);
			
			
			let temppw =$("#temp_pw");
			if(email==""||nickname==""){
				alert("공백은 입력할 수 없습니다");
			}else{
				$.ajax({
					url:"/resetpw.member",
					type:"post",
					data:{email:email,nickname:nickname,pw:pw},
					dataType:"json"
				}).done(function(resp){
					console.log(resp);
					if(resp>0){
						temppw.val("임시 비밀번호 : " + pw);
					}else{
						temppw.val("email 또는 닉네임이 틀렸습니다");
					}
				});
			}
			
		})

</script>		
<!-- 로그인 모달  -->

<script>
window.onload = function(){
	if(${loginID == null}){
		Swal.fire({
			  icon: 'error',
			  title: 'Oops...',
			  text: 'Something went wrong!',
			  footer: '<a href="">Why do I have this issue?</a>'
			})
	}
}

</script>
    <!--마이페이지-->
    <!--Container Main start-------------------------------------------------------------------------------------------------------------->
    <div class="container">

        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="schedule-tab" data-bs-toggle="tab" data-bs-target="#schedule" type="button" role="tab" aria-controls="schedule" aria-selected="true">일정관리</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="message-tab" data-bs-toggle="tab" data-bs-target="#message" type="button" role="tab" aria-controls="message" aria-selected="false">쪽지</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="board-tab" data-bs-toggle="tab" data-bs-target="#board" type="button" role="tab" aria-controls="board" aria-selected="false">게시글</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="account-tab" data-bs-toggle="tab" data-bs-target="#account" type="button" role="tab" aria-controls="account" aria-selected="false">계정관리</button>
              </li>
          </ul>
          <div class="tab-content" id="myTabContent">
            <!--일정 관리 UI--------------------------------------------------------------------------------------->
            <div class="tab-pane fade show active" id="schedule" role="tabpanel" aria-labelledby="schedule-tab"> 

            <br>
            <br>
    
                <div class="col-12 col-sm-12 col-md-12 col-lg-6" id="month" align="left">  
                    <div id="api">
                  <div id='calendar'></div>
                    </div> 
                    
                </div>
                  
                <div class="col-12 col-sm-12 col-lg-6" id="today" align="left">
                    <div id="td">

                오늘일정<br>
                ★ Item One<br>
                ♥ Item Two<br>
                ● Item Three<br>
                ★ Item One<br>
                ★ Item Two<br>
                ♥ Item Three<br>
                ★ Item One<br>
                ♥ Item Two<br>
                ● Item Three<br>
                ★ Item One<br>
                ★ Item Two<br>
                
                    </div>
                 </div>



            </div>

            <!--쪽지 UI--------------------------------------------------------------------------------------->
            <div class="tab-pane fade" id="message" role="tabpanel" aria-labelledby="message-tab">
            
            <div style="text-align:right; padding-right:38px; padding-bottom:10px;">
                <button type="button" class="btn btn-primary" id="sendMsgBtn" data-bs-toggle="modal" data-bs-target="#exampleModalsend">쪽지쓰기</button></div>
                <div class="d-flex align-items-start">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                      <button class="nav-link active" id="v-pills-receive-tab" data-bs-toggle="pill" data-bs-target="#v-pills-receive" type="button" role="tab" aria-controls="v-pills-receive" aria-selected="true">받은<br>쪽지함</button>
                      <button class="nav-link" id="v-pills-send-tab" data-bs-toggle="pill" data-bs-target="#v-pills-send" type="button" role="tab" aria-controls="v-pills-send" aria-selected="false">보낸<br>쪽지함</button>
                    </div>
                    <div class="tab-content" id="v-pills-tabContent" >
                        <!--받은 쪽지함-->
                        <div class="tab-pane fade show active" id="v-pills-receive" role="tabpanel" aria-labelledby="v-pills-receive-tab" >
                            
                            <div class="container2">
                                <div class="row m-0 receive_msgbox">
                                	<div class="row " id="board_menu_text" style="padding-left:30px;">
                                        <div class="col-md-2 col-lg-1 d-none d-lg-block " style="text-align:center;">번호</div>
                                        <div class="col-8 col-md-8 col-lg-5">제목</div>
                                        <div class="col-4 col-md-4 col-lg-2 text-center">보낸이</div>
                                        <div class="col-md-2 col-lg-4 d-none d-lg-block text-center">날짜</div>
                                    </div>
                                    <div class="col-12 receive_msgtext">
                                        <!-- 받은 쪽지함 반복문위치 -->
                                    </div>
                               </div>
                            </div>
                        </div>

                        <!--보낸 쪽지함-->
                        <div class="tab-pane fade" id="v-pills-send" role="tabpanel" aria-labelledby="v-pills-send-tab">
                            <div class="container2">
                            		
                                <div class="row m-0 send_msgbox">
                               		<div class="row " id="board_menu_text" style="padding-left:30px;">
                                        <div class="col-md-2 col-lg-1 d-none d-lg-block " style="text-align:center;">번호</div>
                                        <div class="col-8 col-md-8 col-lg-5">제목</div>
                                        <div class="col-4 col-md-4 col-lg-2 text-center">받는이</div>
                                        <div class="col-md-2 col-lg-4 d-none  d-lg-block text-center">날짜</div>
                                    </div>
                                    <div class="col-12 send_msgtext">
                                        <!-- 보낸 쪽지함 반복문위치 -->
                                    </div>
                               </div>
                            </div>
                        </div>


                  </div>
                </div>
            
            
            </div>

    <!--게시글 UI--------------------------------------------------------------------------------------->
            <div class="tab-pane fade" id="board" role="tabpanel" aria-labelledby="board-tab">
                <br>
                <br>
                <br>
                <div class="d-flex align-items-start">
                    <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                      <button class="nav-link active" id="v-pills-tab1-tab" data-bs-toggle="pill" data-bs-target="#v-pills-tab1" type="button" role="tab" aria-controls="v-pills-tab1" aria-selected="true">자유<br>게시판</button>
                      <button class="nav-link" id="v-pills-tab2-tab" data-bs-toggle="pill" data-bs-target="#v-pills-tab2" type="button" role="tab" aria-controls="v-pills-tab2" aria-selected="false">여행<br>후기</button>
                      <button class="nav-link" id="v-pills-tab3-tab" data-bs-toggle="pill" data-bs-target="#v-pills-tab3" type="button" role="tab" aria-controls="v-pills-tab3" aria-selected="false">구인<br>구직</button>
                      <button class="nav-link" id="v-pills-tab4-tab" data-bs-toggle="pill" data-bs-target="#v-pills-tab4" type="button" role="tab" aria-controls="v-pills-tab4" aria-selected="false">맛집</button>
                      <button class="nav-link" id="v-pills-tab5-tab" data-bs-toggle="pill" data-bs-target="#v-pills-tab5" type="button" role="tab" aria-controls="v-pills-tab5" aria-selected="false">숙소<br>리뷰</button>
                      <button class="nav-link" id="v-pills-tab6-tab" data-bs-toggle="pill" data-bs-target="#v-pills-tab6" type="button" role="tab" aria-controls="v-pills-tab6" aria-selected="false">찜</button>
                    </div>
                    <div class="tab-content" id="v-pills-tabContent">

   <!--자유게시판--------------------------------------------->    
                      <div class="tab-pane fade show active" id="v-pills-tab1" role="tabpanel" aria-labelledby="v-pills-tab1-tab">
                        <div class="container2">
    
                            <div class="row m-0" id="free_boardbox">
                            	<div class="row " id="board_menu_text" style="padding-left:30px;">
                            		<div class="col-md-2 col-lg-1 d-none d-lg-block " style="text-align:center;">번호</div>
                         	        <div class="col-8 col-md-8 col-lg-5">제목</div>
                         	        <div class="col-4 col-md-4 col-lg-2 text-center">작성자</div>
                         	        <div class="col-md-2 col-lg-4 d-none d-lg-block text-center">날짜</div>
                        	    </div>
                                <div class="col-12 " id="free_boardtext">
                                
   										<!-- 자유게시판 반복문위치 -->
                              	  	</div>
                            </div>
                        </div>
                   

                      </div>

      <!--여행후기----------------------------------------------------------->

                      <div class="tab-pane fade" id="v-pills-tab2" role="tabpanel" aria-labelledby="v-pills-tab2-tab">

                        <div class="container2">
    						
                            <div class="row m-0 " id="gallery_boardbox">
                            	<div class="row " id="board_menu_text" style="padding-left:30px;">
                                    <div class="col-md-2 col-lg-1 d-none d-lg-block " style="text-align:center;">번호</div>
                                    <div class="col-8 col-md-8 col-lg-5">제목</div>
                                    <div class="col-4 col-md-4 col-lg-2 text-center">작성자</div>
                                    <div class="col-md-2 col-lg-4 d-none  d-lg-block text-center">날짜</div>
                                </div>
                                <div class="col-12  " id="gallery_boardtext">
								<!-- 여행후기 반복문위치 -->
                           </div>
                        </div>

                      </div>
                      </div>

      <!--구인구직------------------------------------------------------------->

                      <div class="tab-pane fade" id="v-pills-tab3" role="tabpanel" aria-labelledby="v-pills-tab3-tab">
                          
  
                        <div class="container2">
    						
                            <div class="row m-0 " id="job_boardbox">
                            	<div class="row " id="board_menu_text" style="padding-left:30px;">
                                	<div class="col-md-2 col-lg-1 d-none d-lg-block " style="text-align:center;">번호</div>
                          	        <div class="col-8 col-md-8 col-lg-5">제목</div>
                         	        <div class="col-4 col-md-4 col-lg-2 text-center">작성자</div>
                        	        <div class="col-md-2 col-lg-4 d-none  d-lg-block text-center">날짜</div>
                            	</div>
                                <div class="col-12  " id="job_boardtext">
									<!-- 구인구직 반복문위치 -->
                                </div>

                           </div>
                        </div>
        
                        </div>

      <!--맛집----------------------------------------------------->
                      <div class="tab-pane fade" id="v-pills-tab4" role="tabpanel" aria-labelledby="v-pills-tab4-tab">

                        <div class="container2">
						    
                            <div class="row m-0 " id="food_boardbox">
                            	<div class="row " id="board_menu_text" style="padding-left:30px;">
                                    <div class="col-md-2 col-lg-1 d-none d-lg-block " style="text-align:center;">번호</div>
                                    <div class="col-8 col-md-8 col-lg-5">제목</div>
                                    <div class="col-4 col-md-4 col-lg-2 text-center">작성자</div>
                                    <div class="col-md-2 col-lg-4 d-none  d-lg-block text-center">날짜</div>
                            	</div>
                                <div class="col-12  " id="food_boardbox">
                                	<!-- 맛집 반복문위치 -->
                                </div>
                           </div>
                        </div>
                      </div>

<!----숙소리뷰-------------------------------------------->

     <div class="tab-pane fade" id="v-pills-tab5" role="tabpanel" aria-labelledby="v-pills-tab5-tab">

        <div class="container2">
			
            <div class="row m-0 " id="house_boardbox">
            <div class="row " id="board_menu_text" style="padding-left:30px;">
               <div class="col-md-2 col-lg-1 d-none d-lg-block " style="text-align:center;">번호</div>
               <div class="col-8 col-md-8 col-lg-5">제목</div>
               <div class="col-4 col-md-4 col-lg-2 text-center">작성자</div>
               <div class="col-md-2 col-lg-4 d-none  d-lg-block text-center">날짜</div>
			</div>
               <div class="col-12  " id="house_boardbox">
               <!-- 숙소리뷰 반복문위치 -->
               
            </div>

       </div>
    </div>



  </div>

<!----찜-------------------------------------------->

                      <div class="tab-pane fade" id="v-pills-tab6" role="tabpanel" aria-labelledby="v-pills-tab6-tab">

                        <div class="container2">
    						
                            <div class="row m-0 " id="jjim_boardbox">
                            	<div class="row " id="board_menu_text" style="padding-left:30px;">
                          	       <div class="col-md-2 col-lg-1 d-none d-lg-block " style="text-align:center;">번호</div>
                         	       <div class="col-8 col-md-8 col-lg-5">제목</div>
                         	       <div class="col-4 col-md-4 col-lg-2 text-center">작성자</div>
                       		       <div class="col-md-2 col-lg-4 d-none  d-lg-block text-center">날짜</div>
                     	        </div>
                                <div class="col-12  " id="jjim_boardtext">
                                     <!-- 숙소리뷰 반복문위치 -->
                                </div>

                           </div>
                        </div>


                      </div>




                    </div>
                  </div>

            </div>

            <!--계정관리 UI--------------------------------------------------------------------------------------->
            <div class="tab-pane fade" id="account" role="tabpanel" aria-labelledby="account-tab">
                
                
                
                        <div class="row text-center" id="header_header">
                            <div class="col-12" id="modi">
                                <div class="row" id="name">
                                    <div class="col-12 col-md-4 content"><strong>아이디</strong> </div>
                                    <div class="col-12 col-md-8 modify content " id="id">
                                       <input type="text" value="${loginID }" id="editID" style="text-align:center" name = "id" disabled/>
                                    </div>
                                    
                                    <div class="col-12 newcheck" id="testID" ></div>
                                    
                                </div>
                                <div class="row "  id="pw" >
                                    <div class="col-12 col-md-4 pw content" style="display:none;"><strong>비밀번호</strong> </div>
                                    <div class="col-12 col-md-8 modify content pw" style="display:none;">
                                        <input type="password" placeholder="비밀번호" id="pw1" name="pw" class="pw_check">
                                    </div>
                                    
                                    <div class="col-12 newcheck" id="testPW" ></div>
                                    
                                    <div class="col-12 col-md-4 check2" style="display:none;"><strong></strong> </div>
                                    <div class="col-12 col-md-8 check2" style="display:none;">
                                        <input type="password" placeholder="비밀번호 확인" id="pw2" class="pw_check">
                                        
                                    </div>
                                    
                                    <div class="col-12 newcheck" id="testPWok" ></div>
                                    
                                </div>
                                <div class="row" id="email">
                                    <div class="col-12 col-md-4 content"><strong>이메일</strong> </div>
                                    <div class="col-12 col-md-8 content">
                                        ${loginEmail }
                                    </div>
                                </div>
                                <%-- <div class="row" id="joinday">
                                    <div class="col-12 col-md-4 content"><strong>가입일</strong> </div>
                                    <div class="col-12 col-md-8 content">
                                        ${loginJoinDate } 
                                    </div>
                                </div> --%>
                                <div class="row" id="joinday">
                                    <div class="col-12 col-md-4 check" style="display:none;"><strong>비밀번호</strong> </div>
                                    <div class="col-12 col-md-8 check" style="display:none;">
                                        <input type="password" placeholder="비밀번호를 입력하세요" id="pwtext">
                                        
                                    </div>
                                    
                                </div>
                                    <div class="row btn" id="btn">
                                        <div class="col-12 text-center" >
                                        <button type="button" class="btn btn-primary " id="modify">수정하기</button>
                                        <button type="button" class="btn btn-danger " id="memberoutBtn">탈퇴하기</button>
                                        <button type="button" class="btn btn-primary " id="ok" style="display:none;">완료</button>
                                        <button type="button" class="btn btn-primary check " id="checkpw" style="display:none;">확인</button>
                                        <input type="button" class="btn btn-primary " value="취소" id="back" style="display:none;">
                                        
                                    </div>
                                </div>
                                
                                
                            </div>
                    
                    </div>
                    
            
            
           
          </div>

    </div>
    
<!-- Message Modal -->
<div class="modal fade" id="exampleModalsend" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" >
        <h5 class="modal-title" id="exampleModalLabel">쪽지 보내기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	 
      	받는 사람 | <input type="text" placeholder="받는 사람 ID" id="modal_receiver"><p></p><div id="checkReceiver"></div>
      	<input type="text" placeholder="제목을 입력하세요" id="modal_title" name="title" style="width:100%">
      	<p>
      		
      	</p>
      	
        <textarea style="width:100%; min-height:150px" placeholder="내용을 입력하세요" id="modal_msgContents"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="modal_sendmsg">보내기</button>
      </div>
    </div>
  </div>
</div>

<!-- 캘린더 Calendar Modal -->    
    <div class="modal fade" id="calendarModal" tabindex="-1"  aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" >
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요.</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="taskId" class="col-form-label">일정 제목</label>
                            <input type="text" class="form-control" id="calendar_title" name="calendar_title">
                            <label for="taskId" class="col-form-label">시작 날짜</label>
                            <input type="date" class="form-control" id="calendar_start_date" name="calendar_start_date">
                            <label for="taskId" class="col-form-label">종료 날짜</label>
                            <input type="date" class="form-control" id="calendar_end_date" name="calendar_end_date">
                            <label for="taskId" class="col-form-label">색상 선택</label>
                             <select class="form-control" name="color" id="calendar_color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                             </select>
                             <label for="taskId" class="col-form-label">일정 내용</label>
                             <textarea rows="4" cols="50" class="form-control" name="calendar_contents" id="calendar_contents"></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" id="addCalendar" >추가</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"
                            id="sprintSettingModalClose">취소</button>
                    </div>
        
                </div>
            </div>
        </div>
<!-- 캘린더 Calendar Modal -->    
     <!--top 버튼-->
    <button onclick="topFunction()" id="myBtn" title="Go to top">↑</button>
    <!-------------------------------------------------------------------------------------------------------------------Container Main end-->




    <script>
    
    $("#password-input").on("keyup",function(e){
        if(e.keyCode==13){
            $("#modal_loginBtn").click();
        }
    })
    
    //탈퇴
  	$("#memberoutBtn").on("click",function(){
  		Swal.fire({
  		  title: '회원탈퇴',
  		  text: "정말 쉼표를 떠나시겠습니까 ?",
  		  icon: 'warning',
  		  showCancelButton: true,
  		  confirmButtonColor: '#3085d6',
  		  cancelButtonColor: '#d33',
  		  confirmButtonText: '네, 탈퇴할게요!',
  		  cancelButtonText: '아뇨',
  		}).then((result) => {
  		  if (result.isConfirmed) {
  		    Swal.fire(
  		      '탈퇴 완료!',
  		      '계정정보가 삭제되었습니다.',
  		      'success'
  		    )
  		    $.ajax({
    				url:"/memberOut.member",
    				type:"get",
    				data:{
    					email:'${loginEmail}'
					},
    				dataType:"json"
    			}).done(function(resp){
    				location.href= "index.jsp";
    			})
  		  }
  		})
  	});

    
   //컨텐츠 숨김 나타냄 회원정보 수정
    $("#modify").on("click",function(){
        $(".content").css("display","none"); //모든 컨텐츠
        $("#back").css("display","inline"); //취소버튼
        $("#modify").css("display","none");   //수정하기 버튼
        $(".check").css("display","inline"); //비밀번호 확인 입력창
        $("#memberoutBtn").css("display","none");// 회원탈퇴
        
        $("#checkpw").on("click",function(){
            $.ajax({
            url:"/modified.member",
            data:{pw:$("#pwtext").val()},
            dataType:"json",
            type:"post"
        }).done(function(resp){
        	console.log(resp);
            
        	if(resp){
        		$(".newcheck").css("display","block"); //정규식 확인 보이기
                $(".content").css("display","inline");
                $("#ok").css("display","inline");    //완료버튼
                $(".pw").css("display","block");    //비번 수정
                $(".check").css("display","none");  //비밀번호 확인 입력창
                $(".check2").css("display","inline-block");
//                 $("#pw").css("display","block");
                $("#back").css("display","inline-block"); //취소버튼
                $("#pw1").val("");
				$("#pw2").val(""); 
				$("#pw1").attr("placeholder","변경하실 비밀번호");
				$("#pw2").attr("placeholder","변경하실 비밀번호 확인");
				 
//                 $(".modify").attr("contenteditable","true");
                $("#editID").attr("disabled", false);
                $(".modify").css("color","#0089ff");
                $("#id").focus();
            }else{
                alert("비밀번호가 틀렸습니다.");
            }
        })
            
        })
        })
        
        
        //회원정보 수정 완료
         //회원정보 수정 완료시
        $("#ok").on("click",function(){
        	if('${loginID }'==$("#editID").val()){
        		
        		if($("#pw1").val()==$("#pw2").val()&& isPw($("#pw1").val())){
        			$.ajax({
                		url:"/modifiedOk.member",
                        data:{id:$("#editID").val(), pw:$("#pw1").val()},
                        dataType:"json",
                        type:"post"
                	}).done(function(resp){
      
                		if(resp){        	//회원정보 수정 성공시		                			
                			location.reload();
                		}else{
                			alert("error");
                		}        			                		
                	})
        		}else{
        			$("#pw1").focus();
        		}
        		
        	}else{
        		console.log("duplIDCheck.member 실행");
        		$.ajax({
            		url:"/duplIDCheck.member",
            		type:"get",
            		data:{nickname:$("#editID").val()},
            		dataType:"json"
            		}).done(function(resp){
            				console.log("닉네임 조회 resp : " + resp);
            					if(resp==false){						
            			        	if(isNickName($("#editID").val())) {
            			        		if($("#pw1").val()==$("#pw2").val()){
            			        			if(isPw($("#pw1").val())){
            			                	$.ajax({
            			                		url:"/modifiedOk.member",
            			                        data:{id:$("#editID").val(), pw:$("#pw1").val()},
            			                        dataType:"json",
            			                        type:"post"
            			                	}).done(function(resp){
            			          
            			                		if(resp){        	//회원정보 수정 성공시		                			
            			                			location.reload();
            			                		}else{
            			                			alert("error");
            			                		}        			                		
            			                	})	
            			        		}else{    			        			
            			        			$("#pw1").focus();
            			        		}
            			        		
            			        	}else{
            			        		$("#editID").focus();         			        
            			        	}
            					}
            					
            				}
            					else if(resp==true){
            						$("#editID").focus();
            						$("#testID").text("이미 사용중인 닉네임입니다.");
        		        			$("#testID").css({ color: "red" });
        					}
            			})       
        	}
        	 	
        	})
//정규식

//아이디 중복확인
		$("#editID").on("input",function(){
			
		$.ajax({
		url:"/duplIDCheck.member",
		type:"get",
		data:{nickname:$("#editID").val()},
		dataType:"json"
		}).done(function(resp){
				
					if(resp==false){						
						if(isNickName($("#editID").val())){
							$("#testID").text("사용 가능한 닉네임입니다!");
							$("#testID").css({ color: "blue" });
						}else{
							$("#testID").text("닉네임은 한글,영문, 숫자 2-10자");
							$("#testID").css({ color: "red" });
						}

					}else if('${loginID }'==$("#editID").val()){
    					$("#testID").text("본인의 닉네임입니다.");
	        			$("#testID").css({ color: "blue" });
    				}else if(resp==true){
						$("#testID").text("사용중인 닉네임입니다!");
						$("#testID").css({ color: "red" });
					}
				});
			})
	//비밀번호 확인 
	$(".pw_check").on("input", function () {
            let pw1 = $("#pw1").val();
            let pw2 = $("#pw2").val();
            let check = $("#testPWok");
            if(pw2!=="" &&pw1!==""){
            	if (pw1 == pw2) {
            		if(isPw(pw1)){
            			check.text("비밀번호가 일치합니다");
                        check.css({ color: "blue" });
            		}else{
            			check.text("비밀번호는 숫자,영문,특수문자 포함 8~16자");
                        check.css({ color: "red" });
                        
            		}                	
                }
                else if(pw1!==pw2){
                    check.text("비밀번호가 일치하지 않습니다");
                    check.css({ color: "red" });
                }
            }else if(pw2=="" || pw1==""){
    
            	check.text("비밀번호는 필수정보입니다");
                check.css({ color: "black" });
            }
            
        });

//닉네임(한글,영문, 숫자 2-10자)
		function isNickName(asValue) {
			var regExp = /^[a-z가-힣0-9]{2,10}$/g;		
			return regExp.test(asValue);
			};
		//비밀번호(숫자 영문 특문 조합 8~16자)
		function isPw(asValue) {
			var regExp = /^.{8,16}$/;
			return regExp.test(asValue);
		};
  
    
  //계정관리
   
  
  
        
        

    $("#back").on("click",function(){
    	$("#memberoutBtn").css("display","inline");// 회원탈퇴
        $(".content").css("display","inline"); 
        $("#modify").css("display","inline");
        $("#back").css("display","none");
        $("#ok").css("display","none");
        $(".pw").css("display","none");
        $(".check").css("display","none");
        $(".check2").css("display","none");
        $("#pwtext").val("");
        $("#pwtext").attr("placeholder","비밀번호를 입력하세요.");
        $(".newcheck").css("display","none");//정규식 확인 
        
        $(".modify").attr("contenteditable","false");
        $("#editID").attr("disabled", true);
        $(".modify").css("color","black");
    });

   
 // input id, input pw, password eyes
    let outer_eye=document.querySelector(".card-details span");
    let eye=document.querySelector(".passcode");
    let input=document.querySelector("#password-input");
    outer_eye.addEventListener('click',function(){

       if(input.type=='password'){
           input.type="text"; 
           eye.classList.remove('fa-eye-slash');
           eye.classList.add('fa-eye');
         input.classList.add('warning');
        }else{
          input.type="password"; 
          eye.classList.remove('fa-eye');
          eye.classList.add('fa-eye-slash');
          input.classList.remove('warning');
      }
    });
    
    
    </script>
    
    <script>
    
        document.addEventListener("DOMContentLoaded", function (event) {

            const show1Navbar = (toggleId, navId, bodyId, headerId) => {
                const toggle = document.getElementById(toggleId),
                    nav = document.getElementById(navId),
                    bodypd = document.getElementById(bodyId),
                    headerpd = document.getElementById(headerId)

                // Validate that all variables exist
                if (toggle && nav && bodypd && headerpd) {
                    toggle.addEventListener('click', () => {
                        // show1 navbar
                        nav.classList.toggle('show1')
                        // change icon
                        toggle.classList.toggle('bx-x')
                        // add padding to body
                        bodypd.classList.toggle('body-pd')
                        // add padding to header
                        headerpd.classList.toggle('body-pd')
                    })
                }
            }

            show1Navbar('header-toggle', 'nav1-bar', 'body-pd', 'header')

            /*===== LINK ACTIVE =====*/
            const linkColor = document.querySelectorAll('.nav1_link')

            function colorLink() {
                if (linkColor) {
                    linkColor.forEach(l => l.classList.remove('active'))
                    this.classList.add('active')
                }
            }
            linkColor.forEach(l => l.addEventListener('click', colorLink))

            // Your code to run since DOM is loaded and ready
        });
        /*==캘린더======== Calendar Script ==========*/
      
            
            
        
            document.addEventListener('DOMContentLoaded', function () {
            	
            	$.ajax({
    				url:"/showCal.mpg",
    				type:"post",
    				data:{
    					email:'${loginEmail}'
					},
    				dataType:"json"
    			}).done(function(resp){
    				
    				console.log(resp);
    				
    				for(let i =0; i<resp.length; i++){
    					resp[i].start = moment(resp[i].start).format('YYYY-MM-DD HH:mm:ss');
        				resp[i].end = moment(resp[i].end).format('YYYY-MM-DD HH:mm:ss');
        				
    				}
    				
    				
    				 var calendarEl = document.getElementById('calendar');
    	                var calendar = new FullCalendar.Calendar(calendarEl, {
    	                	

    	                    timeZone: 'UTC',
    	                    initialView: 'dayGridMonth', // 홈페이지에서 다른 형태의 view를 확인할  수 있다.
    	                    locale: 'ko',
    	                    firstDay : 1, // 일요일 부터 시작하려면 0
    	                    weekNumberCalculation     : "ISO",
    	                    
    	                   	events:resp,
    	                    headerToolbar: {
    	                        center: 'addEventButton' // headerToolbar에 버튼을 추가
    	                    }, customButtons: {
    	                        addEventButton: { // 추가한 버튼 설정
    	                            text : "일정 추가",  // 버튼 내용
    	                            click : function(){ // 버튼 클릭 시 이벤트 추가
    	                                $("#calendarModal").modal("show"); // modal 나타내기
    	    
    	                                $("#addCalendar").on("click",function(){  // modal의 추가 버튼 클릭 시
    	                                    var title = $("#calendar_title").val();
    	                                    var start_date = $("#calendar_start_date").val();
    	                                    var end_date = $("#calendar_end_date").val();
    	                                    var backgroundColor = $("#calendar_color").val();
    	                                    var contents = $("#calendar_contents").val();
    	                                    //내용 입력 여부 확인
    	                                    if(title == null || title == ""){
    	                                        alert("제목을 입력하세요.");
    	                                    }else if(start_date == "" || end_date ==""){
    	                                        alert("날짜를 입력하세요.");
    	                                    }else if(new Date(end_date)- new Date(start_date) < 0){ // date 타입으로 변경 후 확인
    	                                        alert("종료일이 시작일보다 먼저입니다.");
    	                                    }else if(contents == "" || contents == null){ 
    	                                        alert("내용을 채워주세요.");
    	                                    }else{ // 정상적인 입력 시
    	                                       
    	                                    	
    	                                    	$.ajax({
    	                            				url:"/insertCal.mpg",
    	                            				type:"post",
    	                            				data:{
    	                            					"title" : title,
    	                                                "start" : start_date,
    	                                                "end" : end_date,
    	                                                "textColor" : '#ffffff',
    	                                                "backgroundColor":backgroundColor,
    	                                                "contents" : contents
    	    										},
    	                            				dataType:"json"
    	                            			}).done(function(resp){
    	                            				location.reload();	
    	                            			})    
    	                                       }
    	                                    
    	                                });
    	                            }
    	                        }
    	                    },
    	                    editable: true, // false로 변경 시 draggable 작동 x 
    	                    displayEventTime: false // 시간 표시 x
    	                });
    	                calendar.render();
    	            });
    			})
    			
            
    		
            
            
            function getTimestampToDate(timestamp){
            	    var date = new Date(timestamp*1000);
            	    var chgTimestamp = date.getFullYear().toString()
            	        +addZero(date.getMonth()+1)
            	        +addZero(date.getDate().toString())
            	        +addZero(date.getHours().toString())
            	        +addZero(date.getMinutes().toString())
            	        +addZero(date.getSeconds().toString());
            	    return chgTimestamp;
            	}
            	 
            	function addZero(data){
            	    return (data<10) ? "0"+data : data;
            	}
            	
        
    </script>
    
    
    <script type="text/javascript">
    let city = ['Jeju City'];
   
   city.forEach(function(city){
      $(document).ready(function() {
         let weatherIcon = {
         '01' : 'fas fa-sun',
         '02' : 'fas fa-cloud-sun',
         '03' : 'fas fa-cloud',
         '04' : 'fas fa-cloud-meatball',
         '09' : 'fas fa-cloud-sun-rain',
         '10' : 'fas fa-cloud-showers-heavy',
         '11' : 'fas fa-poo-storm',
         '13' : 'far fa-snowflake',
         '50' : 'fas fa-smog'
         };
         $.ajax({
            url:'http://api.openweathermap.org/data/2.5/weather?q='+city+'&APPID=71199a5512c711405120f9710683654c&units=metric',
            dataType:'json',
            type:'GET',
            success:function(data){
               let $Icon = (data.weather[0].icon).substr(0,2);
               let $Temp = Math.floor(data.main.temp) + 'º';
               let $city = "제주도";
               
               $('.CurrIcon').append('<i class="' + weatherIcon[$Icon] +'"></i>');
               $('.CurrTemp').prepend($Temp);
               $('.City').append($city);
               console.log(data);
                   console.log("현재온도 : "+ (data.main.temp- 273.15) ); //섭씨온도를 만들기 위함
                   console.log("현재습도 : "+ data.main.humidity);
                   console.log("날씨 : "+ data.weather[0].main );
                   console.log("상세날씨설명 : "+ data.weather[0].description );
                   console.log("날씨 이미지 : "+ data.weather[0].icon );
                   console.log("바람   : "+ data.wind.speed );
                   console.log("나라   : "+ data.sys.country );
                   console.log("도시이름  : "+ data.name );
                   console.log("구름  : "+ (data.clouds.all) +"%" );  
            }
         })
      });
   });
   
   
   //top 버튼

   mybutton = document.getElementById("myBtn");

   window.onscroll = function() {scrollFunction()};

   function scrollFunction() {
     if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
       mybutton.style.display = "block";
     } else {
       mybutton.style.display = "none";
     }
   }


   function topFunction() {
     document.body.scrollTop = 0; 
     document.documentElement.scrollTop = 0; 
   }
	//쪽지 스크립트(인피티니스크롤미적용)
	
	let isReceiveClick = true;
	
	
	$("#message-tab").on("click", function(){
		if(isReceiveClick){
			$(".receive_msgtext").remove();
			let msgText = $("<div class='col-12 receive_msgtext'>");
			$(".receive_msgbox").append(msgText);
		
			let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.
	        getReceiveList(page);
	        page++;
//				if(isAjaxing){
//					return;
//				}
//				isAjaxing = true;
//			alert(page)
		 	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
		  	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//			  	        alert(page)
		  	  		getReceiveList(page);
		   	        page++;   
//		                console.log(page);
		    	 } 
		 	   });
		 	   
		 	   isReceiveClick = false;
		}else{
			
		}

		
	});
	
	
	
	 function getReceiveList(pape){
		let page = pape;

		$.ajax({
           url : '/receiveMsgBox.mpg',
           type : 'POST',
           data : {page : page},
           dataType : 'json'
      }).done(function(resp){
//			$(".receive_msgboard2").remove();
		console.log(resp);
//			if()
		for(let i = 0; i < resp.length; i++){
			
			let msgDiv = $("<div class='col-12 receive_msgboard2'>");
			let msgDiv1 = $("<div class='row m-0 border border-2 rounded board_row'>");
			
			let msgDiv2 = $("<div class='col-md-2 col-lg-1 d-none d-lg-block p-0 text-center'>");
			msgDiv2.text(resp[i].line);
			
			let msgDiv3 = $("<div class='col-8 col-md-8 col-lg-5 m-0 title ellipsis p-0'>");
			let msgSpan = $("<span>");
			let msgHref = $("<a href='detailMsg.mpg?message_seq="+resp[i].message_seq+"'>");
			msgHref.text(resp[i].title);
			
			let msgDiv4 = $("<div class='col-4 col-md-4 col-lg-2 p-0 ellipsis text-center'>");
			let msgSpan2 = $("<span>")
			msgSpan2.text(resp[i].sender);
			
			let msgDiv5 = $("<div class='col-md-2 col-lg-4 d-none d-lg-block p-0 text-center'>");
			msgDiv5.text(resp[i].date);
			
			
			
			$(".receive_msgtext").append(msgDiv);
			msgDiv.append(msgDiv1);
			msgDiv1.append(msgDiv2);
			msgDiv1.append(msgDiv3);
			msgDiv3.append(msgSpan);
			msgSpan.append(msgHref);
			msgDiv1.append(msgDiv4);
			msgDiv4.append(msgSpan2);
			msgDiv1.append(msgDiv5);
			
			msgDiv.hide();
            msgDiv.fadeIn(1500);
            
		}
//			setTimeout(function(){isAjaxing = false;}, 100000);
	})
};
	
	
	isSendClick= true;
	$("#v-pills-send-tab").on("click", function(){
		if(isSendClick){
			console.log(123);
			$(".send_msgtext").remove();
			let msgText = $("<div class='col-12 send_msgtext'>");
			$(".send_msgbox").append(msgText);
			
			let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.
	        getSendList(page);
	        page++;
		
//		alert(page)
		 	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
		  	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//		  	        alert(page)
		  	  		getSendList(page);
		   	        page++;   
//		                console.log(page);
		    	 } 
		 	   });
		 	   isSendClick = false;
		}else{
			
		}
		
	});
	
	
	
	 function getSendList(pape){
		let page = pape;
		
		$.ajax({
          url : '/sendMsgBox.mpg',
          type : 'POST',
          data : {page : page},
          dataType : 'json'
     }).done(function(resp){
		
		
		for(let i = 0; i < resp.length; i++){
			
			let msgDiv = $("<div class='col-12 send_msgboard2'>");
			let msgDiv1 = $("<div class='row m-0 border border-2 rounded board_row'>");
			
			let msgDiv2 = $("<div class='col-md-2 col-lg-1 d-none d-lg-block p-0 text-center'>");
			msgDiv2.text(resp[i].line);
			
			let msgDiv3 = $("<div class='col-8 col-md-8 col-lg-5 m-0 title ellipsis p-0'>");
			let msgHref = $("<a href='detailMsg.mpg?message_seq="+resp[i].message_seq+"'>");
			let msgSpan = $("<span>")
			msgHref.text(resp[i].title);
			
			let msgDiv4 = $("<div class='col-4 col-md-4 col-lg-2 p-0 ellipsis text-center'>");
			let msgSpan2 = $("<span>")
			msgSpan2.text(resp[i].receiver);
			
			let msgDiv5 = $("<div class='col-md-2 col-lg-4 d-none d-lg-block p-0 text-center'>");
			msgDiv5.text(resp[i].date);
			
			$(".send_msgtext").append(msgDiv);
			msgDiv.append(msgDiv1);
			msgDiv1.append(msgDiv2);
			msgDiv1.append(msgDiv3);
			msgDiv3.append(msgSpan);
			msgSpan.append(msgHref);
			msgDiv1.append(msgDiv4);
			msgDiv4.append(msgSpan2);
			msgDiv1.append(msgDiv5);
			
			msgDiv.hide();
            msgDiv.fadeIn(1500);
		}
	})
};

//게시글 자유게시판 스크립트

isFreeBoardClick= true;
$("#board-tab").on("click", function(){
	if(isFreeBoardClick){
		$("#free_boardtext").remove();
		let free_boardText = $("<div class='col-12 ' id='free_boardtext'>");
		$("#free_boardbox").append(free_boardText);
		
		let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.
        getFreeBoardList(page);
        page++;
	
//	alert(page)
	 	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	  	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//	  	        alert(page)
	  	  		getFreeBoardList(page);
	   	        page++;   
//	                console.log(page);
	    	 } 
	 	   });
	 	 isFreeBoardClick = false;
	}else{
		
	}
	
});



 function getFreeBoardList(pape){
	let page = pape;
	
	$.ajax({
      url : '/freeboardBox.mpg',
      type : 'POST',
      data : {page : page},
      dataType : 'json'
 }).done(function(resp){
	
	for(let i = 0; i < resp.length; i++){
		let freeDiv = $("<div class='col-12 free_boardbox2'>");
		let freeDiv1 = $("<div class='row m-0 border border-2 rounded board_row '>");
		
		let freeDiv2 = $("<div class='col-md-2 col-lg-1 d-none d-lg-block p-0 text-center'>");
		freeDiv2.text(resp[i].line);
		
		let freeDiv3 = $("<div class='col-8 col-md-8 col-lg-5 m-0 title ellipsis p-0'>");
		let freeHref = $("<a href='detailView.board?cpage="+page+"&seq="+resp[i].all_board_seq+"&click=ok'>");
		let freeSpan = $("<span>")
		freeHref.text(resp[i].title);
		
		let freeDiv4 = $("<div class='col-4 col-md-4 col-lg-2 p-0 ellipsis text-center'>");
		let freeSpan2 = $("<span>")
		freeSpan2.text('${loginID}');
		
		let freeDiv5 = $("<div class='col-md-2 col-lg-4 d-none d-lg-block p-0 text-center'>");
		freeDiv5.text(resp[i].date);
		
		$("#free_boardtext").append(freeDiv);
		freeDiv.append(freeDiv1);
		freeDiv1.append(freeDiv2);
		freeDiv1.append(freeDiv3);
		freeDiv3.append(freeSpan);
		freeSpan.append(freeHref);
		freeDiv1.append(freeDiv4);
		freeDiv4.append(freeSpan2);
		freeDiv1.append(freeDiv5);
		
		freeDiv.hide();
		freeDiv.fadeIn(1500);
		}
	})
};
//여행후기 자유게시판 스크립트

isGalleryClick= true;
$("#v-pills-tab2-tab").on("click", function(){
	if(isGalleryClick){
		$("#gallery_boardtext").remove();
		let gallery_boardText = $("<div class='col-12 ' id='gallery_boardtext'>");
		$("#gallery_boardbox").append(gallery_boardText);
		
		let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.
        getGalleryList(page);
        page++;
	
//	alert(page)
	 	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	  	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//	  	        alert(page)
	  	  		getGalleryList(page);
	   	        page++;   
//	                console.log(page);
	    	 } 
	 	   });
	 	 isGalleryClick = false;
	}else{
		
	}
	
});



 function getGalleryList(pape){
	let page = pape;
	
	$.ajax({
      url : '/galleryBox.mpg',
      type : 'POST',
      data : {page : page},
      dataType : 'json'
 }).done(function(resp){
	
	for(let i = 0; i < resp.length; i++){
		let galleryDiv = $("<div class='col-12 gallery_boardbox2'>");
		let galleryDiv1 = $("<div class='row m-0 border border-2 rounded board_row '>");
		
		let galleryDiv2 = $("<div class='col-md-2 col-lg-1 d-none d-lg-block p-0 text-center'>");
		galleryDiv2.text(resp[i].line);
		
		let galleryDiv3 = $("<div class='col-8 col-md-8 col-lg-5 m-0 title ellipsis p-0'>");
		let galleryHref = $("<a href='detailView.board?cpage="+page+"&seq="+resp[i].all_board_seq+"&click=ok'>");
		let gallerySpan = $("<span>")
		galleryHref.text(resp[i].title);
		
		let galleryDiv4 = $("<div class='col-4 col-md-4 col-lg-2 p-0 ellipsis text-center'>");
		let gallerySpan2 = $("<span>")
		gallerySpan2.text('${loginID}');
		
		let galleryDiv5 = $("<div class='col-md-2 col-lg-4 d-none d-lg-block p-0 text-center'>");
		galleryDiv5.text(resp[i].date);
		
		$("#gallery_boardtext").append(galleryDiv);
		galleryDiv.append(galleryDiv1);
		galleryDiv1.append(galleryDiv2);
		galleryDiv1.append(galleryDiv3);
		galleryDiv3.append(gallerySpan);
		gallerySpan.append(galleryHref);
		galleryDiv1.append(galleryDiv4);
		galleryDiv4.append(gallerySpan2);
		galleryDiv1.append(galleryDiv5);
		
		galleryDiv.hide();
		galleryDiv.fadeIn(1500);
		}
	})
};
// 구인구직 스크립트
isJobClick= true;
$("#v-pills-tab3-tab").on("click", function(){
	if(isJobClick){
		$("#job_boardtext").remove();
		let job_boardText = $("<div class='col-12 ' id='job_boardtext'>");
		$("#job_boardbox").append(job_boardText);
		
		let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.
        getJobList(page);
        page++;
	
//	alert(page)
	 	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	  	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//	  	        alert(page)
	  	  		getJobList(page);
	   	        page++;   
//	                console.log(page);
	    	 } 
	 	   });
	 	 isJobClick = false;
	}else{
		
	}
	
});



 function getJobList(pape){
	let page = pape;
	$.ajax({
      url : '/jobBox.mpg',
      type : 'POST',
      data : {page : page},
      dataType : 'json'
 }).done(function(resp){
	console.log(resp);
	for(let i = 0; i < resp.length; i++){
		let jobDiv = $("<div class='col-12 job_boardbox2'>");
		let jobDiv1 = $("<div class='row m-0 border border-2 rounded board_row '>");
		
		let jobDiv2 = $("<div class='col-md-2 col-lg-1 d-none d-lg-block p-0 text-center'>");
		jobDiv2.text(resp[i].line);
		
		let jobDiv3 = $("<div class='col-8 col-md-8 col-lg-5 m-0 title ellipsis p-0'>");
		let jobHref = $("<a href='detailView.board?cpage="+page+"&seq="+resp[i].all_board_seq+"&click=ok'>");
		let jobSpan = $("<span>")
		jobHref.text(resp[i].title);
		
		let jobDiv4 = $("<div class='col-4 col-md-4 col-lg-2 p-0 ellipsis text-center'>");
		let jobSpan2 = $("<span>")
		jobSpan2.text('${loginID}');
		
		let jobDiv5 = $("<div class='col-md-2 col-lg-4 d-none d-lg-block p-0 text-center'>");
		jobDiv5.text(resp[i].date);
		
		$("#job_boardtext").append(jobDiv);
		jobDiv.append(jobDiv1);
		jobDiv1.append(jobDiv2);
		jobDiv1.append(jobDiv3);
		jobDiv3.append(jobSpan);
		jobSpan.append(jobHref);
		jobDiv1.append(jobDiv4);
		jobDiv4.append(jobSpan2);
		jobDiv1.append(jobDiv5);
		
		jobDiv.hide();
		jobDiv.fadeIn(1500);
		}
	})
};
//맛집 스크립트
isFoodClick= true;
$("#v-pills-tab4-tab").on("click", function(){
	if(isFoodClick){
		$("#food_boardtext").remove();
		let food_boardText = $("<div class='col-12 ' id='food_boardtext'>");
		$("#food_boardbox").append(food_boardText);
		
		let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.
        getFoodList(page);
        page++;
	
//	alert(page)
	 	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	  	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//	  	        alert(page)
	  	  		getFoodList(page);
	   	        page++;   
//	                console.log(page);
	    	 } 
	 	   });
	 	 isFoodClick = false;
	}else{
		
	}
	
});



 function getFoodList(pape){
	let page = pape;
	$.ajax({
      url : '/foodBox.mpg',
      type : 'POST',
      data : {page : page},
      dataType : 'json'
 }).done(function(resp){
	console.log(resp);
	for(let i = 0; i < resp.length; i++){
		
		let foodDiv = $("<div class='col-12 food_boardbox2'>");
		let foodDiv1 = $("<div class='row m-0 border border-2 rounded board_row '>");
		
		let foodDiv2 = $("<div class='col-md-2 col-lg-1 d-none d-lg-block p-0 text-center'>");
		foodDiv2.text(resp[i].line);
		
		let foodDiv3 = $("<div class='col-8 col-md-8 col-lg-5 m-0 title ellipsis p-0'>");
		let foodHref = $("<a href='detailView.board?cpage="+page+"&seq="+resp[i].all_board_seq+"&click=ok'>");
		let foodSpan = $("<span>")
		foodHref.text(resp[i].title);
		
		let foodDiv4 = $("<div class='col-4 col-md-4 col-lg-2 p-0 ellipsis text-center'>");
		let foodSpan2 = $("<span>")
		foodSpan2.text('${loginID}');
		
		let foodDiv5 = $("<div class='col-md-2 col-lg-4 d-none d-lg-block p-0 text-center'>");
		foodDiv5.text(resp[i].date);
		
		$("#food_boardtext").append(foodDiv);
		foodDiv.append(foodDiv1);
		foodDiv1.append(foodDiv2);
		foodDiv1.append(foodDiv3);
		foodDiv3.append(foodSpan);
		foodSpan.append(foodHref);
		foodDiv1.append(foodDiv4);
		foodDiv4.append(foodSpan2);
		foodDiv1.append(foodDiv5);
		
		foodDiv.hide();
		foodDiv.fadeIn(1500);
		}
	})
};
//숙소리뷰 스크립트
isHouseClick= true;
$("#v-pills-tab5-tab").on("click", function(){
	if(isHouseClick){
		$("#house_boardtext").remove();
		let house_boardText = $("<div class='col-12 ' id='house_boardtext'>");
		$("#house_boardbox").append(house_boardText);
		
		let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.
        getHouseList(page);
        page++;
	
//	alert(page)
	 	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	  	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//	  	        alert(page)
	  	  		getHouseList(page);
	   	        page++;   
//	                console.log(page);
	    	 } 
	 	   });
	 	 isHouseClick = false;
	}else{
		
	}
	
});



 function getHouseList(pape){
	let page = pape;
	$.ajax({
      url : '/houseBox.mpg',
      type : 'POST',
      data : {page : page},
      dataType : 'json'
 }).done(function(resp){
	console.log(resp);
	for(let i = 0; i < resp.length; i++){
		let houseDiv = $("<div class='col-12 house_boardbox2'>");
		let houseDiv1 = $("<div class='row m-0 border border-2 rounded board_row '>");
		
		let houseDiv2 = $("<div class='col-md-2 col-lg-1 d-none d-lg-block p-0 text-center'>");
		houseDiv2.text(resp[i].line);
		
		let houseDiv3 = $("<div class='col-8 col-md-8 col-lg-5 m-0 title ellipsis p-0'>");
		let houseHref = $("<a href='detailView.board?cpage="+page+"&seq="+resp[i].all_board_seq+"&click=ok'>");
		let houseSpan = $("<span>")
		houseHref.text(resp[i].title);
		
		let houseDiv4 = $("<div class='col-4 col-md-4 col-lg-2 p-0 ellipsis text-center'>");
		let houseSpan2 = $("<span>")
		houseSpan2.text('${loginID}');
		
		let houseDiv5 = $("<div class='col-md-2 col-lg-4 d-none d-lg-block p-0 text-center'>");
		houseDiv5.text(resp[i].date);
		
		$("#house_boardtext").append(houseDiv);
		houseDiv.append(houseDiv1);
		houseDiv1.append(houseDiv2);
		houseDiv1.append(houseDiv3);
		houseDiv3.append(houseSpan);
		houseSpan.append(houseHref);
		houseDiv1.append(houseDiv4);
		houseDiv4.append(houseSpan2);
		houseDiv1.append(houseDiv5);
		
		houseDiv.hide();
		houseDiv.fadeIn(1500);
		}
	})
};
isJjimClick= true;
$("#v-pills-tab6-tab").on("click", function(){
	if(isJjimClick){
		$("#jjim_boardtext").remove();
		let jjim_boardText = $("<div class='col-12 ' id='jjim_boardtext'>");
		$("#jjim_boardbox").append(jjim_boardText);
		
		let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.
        getJjimList(page);
        page++;
	
//	alert(page)
	 	  $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
	  	  	if($(window).scrollTop() >= $(document).height() - $(window).height()){
//	  	        alert(page)
	  	  		getJjimList(page);
	   	        page++;   
//	                console.log(page);
	    	 } 
	 	   });
	 	 isJjimClick = false;
	}else{
		
	}
	
});



 function getJjimList(pape){
	let page = pape;
	$.ajax({
      url : '/jjimBox.mpg',
      type : 'POST',
      data : {page : page},
      dataType : 'json'
 }).done(function(resp){
	console.log(resp);
	for(let i = 0; i < resp.length; i++){
		let jjimDiv = $("<div class='col-12 jjim_boardbox2'>");
		let jjimDiv1 = $("<div class='row m-0 border border-2 rounded board_row '>");
		
		let jjimDiv2 = $("<div class='col-md-2 col-lg-1 d-none d-lg-block p-0 text-center'>");
		jjimDiv2.text(resp[i].line);
		
		let jjimDiv3 = $("<div class='col-8 col-md-8 col-lg-5 m-0 title ellipsis p-0'>");
		let jjimHref = $("<a href='detailView.board?cpage="+page+"&seq="+resp[i].all_board_seq+"&click=ok'>");
		let jjimSpan = $("<span>")
		jjimHref.text(resp[i].title);
		
		let jjimDiv4 = $("<div class='col-4 col-md-4 col-lg-2 p-0 ellipsis text-center'>");
		let jjimSpan2 = $("<span>")
		jjimSpan2.text(resp[i].id);
		
		let jjimDiv5 = $("<div class='col-md-2 col-lg-4 d-none d-lg-block p-0 text-center'>");
		jjimDiv5.text(resp[i].jjim_date);
		
		$("#jjim_boardtext").append(jjimDiv);
		jjimDiv.append(jjimDiv1);
		jjimDiv1.append(jjimDiv2);
		jjimDiv1.append(jjimDiv3);
		jjimDiv3.append(jjimSpan);
		jjimSpan.append(jjimHref);
		jjimDiv1.append(jjimDiv4);
		jjimDiv4.append(jjimSpan2);
		jjimDiv1.append(jjimDiv5);
		
		jjimDiv.hide();
		jjimDiv.fadeIn(1500);
		}
	})
};
//쪽지보내기
$("#modal_sendmsg").on("click", function(){
	if($("#modal_receiver").val()==""){
		alert("받는 사람의 닉네임을 입력하세요.");
		$("#modal_receiver").focus();
		return false;
	}else if($("#modal_title").val()==""){
		alert("제목을 입력해주세요.");
		$("#modal_title").focus();
	}else if($("#modal_msgContents").val()==""){
		alert("내용을 입력해주세요.");
		$("#modal_msgContents").focus();
	}else{
    	$.ajax({
    		url:"sendMsg.mpg",
    		type:"post",
    		data:{
    			receiver:$("#modal_receiver").val(),
    			title:$("#modal_title").val(),
    			contents:$("#modal_msgContents").val()
    			},
    		dataType:"json"
    	}).done(function(resp){
    		console.log(resp);
    		if(resp == ""){
    			alert("존재하지 않는 닉네임입니다.");
    		}else{
    			location.reload();
    		}
    	})
    }
})

$("#modal_receiver").on("blur",function(){
		$.ajax({
		url:"/duplIDCheck.member",
		type:"get",
		data:{nickname:$("#modal_receiver").val()},
		dataType:"json"
		}).done(function(resp){
			if(resp==false){						
				$("#checkReceiver").text("존재하지 않는 닉네임입니다.");
				$("#checkReceiver").css({ color: "red" });
				
				$("#modal_sendmsg").attr("disabled", "disabled");
			}else if(resp==true){
				$("#checkReceiver").text("존재하는 닉네임입니다.");
				$("#checkReceiver").css({ color: "blue" });
				
				$("#modal_sendmsg").removeAttr("disabled");
			}
		});
	})
</script>

</body>

</html>