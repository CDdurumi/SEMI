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
    <title>Insert title here</title>
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
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
   
   <!-- Calendar -->
   <link
   href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.css'
   rel='stylesheet' />
   <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.js'></script>
    
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");

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
            padding-top: 100px;
        }
        /*탭 내용*/
        #v-pills-tabContent{
            padding-left: 25px;
            padding-right: 25px;
            width: 100%;
            /* border: 1px solid black; */

        }
        #v-pills-tabContent >div{
            color: black;
        }

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
        .board_row2{
            padding-top: 10px;
            height: 100%;
        }
        

        /*--계정관리---------------------------------------------------------------------------------------*/

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



    </style>

</head>

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div>
           
            <c:choose>
            <c:when test="${loginID !=null}">
                  ${loginID }님 안녕하세요 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="/logout.member" class=""  >logout</a>               
            </c:when>
      
            <c:otherwise>
               <a href="#" class="login" id="login"  data-bs-toggle="modal" data-bs-target="#exampleModal">login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/signup.jsp" class="join">join</a>
            </c:otherwise>
         </c:choose>
        </div>
    </header>
    
    <div class="l-navbar" id="nav1-bar">
        <nav class="nav1">
            <div> <a href="/index.jsp" class="nav1_logo"> <i class='bx bx-layer nav1_logo-icon'></i> <span class="nav1_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav1_list">
                    <a href="#" class="nav1_link"> <i class='CurrIcon'></i> <span class="nav1_name"><span class="weather">
                    <span class="CurrTemp"></span>
                    <span class="City"></span>
                    </span></span> </a>
                    <a href="/board/communityMain.jsp" class="nav1_link"> <i class='bx bx-message nav1_icon'></i> <span
                            class="nav1_name">커뮤니티</span> </a>
                    <a href="/board/editorReMain.jsp" class="nav1_link"> <i class='bx bx-book-bookmark nav1_icon'></i> <span class="nav1_name">에디터추천</span>
                    </a>
                    <a href="/myPage.jsp" class="nav1_link active"> <i class='bx bx-user nav1_icon'></i> <span
                            class="nav1_name">마이페이지</span> </a>
                    <a href="#" class="nav1_link"> <i class='bx bx-calendar nav1_icon'></i> <span
                            class="nav1_name">일정관리</span> </a>
                    <a href="/boardMainView.board?cpage=1" class="nav1_link"> <i class='bx bx-home nav1_icon'></i> <span class="nav1_name">숙소리뷰</span>
                    </a>
                    <a href="#" class="nav1_link"> <i class='bx bx-message-alt-detail nav1_icon'></i> <span
                            class="nav1_name">쪽지</span> </a>
                </div>
            </div>
            <c:choose>
            <c:when test="${loginID !=null}">
               <a href="/logout.member" class="nav1_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav1_name">로그아웃</span> </a>   
            </c:when>
         </c:choose>
            
        </nav>
    </div>
    
<div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-right" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-center" id="exampleModalLabel">로그인</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="card-details">
            <input type="text" id="id-input" placeholder="id">
            <i class="fa fa-envelope"></i>
        </div>
        <div class="card-details">
            <input type="password" id="password-input" placeholder="password">
            <i class="fa fa-lock"></i>
            <span><small class="fa fa-eye-slash passcode"></small></span>
        </div>
        <div class="login_api" style="text-align:center">
           <a href="#"><img src="/imgsrc/google_signin_buttons/web/1x/btn_google_signin_dark_normal_web.png"></a>
        </div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-primary" id="modal_loginBtn">로그인</button>
        <button type="button" class="btn btn-outline-primary">회원가입</button>
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
                
                <div class="d-flex align-items-start">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                      <button class="nav-link active" id="v-pills-receive-tab" data-bs-toggle="pill" data-bs-target="#v-pills-receive" type="button" role="tab" aria-controls="v-pills-receive" aria-selected="true">받은<br>쪽지함</button>
                      <button class="nav-link" id="v-pills-send-tab" data-bs-toggle="pill" data-bs-target="#v-pills-send" type="button" role="tab" aria-controls="v-pills-send" aria-selected="false">보낸<br>쪽지함</button>
                    </div>
                    <div class="tab-content" id="v-pills-tabContent" >
                        <!--받은 쪽지함-->
                        <div class="tab-pane fade show active" id="v-pills-receive" role="tabpanel" aria-labelledby="v-pills-receive-tab" >
                            
                            <div class="container2">
    
                                <div class="row m-0 ">
                                    <div class="col-12  ">
                                        <div class="row " id="board_menu_text">
                                            <div class="col-md-2 col-lg-1 d-none d-md-block ">번호</div>
                                            <div class="col-8 col-md-6 col-lg-7">제목</div>
                                            <div class="col-4 col-md-2 col-lg-2 text-center">보낸이</div>
                                            <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                        </div>
                                    </div>

                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row ">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                                           <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>

                                           
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div calss="row">
                                       <div class="col-12 text-center">
                                           <nav aria-label="Page navigation example">
                                   <ul class="pagination justify-content-center">
                                     <li class="page-item">
                                       <a class="page-link" href="#" aria-label="Previous">
                                         <span aria-hidden="true">&laquo;</span>
                                       </a>
                                     </li>
                                     ${navi }
                                     <li class="page-item">
                                       <a class="page-link" href="#" aria-label="Next">
                                         <span aria-hidden="true">&raquo;</span>
                                       </a>
                                     </li>
                                   </ul>
                                 </nav>
                                       </div>
                                   </div>
                               </div>
                            </div>
                        </div>

                        <!--보낸 쪽지함-->
                        <div class="tab-pane fade" id="v-pills-send" role="tabpanel" aria-labelledby="v-pills-send-tab">
                            <div class="container2">
                                <div class="row m-0">
                                    <div class="col-12  ">
                                        <div class="row " id="board_menu_text">
                                            <div class="col-md-2 col-lg-1 d-none d-md-block ">번호</div>
                                            <div class="col-8 col-md-6 col-lg-7">제목</div>
                                            <div class="col-4 col-md-2 col-lg-2 text-center">받는이</div>
                                            <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                        </div>
                                    </div>

                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row ">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                                           <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                    <div class="row m-0 border border-2 rounded board_row">
                                        <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                        <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                        <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                        <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                    </div>
                                </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board2">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div calss="row">
                                       <div class="col-12 text-center">
                                           <nav aria-label="Page navigation example">
                                   <ul class="pagination justify-content-center">
                                     <li class="page-item">
                                       <a class="page-link" href="#" aria-label="Previous">
                                         <span aria-hidden="true">&laquo;</span>
                                       </a>
                                     </li>
                                     ${navi }
                                     <li class="page-item">
                                       <a class="page-link" href="#" aria-label="Next">
                                         <span aria-hidden="true">&raquo;</span>
                                       </a>
                                     </li>
                                   </ul>
                                 </nav>
                                       </div>
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
                      <button class="nav-link" id="v-pills-tab5-tab" data-bs-toggle="pill" data-bs-target="#v-pills-tab6" type="button" role="tab" aria-controls="v-pills-tab6" aria-selected="false">찜</button>
                    </div>
                    <div class="tab-content" id="v-pills-tabContent">

   <!--자유게시판--------------------------------------------->    
                      <div class="tab-pane fade show active" id="v-pills-tab1" role="tabpanel" aria-labelledby="v-pills-tab1-tab">
                        <div class="container2">
    
                            <div class="row m-0 ">
                                <div class="col-12  ">
                                    <div class="row " id="board_menu_text">
                                        <div class="col-md-2 col-lg-1 d-none d-md-block ">번호</div>
                                        <div class="col-8 col-md-6 col-lg-7">제목</div>
                                        <div class="col-4 col-md-2 col-lg-2 text-center">보낸이</div>
                                        <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                    </div>
                                </div>

                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row ">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                                       <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>

                                       
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div calss="row">
                                   <div class="col-12 text-center">
                                       <nav aria-label="Page navigation example">
                               <ul class="pagination justify-content-center">
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Previous">
                                     <span aria-hidden="true">&laquo;</span>
                                   </a>
                                 </li>
                                 ${navi }
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Next">
                                     <span aria-hidden="true">&raquo;</span>
                                   </a>
                                 </li>
                               </ul>
                             </nav>
                                   </div>
                               </div>
                           </div>
                        </div>
                   

                      </div>

      <!--여행후기----------------------------------------------------------->

                      <div class="tab-pane fade" id="v-pills-tab2" role="tabpanel" aria-labelledby="v-pills-tab2-tab">

                        <div class="container2">
    
                            <div class="row m-0 ">
                                <div class="col-12  ">
                                    <div class="row " id="board_menu_text">
                                        <div class="col-md-2 col-lg-1 d-none d-md-block ">번호</div>
                                        <div class="col-8 col-md-6 col-lg-7">제목</div>
                                        <div class="col-4 col-md-2 col-lg-2 text-center">보낸이</div>
                                        <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                    </div>
                                </div>

                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row ">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                                       <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>

                                       
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div calss="row">
                                   <div class="col-12 text-center">
                                       <nav aria-label="Page navigation example">
                               <ul class="pagination justify-content-center">
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Previous">
                                     <span aria-hidden="true">&laquo;</span>
                                   </a>
                                 </li>
                                 ${navi }
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Next">
                                     <span aria-hidden="true">&raquo;</span>
                                   </a>
                                 </li>
                               </ul>
                             </nav>
                                   </div>
                               </div>
                           </div>
                        </div>

                      </div>

      <!--구인구직------------------------------------------------------------->

                      <div class="tab-pane fade" id="v-pills-tab3" role="tabpanel" aria-labelledby="v-pills-tab3-tab">
                          
  
                        <div class="container2">
    
                            <div class="row m-0 ">
                                <div class="col-12  ">
                                    <div class="row " id="board_menu_text">
                                        <div class="col-md-2 col-lg-1 d-none d-md-block ">번호</div>
                                        <div class="col-8 col-md-6 col-lg-7">제목</div>
                                        <div class="col-4 col-md-2 col-lg-2 text-center">보낸이</div>
                                        <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                    </div>
                                </div>

                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row ">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                                       <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div calss="row">
                                   <div class="col-12 text-center">
                                       <nav aria-label="Page navigation example">
                               <ul class="pagination justify-content-center">
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Previous">
                                     <span aria-hidden="true">&laquo;</span>
                                   </a>
                                 </li>
                                 ${navi }
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Next">
                                     <span aria-hidden="true">&raquo;</span>
                                   </a>
                                 </li>
                               </ul>
                             </nav>
                                   </div>
                               </div>
                           </div>
                        </div>
        
                        </div>

      <!--맛집----------------------------------------------------->
                      <div class="tab-pane fade" id="v-pills-tab4" role="tabpanel" aria-labelledby="v-pills-tab4-tab">

                        <div class="container2">
    
                            <div class="row m-0 ">
                                <div class="col-12  ">
                                    <div class="row " id="board_menu_text">
                                        <div class="col-md-2 col-lg-1 d-none d-md-block ">번호</div>
                                        <div class="col-8 col-md-6 col-lg-7">제목</div>
                                        <div class="col-4 col-md-2 col-lg-2 text-center">보낸이</div>
                                        <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                    </div>
                                </div>

                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row ">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                                       <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>

                                       
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div calss="row">
                                   <div class="col-12 text-center">
                                       <nav aria-label="Page navigation example">
                               <ul class="pagination justify-content-center">
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Previous">
                                     <span aria-hidden="true">&laquo;</span>
                                   </a>
                                 </li>
                                 ${navi }
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Next">
                                     <span aria-hidden="true">&raquo;</span>
                                   </a>
                                 </li>
                               </ul>
                             </nav>
                                   </div>
                               </div>
                           </div>
                        </div>



                      </div>

<!----숙소리뷰-------------------------------------------->

     <div class="tab-pane fade" id="v-pills-tab5" role="tabpanel" aria-labelledby="v-pills-tab5-tab">

        <div class="container2">

           <div class="row m-0 ">
               <div class="col-12  ">
                 <div class="row " id="board_menu_text">
                    <div class="col-md-2 col-lg-1 d-none d-md-block ">번호</div>
                    <div class="col-8 col-md-6 col-lg-7">제목</div>
                    <div class="col-4 col-md-2 col-lg-2 text-center">보낸이</div>
                    <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                </div>
            </div>

           <div class="col-12  board2">
               <div class="row m-0 border border-2 rounded board_row ">
                   <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                   <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                   <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                   <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                   <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                   <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>

                   
               </div>
           </div>
           
           <div class="col-12  board2">
               <div class="row m-0 border border-2 rounded board_row">
                   <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                   <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                   <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                   <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
               </div>
           </div>
           <div class="col-12  board2">
               <div class="row m-0 border border-2 rounded board_row">
                   <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                   <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                   <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                   <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
               </div>
           </div>
           <div class="col-12  board2">
               <div class="row m-0 border border-2 rounded board_row">
                   <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                   <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                   <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                   <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
               </div>
           </div>
           <div class="col-12  board2">
               <div class="row m-0 border border-2 rounded board_row">
                   <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                   <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                   <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                   <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
               </div>
           </div>
           <div class="col-12  board2">
               <div class="row m-0 border border-2 rounded board_row">
                   <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                   <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                   <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                   <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
               </div>
           </div>
           <div calss="row">
               <div class="col-12 text-center">
                   <nav aria-label="Page navigation example">
           <ul class="pagination justify-content-center">
             <li class="page-item">
               <a class="page-link" href="#" aria-label="Previous">
                 <span aria-hidden="true">&laquo;</span>
               </a>
             </li>
             ${navi }
             <li class="page-item">
               <a class="page-link" href="#" aria-label="Next">
                 <span aria-hidden="true">&raquo;</span>
               </a>
             </li>
           </ul>
         </nav>
               </div>
           </div>
       </div>
    </div>



  </div>

<!----찜-------------------------------------------->

                      <div class="tab-pane fade" id="v-pills-tab6" role="tabpanel" aria-labelledby="v-pills-tab6-tab">

                        <div class="container2">
    
                            <div class="row m-0 ">
                                <div class="col-12  ">
                                    <div class="row " id="board_menu_text">
                                        <div class="col-md-2 col-lg-1 d-none d-md-block ">번호</div>
                                        <div class="col-8 col-md-6 col-lg-7">제목</div>
                                        <div class="col-4 col-md-2 col-lg-2 text-center">보낸이</div>
                                        <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                    </div>
                                </div>

                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row ">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                                       <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>

                                       
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div class="col-12  board2">
                                   <div class="row m-0 border border-2 rounded board_row">
                                       <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                       <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                       <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                       <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                   </div>
                               </div>
                               <div calss="row">
                                   <div class="col-12 text-center">
                                       <nav aria-label="Page navigation example">
                               <ul class="pagination justify-content-center">
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Previous">
                                     <span aria-hidden="true">&laquo;</span>
                                   </a>
                                 </li>
                                 ${navi }
                                 <li class="page-item">
                                   <a class="page-link" href="#" aria-label="Next">
                                     <span aria-hidden="true">&raquo;</span>
                                   </a>
                                 </li>
                               </ul>
                             </nav>
                                   </div>
                               </div>
                           </div>
                        </div>


                      </div>




                    </div>
                  </div>

            </div>

            <!--계정관리 UI--------------------------------------------------------------------------------------->
            <div class="tab-pane fade" id="account" role="tabpanel" aria-labelledby="account-tab">
                
                
                
                    <form action="/test" method="post">
                        <div class="row text-center" id="header_header">
                            <div class="col-12" id="modi">
                                <div class="row" id="name">
                                    <div class="col-12 col-md-4 content"><strong>아이디</strong> </div>
                                    <div class="col-12 col-md-8 modify content " id="id">
                                       ${loginID }
                                    </div>
                                </div>
                                <div class="row "  id="pw" >
                                    <div class="col-12 col-md-4 pw content" style="display:none;"><strong>비밀번호</strong> </div>
                                    <div class="col-12 col-md-8 modify content pw" style="display:none;">
                                        비밀입니다
                                    </div>
                                </div>
                                <div class="row" id="email">
                                    <div class="col-12 col-md-4 content"><strong>이메일</strong> </div>
                                    <div class="col-12 col-md-8 content">
                                        ${loginEmail }
                                    </div>
                                </div>
                                <div class="row" id="joinday">
                                    <div class="col-12 col-md-4 content"><strong>가입일</strong> </div>
                                    <div class="col-12 col-md-8 content">
                                        ${loginJoinDate } 
                                    </div>
                                </div>
                                <div class="row" id="joinday">
                                    <div class="col-12 col-md-4 check" style="display:none;"><strong>비밀번호 확인</strong> </div>
                                    <div class="col-12 col-md-8 check" style="display:none;">
                                        <input type="text" placeholder="비밀번호를 입력하세요" id="pwtext">
                                        
                                    </div>
                                </div>
                                    <div class="row btn" id="btn">
                                        <div class="col-12 text-center" >
                                        <input type="button" class="btn btn-primary" value="수정하기" id="modify">
                                        <button class="btn btn-primary " id="ok" style="display:none;">완료</button>
                                        <button type="button" class="btn btn-primary check " id="checkpw" style="display:none;">확인</button>
                                        <input type="button" class="btn btn-primary " value="취소" id="back" style="display:none;">
                                        
                                    </div>
                                </div>
                                
                                
                            </div>
                    
                    </div>
                    </form>
                     
       
            
            
           
          </div>

    </div>
    
     <!--top 버튼-->
    <button onclick="topFunction()" id="myBtn" title="Go to top">↑</button>
    <!-------------------------------------------------------------------------------------------------------------------Container Main end-->




    <script>
    
    $("#password-input").on("keyup",function(e){
        if(e.keyCode==13){
            $("#modal_loginBtn").click();
        }
    })
    
    
  //계정관리
   
  
  //컨텐츠 숨김 나타냄
    $("#modify").on("click",function(){
        $(".content").css("display","none"); //모든 컨텐츠
        $("#back").css("display","inline"); //취소버튼
        $("#modify").css("display","none");   //수정하기 버튼
        $(".check").css("display","inline"); //비밀번호 확인 입력창
        
        
        $("#checkpw").on("click",function(){
            $.ajax({
            url:"/#",
            data:{pw:$("#pwtext").text()},
            dataType:"json"
        }).done(function(resp){
            resp=true;
            if(resp){
                $(".content").css("display","inline");
                $("#ok").css("display","inline");    //완료버튼
                $(".pw").css("display","block");    //비번 수정
                $(".check").css("display","none");  //비밀번호 확인 입력창
               

                $(".modify").attr("contenteditable","true");
                $(".modify").css("color","#0089ff");
                $("#id").focus();
            }else{
                alert("비밀번호가 틀렸습니다.");
            }
        })
            
        })
       

        })
        
        

    $("#back").on("click",function(){
        $(".content").css("display","inline"); 
        $("#modify").css("display","inline");
        $("#back").css("display","none");
        $("#ok").css("display","none");
        $(".pw").css("display","none");
        $(".check").css("display","none");

        $(".modify").attr("contenteditable","false");
        $(".modify").css("color","black");
    })

    
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
        /*========== Calendar Script ==========*/
      document.addEventListener('DOMContentLoaded', function() {
         var calendarEl = document.getElementById('calendar');
         var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            googleCalendarApiKey: 'AIzaSyBJEiOXKXgzlPpGoHUB3C00sjH3_2I_Tyw',
            eventSources: [{
               googleCalendarId: '${email }',
               className: 'gcal-event'
               },{
               googleCalendarId : 'ko.south_korea#holiday@group.v.calendar.google.com',
               className : 'ko_event'
               }], 
            eventClick: function(info) {
               info.jsEvent.stopPropagation();
               info.jsEvent.preventDefault();
            },
            dayMaxEventRows: true, // for all non-TimeGrid views
              views: {
                timeGrid: {
                  dayMaxEventRows: 6// adjust to 6 only for timeGridWeek/timeGridDay
                }
              }
         });
         calendar.render();
         });
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

   
   
</script>
</body>

</html>