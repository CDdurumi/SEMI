<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    
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
        	height:50px;
            margin-top: 15px;
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
            height: 100px;
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
            height: 30px;
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
        	font-weight:bold;
            color: #0080ff;
            text-decoration: underline;
            text-underline-position : under;
            font-size:17px;
        }
         /* 제목이 길어서 잘렸을 경우 밑의 두개 처리해준다 */
/*        .ellipsis{ */
/*            position: relative; */
/*            min-width: 50px; */
           
/*        } */
/*        .ellipsis>span{ */
/*         overflow: hidden; */
/*            white-space: nowrap; */
/*            text-overflow: ellipsis; */
/*            position:absolute; */
/*            left: 0px; */
/*            right: 0px; */
/*            width:100%; */
/*            height:100%; */
/*        } */
 	 .ididid{
       overflow:hidden;
       text-overflow:ellipsis;
       white-space:nowrap;
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
       	width: 300px;
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
.fa-thumbs-up{
	color:rgb(255,208,0);
}
.wrap12{
 
height:500px;
}

select{
    border-radius: 5px;
    margin-right: 8px;
    font-size: 18px;
    font-weight: bold;
}
#notice{
color:red;
font-weight:bold;
}


@media (min-width: 576px) {
  .footer1 {
    text-align:right;
  }
}
@media (max-width: 960px) {
  .footer2 {
    text-align:center;
  }
}
@media (min-width: 960px) {
  .footer2 {
    text-align:left;
  }
}
    </style>
</head>

<body id="body-pd">
    <header class="header" id="header" style="background-color:#f5f5f7">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div><a href="/board/communityMain.jsp" class="comuview"> 자유게시판</a></div>
        <div>
			<c:choose>
				<c:when test="${loginID !=null}">
						<div class="d-md-inline d-none">${loginID }님 안녕하세요 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<a href="/logout.member" class="d-md-inline d-none">logout</a>					
				</c:when>
		
				<c:otherwise>
					<a href="#" class="login" id="login"  data-bs-toggle="modal" data-bs-target="#exampleModal">login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          			 <a href="/goJoinPage.member" class="join">join</a>
				</c:otherwise>
			</c:choose>
	 
        </div>
       
    </header>
   <div class="row">
    <div class="col-12" id="dummy3" style="height: 10px;"></div>
   </div>
   
    <ul class="nav nav2">
       <li class="nav-item">
            <a class="nav-link nav-link2" href="/boardMainView.board?cpage=1" id="page">자유게시판</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/galleryMain.board?cpage=1">여행후기</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/jobMain.board?cpage=1">구인구직</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/foodMain.board?cpage=1">맛집</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/houseMain.board?cpage=1">숙소리뷰</a>
        </li>
    </ul>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="/goIndex.board" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav_list">
                    <a class="nav_link" style="color:white;"> <i class='CurrIcon'></i> <span class="nav_name"><span class="weather">
                    <span class="CurrTemp"></span>
                    <span class="City"></span>
                    </span></span> </a>
                    <a href="/communityMain.board" class="nav_link active"> <i class='bx bx-message nav_icon'></i> <span class="nav_name">커뮤니티</span> </a> 
                   <a href="/editorReMain.board?" class="nav_link"> <i class='bx bx-book-bookmark nav_icon'></i> <span class="nav_name">에디터추천</span> </a> 
                   <a href="/houseMain.board?cpage=1" class="nav_link"> <i class='bx bx-home nav_icon'></i> <span class="nav_name">숙소리뷰</span> </a>
               		<c:choose>
						<c:when test="${loginID !=null}">
							<a href="/goMyPage.mpg" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">마이페이지</span> </a>
						</c:when>
		
						<c:otherwise>
							<a href="/goMyPage.mpg" class="nav_link" data-bs-toggle="modal" data-bs-target="#exampleModal"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">마이페이지</span> </a>
						</c:otherwise>
					</c:choose> 
                 </div>
            </div>
            <c:choose>
				<c:when test="${loginID !=null}">
					<a href="/logout.member" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">로그아웃</span> </a>	
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
    <!--Container Main start-->
    <div class="height-100 ">


        <div class="row " id="freemain">
            <div class="col-12 col-md-6 bottom_board">
                <div class="row border border-2 rounded wrap12 d-flex flex-wrap align-content-start">
                    <div class="col-12 border-bottom hotboard_bottom text-center" style="font-weight:bold; font-size:18px;">자유게시판 화제</div>
                        <div class="col-12 ">
                            <div class="row freeboard_bottom ">
                            
                            	<div class="col-12  m-0 p-0" style="height: 40px">
									<div class="row m-0" id="board_menu_text">
										<div class="col-8 " style="text-align:left; padding-left:25px">제목</div>
										<div class="col-4 " style="text-align:right; padding-right:25px">추천</div>
										
									</div>

								</div>
                            
                            <c:forEach var="i" items="${hotlist }">
                                <div class="col-12 border border-2 rounded ">
                                    <div class="row m-0">
                                        <div class="col-9 col-md-9 m-0 free_title ididid"><a href="/detailView.board?cpage=${cpage}&seq=${i.all_board_seq}&click=ok" style="color:black; font-weight:bold;">${i.title }</a></div>
                                        <!-- ellipsis 밑에 forEach로 하니까 한줄만 추가했습니다.  -->
                                        <div class="col-3 col-md-3">
                                            <div class="row ">
                                                <div class="col-12 m-0" style="text-align:right"> <i class="fa-solid fa-thumbs-up"></i>&nbsp;${i.like_count }</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>

                    </div>

            </div>
            <div class="col-12 col-md-6 bottom_board">
                <div class="row border border-2 rounded wrap12">
                    <div class="col-12 border-bottom hotboard_bottom text-center" style="font-weight:bold; font-size:18px;">에디터 추천</div>
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">

                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" 
                            	aria-label="Slide 1"></button>
                            	
                            	
                            	
                            <c:forEach var="i" items="${editorList}" varStatus="status">   
                            	<c:if test="${status.index lt fn:length(editorList)-1}">
	                            	<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="${status.count}"
	                                aria-label="Slide ${status.count + 1}"></button>
                            	</c:if>
                            </c:forEach>	
                                
                        </div>
                        
                        
                        <div class="carousel-inner text-center">
                        
										<c:set var="count" value="0"/>
								        <c:forEach var="i" items="${editorList}">

								        	<c:forEach var="j" items="${porfileList}">
	
												<c:if test="${j.parent_seq eq i.all_board_seq}">
													<c:set var="count" value="${count+1}"/>
													<c:choose>
														<c:when test="${count eq 1}">
															<div class="carousel-item active ">
								                                <div class="card w-100 border-0" style="width: 18rem;">
								                                    <a href = "/detailView.board?cpage=1&seq=${i.all_board_seq}&click=ok"><img src="${profilePath}${j.sys_name}" class="card-img-top" alt="..."></a>
								                                    <div class="card-body">
								                                        <p class="card-text text-black">${i.title}</p>
								                                    </div>
								                                </div>
							                            	</div>
														</c:when>
														
														<c:otherwise>
															<div class="carousel-item ">
								                                <div class="card w-100 border-0" style="width: 18rem;">
								                                    <a href = "/detailView.board?cpage=1&seq=${i.all_board_seq}&click=ok"><img src="${profilePath}${j.sys_name}" class="card-img-top" alt="..."></a>
								                                    <div class="card-body">
								                                        <p class="card-text text-black">${i.title}</p>
								                                    </div>
								                                </div>
							                            	</div>
														</c:otherwise>
													</c:choose>
													
												</c:if>
												
								        	</c:forEach>
								        </c:forEach>
                            
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


<!---------------------검색창---------------->
<div class="col-12" id="searchbar" >
    <nav class="navbar bg">
        <div class="container-fluid">
          <a class="navbar-brand"> </a>
          <form action="/search.board" method="post" class="d-flex" role="search">
          		<input type="hidden" value="f" name="boardOption">
          		<input type="hidden" value="1" name="cpage">
				<select name="serchOption" id="select">
                        <option value="title">
                            제목
                        </option>
                        <option value="id">
                            작성자
                        </option>
                        <option value="contents">
                            내용
                        </option>
				</select>
          	
          	
            <input class="form-control me-2" type="search" placeholder="검색어를 입력해주세요." aria-label="Search" name="contents">
            <button class="btn btn-outline-secondary btn-sm" type="submit">Search</button>&nbsp;
            
            		<c:choose>
						<c:when test="${loginID !=null}">
							<button type="button" class="btn btn-primary btn-sm" id="writeBtn" style="white-space:nowrap;"><i class="fa-solid fa-pen-to-square"></i>글 작성하기</button>
						</c:when>
		
						<c:otherwise>
							<button type="button" class="btn btn-primary btn-sm" style="white-space:nowrap;" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-pen-to-square"></i>글 작성하기</button>
						</c:otherwise>
					</c:choose>
					
          </form>
          
        </div>
      </nav>
    </div>



        <div class="row m-0" id="board_menu" ></div>

        <div class="row m-0 ">
             <div class="col-12  ">
                <div class="row " id="board_menu_text">
                    <div class="col-md-1 d-none d-md-block p-0">번호</div>
                    <div class="col-7 col-md-5 " style="text-align:left">제목</div>
                    <div class="col-3 col-md-2 p-0 text-center">글쓴이</div>
                    <div class="col-md-2 d-none d-md-block p-0 text-center">날짜</div>
                    <div class="col-md-1 d-none d-md-block p-0">조회</div>
                    <div class="col-2 col-md-1 p-0">추천</div>
                </div>
             
            </div>
        </div>
        
<!--         여기는 공지글 -->
        <c:forEach var="i" items="${noticeList }">
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row ">
            	
                <div class="col-1 col-md-1 d-none d-md-block p-0">
                <p id="notice">공지</p>
                </div>
               	<div class="col-7 col-md-5 m-0 title ididid " style="text-align:left">
               		<a href="/detailView.board?cpage=${cpage}&seq=${i.all_board_seq}&click=ok" style="color:black">${i. title }</a>
               	</div>
                <div class="col-3 col-md-2 p-0 ellipsis text-center ididid">${i.id }</div>
                <div class="col-md-2 d-none d-md-block p-0 "><fmt:formatDate value="${i.write_date }" pattern="yy-MM-dd"/></div>
                <div class="col-md-1 d-none d-md-block p-0">${i.view_count}</div>
                <div class="col-2 col-md-1 p-0">${i.like_count}</div>
                
            </div>
        </div>
        </c:forEach>
        
        
<!--         여기는 목록 -->
        <c:forEach var="i" items="${list }">
        <div class="col-12  board">
            <div class="row m-0 border border-2 rounded board_row ">
            	
                <div class="col-1 col-md-1 d-none d-md-block p-0">${i.line}</div>
               	<div class="col-7 col-md-5 m-0 title ididid "style="text-align:left">
               		<a href="/detailView.board?cpage=${cpage}&seq=${i.all_board_seq}&click=ok" style="color:black">${i. title }</a>
               	</div>
                <div class="col-3 col-md-2 p-0 ididid text-center">${i.id }</div>
                <div class="col-md-2 d-none d-md-block p-0 "><fmt:formatDate value="${i.write_date }" pattern="yy-MM-dd"/></div>
                <div class="col-md-1 d-none d-md-block p-0">${i.view_count}</div>
                <div class="col-2 col-md-1 p-0">${i.like_count}</div>
                
            </div>
        </div>
        </c:forEach>
        
        <div class="row">
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

        <footer class="mt-auto text-black-50" style="background-color:#f5f5f7">
        	<hr>
        	<div class="row">
        		<div class="d-none d-lg-block col-5 footer1">
        			<img src="/imgsrc/footerlogo2.png">
        		</div>
        		<div class="col-12 col-lg-7 footer2">
        			<div class="col-12">
        				프로젝트 쉼표
        			</div>
        			<div class="col-12">
        				강석원 | 강정윤 | 박한길 | 어 현 | 임혜경 | 조양기
        			</div>
        			<div class="col-12">
        				Designed by Catch the Java
        			</div>
        		</div>
        	</div>
        	<hr>
        </footer>
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
        
        $("#writeBtn").on("click",function(){
        	location.href="/writeboard.board?boardOption=f";
        })
       
        $("#password-input").on("keyup",function(e){
        if(e.keyCode==13){
            $("#modal_loginBtn").click();
        }
    })
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
	
	
</script>
<script>
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