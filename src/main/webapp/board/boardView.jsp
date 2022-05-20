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

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
    <script src="https://kit.fontawesome.com/247b201f79.js" crossorigin="anonymous"></script>

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

        div {
            /* border:1px solid black; */
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

        .login {
            color: black;
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

        .show {
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

            .show {
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

        /* 메인내용 */
        div {
            /* border: 1px solid black; */
        }

        #page {
            color: #0080ff;
        }

        #menu {
            font-size: 18px;
            margin: auto;
            padding: 0px;
            width: 90%;
            height: 7%;
            padding-bottom: 7px;
        }

        #menu div {
            padding: 0px;
            padding-top: 15px;
        }

        .dummy {
            height: 50px;
        }

        #contents {
            padding: 0px;
            padding-top: 5px;
            margin: auto;
            width: 90%;
            min-height: 600px;
            
        }

        #contentsRow {
            margin: auto;
            width: 100%;
            /* border: 1px solid black; */
        }

        #conMenu {
            height: 50px;
           
        }

        #contents div {
            padding: 0px;
            margin: 0px;
            padding-top: 6px;
        }
       #heart{
           width: 82%;
           text-align: right;
           padding-top: 30px;
       }
       #count{
           padding-top: 5px;
        width: 82%;
           text-align: center;
           padding-right: 5px;
       }
       #heartcol{
           font-size: 30px;
           color: #b1b1b1;
           text-align: center;
           padding: 0px;
           border-radius: 100px;
           border: 1px solid rgb(177, 177, 177);
           max-width: 47px;
           min-width: 47px;
       }
       #jjimcol{
        font-size: 30px;
           color: #b1b1b1;
           text-align: center;
           padding: 0px;
           border-radius: 100px;
           border: 1px solid rgb(177, 177, 177);
           max-width: 47px;
           min-width: 47px;
       }
       #jjimcnt{
           padding: 0px;
           max-width: 47px;
           min-width: 47px;
       }
       #heartcnt{
           padding: 0px;
           max-width: 47px;
           min-width: 47px;
       }
       .msg{
           width: 90%;
           margin: auto;
           height: 65px;
       }
       .message{
           min-height: 80px;
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
       /* */
       .wrap{
           padding: 0px;
           margin: auto;
           width: 90%;
       }
       .wrap div{
           width: 100%;
       }
       #btn{
          width: 100%;
       }
       .jjimdummy{
           min-width: 5px;
           max-width: 5px;
       }
       
     	img{
			max-width:100% !important;
			height: auto !important;
		} 
        .filebox{
            position: relative;
        }
        .filelist{
            position: absolute ;
            background-color: #ffffff;
            width: 200px;
            right: -51px;
            border: 1px solid #0080ff;
            border-radius: 10px;
        }
    </style>
</head>

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div>여행 커뮤니티</div>
        <div><a href="#" class="login">login</a></div>
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
                    <a href="#" class="nav_link"> <i class='bx bx-wind nav_icon'></i> <span
                            class="nav_name">날씨</span> </a>
                    <a href="/board/cummityMain.jsp" class="nav_link active"> <i class='bx bx-message nav_icon'></i> <span
                            class="nav_name">커뮤니티</span> </a>
                    <a href="/board/editorReMain.jsp" class="nav_link"> <i class='bx bx-bus nav_icon'></i> <span class="nav_name">여행정보</span>
                    </a>
                    <a href="/myPage.jsp" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span
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
    <!--Container Main start-->
    <div class="height-100 ">
        <div class="row width-100 dummy" ></div>
        <div class="row text-center" id="menu">
            <div class="col-md-1 d-none d-md-block">번호</div>
            <div class="col-5 col-md-5">제목</div>
            <div class="col-3 col-md-2">글쓴이</div>
            <div class="col-md-1 d-none d-md-block">등록</div>
            <div class="col-md-1 d-none d-md-block">조회</div>
            <div class="col-2 col-md-1 ">추천</div>
            <div class="col-2 col-md-1 ">파일</div>
        </div>
        <div class="row " id="contentsRow">
           
            <div class="col-12 p-0 border border-2 rounded" id="contents">
                <div class="row text-center border-bottom border-2 rounded" id="conMenu">
                    <div class="col-md-1 d-none d-md-block">${dto.all_board_seq}</div>
                    <div class="col-5 col-md-5 ellipsis "><span>${dto.title}</span></div>
                    <div class="col-3 col-md-2 ellipsis"><span>${dto.id}</span></div>
                    <div class="col-md-1 d-none d-md-block">${dto.formdDate}</div>
                    <div class="col-md-1 d-none d-md-block">${dto.view_count}</div>
                    <div class="col-2 col-md-1 ">${dto.like_count}</div>
                    <div class="col-2 col-md-1 p-0 filebox">
                    <button type="button" class="btn btn-primary filebtn">보기</button>
                    <div class="filelist" style="display:none; padding-top:10px; padding-bottom: 10px; ">파일명<br>파일명<br>파일명</div>
                    </div>
                </div>
                <div class="col-12 text-center" id="cont" style="padding:0px;">
                    <div class="row " id="contentsdummy" style="padding:0px;" >
                        <div class="col-12" id="contentsdummy2" style="padding-top: 40px;padding-bottom: 40px;padding-left: 0px;padding-right: 0px;">
                            <a href="/detailView.board">테스트하려면 여기 클릭. 나중에 지워주세요.</a>
                            ${dto.contents}
                        </div>
                    </div>
                    

                </div>
                
            </div>
            <div class="row " id="heart" style="margin: auto;">
                
                <div class="col-1" id="jjimcol">
                    <i class="fa-solid fa-thumbs-up"></i>
                </div>
                <div class="col-1 jjimdummy " ></div>
                <div class="col-1 text-center" id="heartcol">
                    <i class="fa-solid fa-heart"></i>
                </div>
                <div class="col-9"></div>
            </div>

            <div class="row " id="count" style="margin: auto;">
                
                <div class="col-1" id="jjimcnt">
                    32
                </div>
                <div class="col-1 jjimdummy" ></div>
                <div class="col-1 text-center" id="heartcnt">
                   24
                </div>
                <div class="col-9"></div>
            </div>
            
        </div>
        <br>
        <div class="row msg " >
            <div class="col-10 border-bottom border-2 rounded">댓글</div>
            <div class="col-2  " style="text-align: center;">
                <button class="btn btn-primary h-100 " id="btn" type="submit">등록</button>
            </div>
        </div>
        <div class="row dummy"></div>
        <!--         달린 댓글 반복문  -->
        <div class="row wrap">
        <div class="col-12 wrap">
            <div class="row border-top border-1 pt-4 m-0" >
            <div class="col-3 ">유자빵</div>
            <div class="col-3 ">2022/05/13</div>
            <div class="col-6 " style="text-align: right;">
                <button class="btn btn-primary " type="submit">수정</button>
                <button class="btn btn-primary " type="submit">삭제</button>
            </div>
           
        </div>
        <div class="row message border-bottom border-2 m-0">
            <div class="col-12 ">버튼 그냥 기본으로 넣어봤습니다아아ㅏ </div>
        </div>
    </div>
    </div>
    
<!--     밑에서부터 지우면 됩니다 -->
    
    <div class="row wrap">
        <div class="col-12 wrap">
        <div class="row border-top border-1 pt-4 m-0" >
            <div class="col-3 ">유자빵</div>
            <div class="col-3 ">2022/05/13</div>
            <div class="col-6 " style="text-align: right;">
                <button class="btn btn-primary " type="submit">수정</button>
                <button class="btn btn-primary " type="submit">삭제</button>
            </div>
           
        </div>
        <div class="row message border-bottom border-2 m-0">
            <div class="col-12 ">버튼 그냥 기본으로 넣어봤습니다아아ㅏ </div>
        </div>
    </div>
</div>
        <div class="row dummy"></div>
    </div>
    <!--Container Main end-->




    <script>
//누르면 파일 펼치기
let listExist = false;

$(".filebtn").on("click",function(){
    let filelist = $(this).siblings();
    if(listExist==false){
        filelist.css("display","block");
        listExist = true;
    } else{
        filelist.css("display","none");
        listExist = false;
    }
   
})

    //heart-> 찜
    let heart = true;
	let hUpDown = 0;
    $("#heartcol").on("click", function () {
        
        if (heart) {
            $("#heartcol").css("color", "red" );
            $("#heartcol").css("border","1px solid red" );
            heart=false;
        } else {
            $("#heartcol").css("color", "#b1b1b1");
            $("#heartcol").css("border","1px solid #b1b1b1" );
            heart=true;
        }
        
        if(heart == false){
        	hUpDown = 1;
        }else{
        	hUpDown = 0;
        }
        
		$.ajax({
			url:"/jjimClick.board",
			data:{
				seq:"${dto.all_board_seq}",
				upDown:hUpDown
			},
			dataType:"json"
		}).done(function(resp){
				console.log(resp.jjimCount)//좋아요 갯수
			})
        
    })
    
    
    //jjim->좋아요
    let jjim = true;
    let jUpDown = 0;
    $("#jjimcol").on("click", function () {
        
        if (jjim) {
            $("#jjimcol").css("color", "#ffd000" );
            $("#jjimcol").css("border","1px solid #ffd000" );
            jjim=false;
        } else {
            $("#jjimcol").css("color", "#b1b1b1");
            $("#jjimcol").css("border","1px solid #b1b1b1" );
            jjim=true;
        }

        if(jjim == false){
        	jUpDown = 1;
        }else{
        	jUpDown = 0;
        }
        
		$.ajax({
			url:"/goodClick.board",
			data:{
				seq:"${dto.all_board_seq}",
				upDown:jUpDown
			},
			dataType:"json"
		}).done(function(resp){
				console.log(resp.likeCount)//좋아요 갯수
			})
			
			
			
    })

    
    
    
        document.addEventListener("DOMContentLoaded", function (event) {

            const showNavbar = (toggleId, navId, bodyId, headerId) => {
                const toggle = document.getElementById(toggleId),
                    nav = document.getElementById(navId),
                    bodypd = document.getElementById(bodyId),
                    headerpd = document.getElementById(headerId)

                // Validate that all variables exist
                if (toggle && nav && bodypd && headerpd) {
                    toggle.addEventListener('click', () => {
                        // show navbar
                        nav.classList.toggle('show')
                        // change icon
                        toggle.classList.toggle('bx-x')
                        // add padding to body
                        bodypd.classList.toggle('body-pd')
                        // add padding to header
                        headerpd.classList.toggle('body-pd')
                    })
                }
            }

            showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

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
    </script>
</body>

</html>