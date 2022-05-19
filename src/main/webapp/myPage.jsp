<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            color: var(--first-color);
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
/*             border: 1px solid red */
        }
        /*탭*/
        #myTabContent>div{
            color: black;
        }


        /*--일정 관리---------------------------------------------------------------------------------------*/



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
           height:100%;
       }
       /*받은 쪽지함, 보낸 쪽지함 버튼*/
       #v-pills-tab> button{
           width: 80px;
       }
/*         div{border: 1px solid blue;}  */
        /*--게시글-----------------------------------------------------------------------------------------*/



        /*--계정관리---------------------------------------------------------------------------------------*/


    </style>
</head>

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div class="login">login</div>
    </header>
    
    <div class="l-navbar" id="nav1-bar">
        <nav class="nav1">
            <div> <a href="#" class="nav1_logo"> <i class='bx bx-layer nav1_logo-icon'></i> <span class="nav1_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav1_list">
                    <a href="#" class="nav1_link active"> <i class='bx bx-wind nav1_icon'></i> <span
                            class="nav1_name">날씨</span> </a>
                    <a href="#" class="nav1_link"> <i class='bx bx-message nav1_icon'></i> <span
                            class="nav1_name">커뮤니티</span> </a>
                    <a href="#" class="nav1_link"> <i class='bx bx-bus nav1_icon'></i> <span class="nav1_name">여행정보</span>
                    </a>
                    <a href="#" class="nav1_link"> <i class='bx bx-user nav1_icon'></i> <span
                            class="nav1_name">마이페이지</span> </a>
                    <a href="#" class="nav1_link"> <i class='bx bx-calendar nav1_icon'></i> <span
                            class="nav1_name">일정관리</span> </a>
                    <a href="#" class="nav1_link"> <i class='bx bx-home nav1_icon'></i> <span class="nav1_name">숙소정보</span>
                    </a>
                    <a href="#" class="nav1_link"> <i class='bx bx-message-alt-detail nav1_icon'></i> <span
                            class="nav1_name">쪽지</span> </a>
                </div>
            </div>
            <a href="#" class="nav1_link"> <i class='bx bx-log-out nav1_icon'></i> <span class="nav1_name">로그아웃</span> </a>
        </nav>
    </div>


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

                일정관리

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
                                            <div class="col-md-2 col-lg-1 d-none d-md-block text-center">번호</div>
                                            <div class="col-8 col-md-6 col-lg-7">제목</div>
                                            <div class="col-4 col-md-2 col-lg-2 text-center">보낸이</div>
                                            <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                        </div>
                                    </div>

                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row ">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0 text-center">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글 제목</span></div>
                                           <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div calss="row">
                                       <div class="col-12 text-center">
                                           <br>
                                           &lt; 1 2 3 4 5 6 7 8 9 10>
                                       </div>
                                   </div>
                               </div>
                            </div>
                        </div>

                        <!--보낸 쪽지함-->
                        <div class="tab-pane fade" id="v-pills-send" role="tabpanel" aria-labelledby="v-pills-send-tab">

                            <div class="container2">
    
                                <div class="row m-0 ">
                                    <div class="col-12  ">
                                        <div class="row " id="board_menu_text">
                                            <div class="col-md-2 col-lg-1 d-none d-md-block text-center">번호</div>
                                            <div class="col-8 col-md-6 col-lg-7">제목</div>
                                            <div class="col-4 col-md-2 col-lg-2 text-center">받는이</div>
                                            <div class="col-md-2 col-lg-2 d-none  d-md-block text-center">날짜</div>
                                        </div>
                                    </div>

                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row ">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0 text-center">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0"><span>글 제목글제목제목제목 제목</span></div>
                                           <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0 ">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div class="col-12  board">
                                       <div class="row m-0 border border-2 rounded board_row">
                                           <div class="col-md-2 col-lg-1 d-none d-md-block p-0">번호</div>
                                           <div class="col-8 col-md-6 col-lg-7 m-0 title ellipsis p-0">글 제목</div>
                                           <div class="col-4 col-md-2 col-lg-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                                           <div class="col-md-2 col-lg-2 d-none d-md-block p-0 text-center">날짜</div>
                                       </div>
                                   </div>
                                   <div calss="row">
                                       <div class="col-12 text-center">
                                           <br>
                                           &lt; 1 2 3 4 5 6 7 8 9 10 >
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
                
                
                게시글
            
            
            
            </div>

            <!--계정관리 UI--------------------------------------------------------------------------------------->
            <div class="tab-pane fade" id="account" role="tabpanel" aria-labelledby="account-tab">
                
                
                
                계정관리
            
            
            
            </div>
          </div>

    </div>
    <!-------------------------------------------------------------------------------------------------------------------Container Main end-->




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
    </script>
</body>

</html>