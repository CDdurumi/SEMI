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

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
		body::-webkit-scrollbar{
		    display: none; /* Chrome, Safari, Opera*/
		  }
        :root {
            --header-height: 3rem;
            --nav-width: 68px;
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

        .login, .join{
		color:black;
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
            width: var(--nav-width);
            height: 100vh;
            background-color: var(--first-color);
            padding: .5rem 1rem 0 0;
            transition: .5s;
            z-index: var(--z-fixed)
        }

        .nav {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            overflow: hidden
        }

        .nav2 {
            flex-direction: row;
            justify-content: center;
        }

        .nav_logo,
        .nav_link {
            display: grid;
            grid-template-columns: max-content max-content;
            align-items: center;
            column-gap: 1rem;
            padding: .5rem 0 .5rem 1.5rem
        }

        .nav_logo {
            margin-bottom: 2rem
        }

        .nav_logo-icon {
            font-size: 1.25rem;
            color: var(--white-color)
        }

        .nav_logo-name {
            color: var(--white-color);
            font-weight: 700
        }

        .nav_link {
            position: relative;
            color: var(--first-color-light);
            margin-bottom: 1.5rem;
            transition: .3s
        }

        .nav-link2 {
            color: black;
        }

        .nav_link:hover {
            color: var(--white-color)
        }

        .nav_icon {
            font-size: 1.25rem
        }

        .show1 {
            left: 0
        }

        .body-pd {
            padding-left: calc(var(--nav-width) + 1rem)
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

        .height-100 {
            height: 100vh
        }

        @media screen and (min-width: 768px) {
            body {
                margin: calc(var(--header-height) + 1rem) 0 0 0;
                padding-left: calc(var(--nav-width) + 2rem)
            }

            .header {
                height: calc(var(--header-height) + 1rem);
                padding: 0 2rem 0 calc(var(--nav-width) + 2rem)
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
                width: calc(var(--nav-width) + 156px)
            }

            .body-pd {
                padding-left: calc(var(--nav-width) + 188px)
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

        /* 메인내용 */
        div {
            /* border: 1px solid black; */
        }

        .freeboard_bottom {
            margin: 10px;
        }

        .freeboard_bottom div {
            margin-top: 6px;
            margin-bottom: 7px;
        }

        .free_title {
            text-align: left;
            line-height: 45px;
        }

        #text_left {
            text-align: left;

        }

        .hotboard {
            padding-bottom: 10px;
            margin-top: 20px;
        }

        .hotboard_bottom {
            margin-top: 20px;
            padding-bottom: 10px;
        }

        #freemain {
            padding-top: 60px;
            max-width: 1400px;
            margin: auto;
        }

        #carouselExampleIndicators {
            width: 90%;
            margin: auto;
        }

        .card img {
            height: 300px;
        }

        .card-body {
            height: 133px;
        }

        .bottom_board {
            padding-right: 30px;
            padding-bottom: 30px;
        }
        .board{
            /* text-align: center; */
            height: 50px;
            margin-bottom: 3px;
        }
        .board_row{
            padding-top: 10px;
           height: 100%;
            text-align: center;
        }
        #board_menu{
            height: 50px;
        }
        #board_menu_text{
         text-align: center;
            font-size: 18px;
            font-weight:bold ;
            margin-bottom: 20px;
        }
        .title{
            font-weight: bold;
        }
        #page{
            color: #0080ff;
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
           width:100%;
           height:100%;
       }
    </style>
</head>

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div>여행 커뮤니티</div>
        <div>
            <a href="#" class="login"  data-bs-toggle="modal" data-bs-target="#exampleModal">login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	<a href="#" class="join">join</a>
        </div>
    </header>
    <ul class="nav nav2">
       <li class="nav-item">
            <a class="nav-link nav-link2 "  href="/board/boardMain.jsp" id="page">자유게시판</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/gallery.jsp">여행후기</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/jobMain.jsp">구인구직</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/foodMain.jsp">맛집</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/stayreview.jsp">숙소리뷰</a>
        </li>
    </ul>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="/index.jsp" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav_list">
                    <a href="#" class="nav_link active"> <i class='bx bx-wind nav_icon'></i> <span
                            class="nav_name">날씨</span> </a>
                    <a href="/board/communityMain.jsp" class="nav_link"> <i class='bx bx-message nav_icon'></i> <span
                            class="nav_name">커뮤니티</span> </a>
                    <a href="#" class="nav_link"> <i class='bx bx-bus nav_icon'></i> <span class="nav_name">여행정보</span>
                    </a>
                    <a href="#" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span
                            class="nav_name">마이페이지</span> </a>
                    <a href="#" class="nav_link"> <i class='bx bx-calendar nav_icon'></i> <span
                            class="nav_name">일정관리</span> </a>
                    <a href="/board/stayreview.jsp" class="nav_link"> <i class='bx bx-home nav_icon'></i> <span class="nav_name">숙소정보</span>
                    </a>
                    <a href="#" class="nav_link"> <i class='bx bx-message-alt-detail nav_icon'></i> <span
                            class="nav_name">쪽지</span> </a>
                </div>
            </div>
            <a href="#" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">로그아웃</span> </a>
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
        <button type="button" class="btn btn-primary">회원가입</button>
      </div>
    </div>
  </div>
</div>
    <!--Container Main start-->
    <div class="height-100 ">


        <div class="row " id="freemain">
            <div class="col-12 col-md-6 bottom_board">
                <div class="row border border-2 rounded">
                    <div class="col-12 border-bottom hotboard_bottom text-center">자유게시판 화제</div>
                    <div class="row  freeboard_bottom">
                        <div class="col-12 ">
                            <div class="row freeboard_bottom ">
                                <div class="col-12 border border-2 rounded">
                                    <div class="row m-0">
                                        <div class="col-9 col-md-9 m-0 free_title ellipsis"><span>글 제목</span></div>
                                        <!-- ellipsis 밑에 forEach로 하니까 한줄만 추가했습니다.  -->
                                        <div class="col-3 col-md-3 m-0 p-0">
                                            <div class="row m-0 p-0">
                                                <div class="col-12 m-0 p-0 text-center">추천 20</div>
                                                <div class="col-12 m-0 p-0 text-center">댓글 5</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 border border-2 rounded">
                                    <div class="row m-0">
                                        <div class="col-9 col-md-9 m-0 free_title">글 제목</div>
                                        <div class="col-3 col-md-3 m-0 p-0">
                                            <div class="row m-0 p-0">
                                                <div class="col-12 m-0 p-0 text-center">추천 20</div>
                                                <div class="col-12 m-0 p-0 text-center">댓글 5</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 border border-2 rounded">
                                    <div class="row m-0">
                                        <div class="col-9 col-md-9 m-0 free_title">글 제목</div>
                                        <div class="col-3 col-md-3 m-0 p-0">
                                            <div class="row m-0 p-0">
                                                <div class="col-12 m-0 p-0 text-center">추천 20</div>
                                                <div class="col-12 m-0 p-0 text-center">댓글 5</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 border border-2 rounded">
                                    <div class="row m-0">
                                        <div class="col-9 col-md-9 m-0 free_title">글 제목</div>
                                        <div class="col-3 col-md-3 m-0 p-0">
                                            <div class="row m-0 p-0">
                                                <div class="col-12 m-0 p-0 text-center">추천 20</div>
                                                <div class="col-12 m-0 p-0 text-center">댓글 5</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 border border-2 rounded">
                                    <div class="row m-0">
                                        <div class="col-9 col-md-9 m-0 free_title">글 제목</div>
                                        <div class="col-3 col-md-3 m-0 p-0">
                                            <div class="row m-0 p-0">
                                                <div class="col-12 m-0 p-0 text-center">추천 20</div>
                                                <div class="col-12 m-0 p-0 text-center">댓글 5</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 border border-2 rounded">
                                    <div class="row m-0">
                                        <div class="col-9 col-md-9 m-0 free_title">글 제목</div>
                                        <div class="col-3 col-md-3 m-0 p-0">
                                            <div class="row m-0 p-0">
                                                <div class="col-12 m-0 p-0 text-center">추천 20</div>
                                                <div class="col-12 m-0 p-0 text-center">댓글 5</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="col-12 col-md-6 bottom_board">
                <div class="row border border-2 rounded">
                    <div class="col-12 border-bottom hotboard_bottom text-center">에디터 추천</div>
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner text-center">
                            <div class="carousel-item active ">
                                <div class="card w-100 border-0" style="width: 18rem;">
                                    <img src="img/다운로드 (1).jpg" class="card-img-top " alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-black">Some quick example text to build on the card
                                            title
                                            and make up
                                            the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="card w-100 border-0" style="width: 18rem;">
                                    <img src="img/다운로드 (2).jpg" class="card-img-top w-100" alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-black">Some quick example text to build on the card
                                            title
                                            and make up
                                            the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="card w-100 border-0" style="width: 18rem;">
                                    <img src="img/다운로드.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-black">웁스덜아널다ㅓㄴㅇㄹ</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>

            </div>
        </div>

        <div class="row m-0" id="board_menu" ></div>

        <div class="row m-0 ">
             <div class="col-12  ">
                <div class="row " id="board_menu_text">
                    <div class="col-md-1 d-none d-md-block p-0">번호</div>
                    <div class="col-7 col-md-6 ">제목</div>
                    <div class="col-3 col-md-2 p-0 text-center">글쓴이</div>
                    <div class="col-md-1 d-none d-md-block p-0">날짜</div>
                    <div class="col-md-1 d-none d-md-block p-0">조회</div>
                    <div class="col-2 col-md-1 p-0">추천</div>
                </div>
             
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row ">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
               <div class="col-7 col-md-6 m-0 title ellipsis"><span>글 제목글 제목</span></div>
                <!-- ellipsis"><span>글 제목</span></div> 밑에 forEach 작업이라 한줄만 추가했습니다. -->
                <div class="col-3 col-md-2 p-0 ellipsis text-center"><span>글쓴이글쓴이글쓴이</span></div>
                <!-- 글제목 글쓴이 col 밑에랑 달라요 반복이라 한줄만 추가합니다 -->
                <div class="col-md-1 d-none d-md-block p-0 ">날짜</div>
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
                <div class="col-2 col-md-1 p-0">추천</div>
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-6 m-0 title">글 제목</div>
                <div class="col-2 col-md-2 text-center p-0">글쓴이</div>
                <div class="col-md-1 d-none d-md-block p-0 ">날짜</div>
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
                <div class="col-1 col-md-1 p-0">추천</div>
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-7 m-0 title">글 제목</div>
                <div class="col-2 col-md-1 p-0">글쓴이</div>
                <div class="col-md-1 d-none d-md-block p-0 ">날짜</div>
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
                <div class="col-1 col-md-1 p-0">추천</div>
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-7 m-0 title">글 제목</div>
                <div class="col-2 col-md-1 p-0">글쓴이</div>
                <div class="col-md-1 d-none d-md-block p-0 ">날짜</div>
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
                <div class="col-1 col-md-1 p-0">추천</div>
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-7 m-0 title">글 제목</div>
                <div class="col-2 col-md-1 p-0">글쓴이</div>
                <div class="col-md-1 d-none d-md-block p-0 ">날짜</div>
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
                <div class="col-1 col-md-1 p-0">추천</div>
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-7 m-0 title">글 제목</div>
                <div class="col-2 col-md-1 p-0">글쓴이</div>
                <div class="col-md-1 d-none d-md-block p-0 ">날짜</div>
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
                <div class="col-1 col-md-1 p-0">추천</div>
            </div>
        </div>
        <div calss="row">
            <div class="col-12 text-center">
                < 1 2 3 4 5 6 7 8 9 >
            </div>
        </div>
        </header>

        <footer class="mt-auto text-black-50"></footer>
    </div>

    <!--Container Main end-->




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

            show1Navbar('header-toggle', 'nav-bar', 'body-pd', 'header')

            /*===== LINK ACTIVE =====*/
            const linkColor = document.querySelectorAll('.nav_link')

            function colorLink() {
                if (linkColor) {
                    linkColor.forEach(l => l.classList.remove('active'))
                    this.classList.add('active')
                }
            }
            linkColor.forEach(l => l.addEventListener('click', colorLink))

            // Your code to run since DOM is loaded and ready
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
</body>

</html>