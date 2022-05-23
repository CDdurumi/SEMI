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

		body::-webkit-scrollbar{
   			display: none; /* Chrome, Safari, Opera*/
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
         /* div {
             border: 1px solid black; 
        }  */

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
            border-radius: 20px;
        }

        #carouselExampleIndicators {
            width: 90%;
            margin: auto;
           
        }

        .card img {
            padding-top: 10px;
            height: 300px;
        }

        .card-body {
            height: 174px;
         
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
        }
        #board_menu{
            height: 50px;
        }
        #board_menu_text{
            font-size: 18px;
            font-weight:bold ;
             margin-bottom: 10px; 
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
           left: 9px;
           right: 9px;
       }
       .carousel-control-prev{
        padding-bottom: 150px;
    }
     .carousel-control-next{
        padding-bottom: 150px;
     }
     /*--top버튼----------------------------------------------------------------*/

#myBtn {
  display: none; /* Hidden by default */
  position: fixed; /* Fixed/sticky position */
  bottom: 12px;
  width: 45px;
  height: 45px;
  right: 10px; /* Place the button 30px from the right */
  z-index: 99; /* Make sure it does not overlap */
  border: none; /* Remove borders */
  outline: none; /* Remove outline */
  background-color:  #0080ff;
  color: white; /* Text color */
  cursor: pointer; /* Add a mouse pointer on hover */
  padding: 3px; /* Some padding */
  border-radius: 50%; /* Rounded corners */
  font-size: 32px; /* Increase font size */
  font-weight: bold;
  padding-bottom:40px;
  padding-top: 0px;
}

#myBtn:hover {
  background-color: #555; 
}

.comuview{
       	color:rgb(0, 0, 0);
       }
.comuview:hover{
       color:#0080ff;
       }
    </style>
</head>

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
         <div><a href="/board/communityMain.jsp" class="comuview"> 여행 커뮤니티</a></div>
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
    <ul class="nav nav2">
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/boardMain.jsp">자유게시판</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/gallery.jsp">여행후기</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/board/jobMain.jsp">구인구직</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2"  href="/board/foodMain.jsp">맛집</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" id="page" href="/board/houseMain.jsp">숙소리뷰</a>
        </li>
    </ul>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="/index.jsp" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav_list">
                    <a href="#" class="nav_link"> <i class='CurrIcon'></i> <span class="nav_name"><span class="weather">
                    <span class="CurrTemp"></span>
                    <span class="City"></span>
                    </span></span> </a>
                    <a href="/board/communityMain.jsp" class="nav_link"> <i class='bx bx-message nav_icon'></i> <span
                            class="nav_name">커뮤니티</span> </a>
                    <a href="/board/editorReMain.jsp" class="nav_link"> <i class='bx bx-bus nav_icon'></i> <span class="nav_name">에디터추천</span>
                    </a>
                    <a href="/myPage.jsp" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span
                            class="nav_name">마이페이지</span> </a>
                    <a href="#" class="nav_link"> <i class='bx bx-calendar nav_icon'></i> <span
                            class="nav_name">일정관리</span> </a>
                    <a href="/board/stayreview.jsp" class="nav_link active"> <i class='bx bx-home nav_icon'></i> <span class="nav_name">숙소정보</span>
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
        <button type="button" class="btn btn-primary" id="modal_loginBtn">로그인</button>
        <button type="button" class="btn btn-outline-primary">회원가입</button>
      </div>
    </div>
  </div>
</div>
    <!--Container Main start-->
    <div class="height-100 ">
        <div class="row " id="freemain">
            <div class="col-12 col-md-6 bottom_board">
                <div class="row border border-2 rounded">
                    <div class="col-12 border-bottom hotboard_bottom text-center">BEST</div>
                    <div id="carouselExampleIndicators1" class="carousel slide" data-bs-ride="carousel">
                    
                        <div class="carousel-inner text-center">
                            <div class="carousel-item active">
                                <div class="card w-100 border-0" style="width: 18rem;">
                                    <img src="숙소3.jpeg" class="card-img-top " alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-black">
                                            가격대비 정말 좋아요!
                                            숙소도 사진에 비해서 더 깔끔하고 넓어요
                                            근처에 24시간 마트가 있어서 이용하기 편리하고
                                            호스트의 세심함이 보였던 숙소였습니다
                                            이 가격에 이런 인테리어 청결을 갖춘 숙소는 없습니다.
                                          </p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="card w-100 border-0" style="width: 18rem;">
                                    <img src="t.jpg" class="card-img-top w-100" alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-black">
                                            진짜 너무너무 좋아요 !!! 예약 비어있음 무조건 예약 하세요 ㅠㅠ 가는순간 다시 일상생활로 가기 싫어 질껍니다.... 
                                            강아지도 사람도 너무 행복하게 해주는 숙소 였어요 감사합니다 ㅠㅠ
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="card w-100 border-0" style="width: 18rem;">
                                    <img src="img/다운로드.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-black">
                                            휴식이 필요할 때 집보다 더 잘 쉴수 있는 공간입니다. 
                                            숙소에는 항상 따스한 분위기가 깃들어 있고, 
                                            너무 좋으신 사장님과 게스트 분들 덕에 한달을 알차게 보내다가 왔어요.
                                            혼자 여행하신다면 더더욱 추천드립니다

                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators1"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators1"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>              
            </div>

                <div class="col-12 col-md-6 bottom_board">
                    <div class="row border border-2 rounded">
                        <div class="col-12 border-bottom hotboard_bottom text-center">BEST</div>
                        <div id="carouselExampleIndicators2" class="carousel slide" data-bs-ride="carousel"> 
                            <div class="carousel-inner text-center">
                                <div class="carousel-item active ">
                                    <div class="card w-100 border-0" style="width: 18rem;">
                                        <img src="img/다운로드 (1).jpg" class="card-img-top " alt="...">
                                        <div class="card-body">
                                            <p class="card-text text-black">
                                                위치가 너무 좋아서 일출,한라산, 바다가 보이고 공항과 관광지로 움직이기도 좋았어요
                                                호스트님께 여쭤봐서 갔던 맛집들도 대박이구 친절하시고 재밌으셔서 너무 편안하게 머물렀습니다!
                                                덕분에 즐겁게 제주생활하고갑니다!
                                              </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="card w-100 border-0" style="width: 18rem;">
                                        <img src="img/다운로드 (2).jpg" class="card-img-top w-100" alt="...">
                                        <div class="card-body">
                                            <p class="card-text text-black">
                                                장기로 묵었는데 더할 나위 없엇습니다! 일을 해야 하는 때가 많았는데 호스트님께서
                                                 필요한 물건 항상 구비해주시고 공간도 항상 깨끗하게 만들어주셨어요. 
                                                 제주 다시 가게 된다면 꼭 다시 여기서 머무르고 싶습니다 :)
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="card w-100 border-0" style="width: 18rem;">
                                        <img src="img/다운로드.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <p class="card-text text-black">
                                                위치는 제주시에 위치하여 어디든 근접성이 좋았고
                                                숙소도 청결하고 주방이 따로 분리가되어서 좋았습니다
                                                오래 여행하시는분들은 세탁기도 있어서 유용하게 사용할 것 같아요. 추천합니다^^
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators2"
                                data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators2"
                                data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button> 
                        </div>
                    </div>              
                </div>

        <div class="row m-0" id="board_menu" ></div>
        <div class="row m-0 ">
            <div class="col-12 ">
                <div class="row " id="board_menu_text">
                    <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                    <div class="col-9 col-md-8 m-0 title">글제목</div>
                    <div class="col-2 col-md-2 p-0 text-center">글쓴이</div>
                    <div class="col-1 col-md-1 d-none d-md-block p-0">조회</div>
                </div>
             
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row ">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-8 m-0 title ellipsis"><span>글제목글제목제목글제목제목글제목</span></div>
                <!-- forEach반복이라 여기에만 ellipsis 넣습니다 -->
                <div class="col-2 col-md-2 p-0 ellipsis text-center"><span>글쓴이</span></div>           
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
               
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-8 m-0 title">글제목</div>
                <div class="col-2 col-md-2 p-0 ellipsis text-center"><span>글쓴이</span></div>           
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
               
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-8 m-0 title">글제목</div>
                <div class="col-2 col-md-2 p-0 ellipsis text-center"><span>글쓴이</span></div>           
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
              
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-8 m-0 title">글제목</div>
                <div class="col-2 col-md-2 p-0 ellipsis text-center"><span>글쓴이</span></div>           
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-8 m-0 title">글제목</div>
                <div class="col-2 col-md-2 p-0 ellipsis text-center"><span>글쓴이</span></div>           
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
               
            </div>
        </div>
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row">
                <div class="col-1 col-md-1 d-none d-md-block p-0">번호</div>
                <div class="col-9 col-md-8 m-0 title">글제목</div>
                <div class="col-2 col-md-2 p-0 ellipsis text-center"><span>글쓴이</span></div>           
                <div class="col-md-1 d-none d-md-block p-0">조회</div>
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
        </header>

        <footer class="mt-auto text-black-50"></footer>
    </div>

    <!--Container Main end-->
 <!--top 버튼-->
 <button onclick="topFunction()" id="myBtn" title="Go to top">↑</button>



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