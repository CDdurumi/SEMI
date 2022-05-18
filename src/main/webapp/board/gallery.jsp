
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
             /* div {
             border: 1px solid black; 
        }       */
        #cont{
            height: 100%;
        }
        #title{
    font-size: 50px;
    text-align: center;
    font-weight:bold ;
    height: 10%;
    padding-top: 10px;
    padding-bottom: 10px;
}
#searchbar{
 padding-top: 5px;
 padding-bottom: 5px;
}
#bar{
    height: 100px;
}
#mm{
    
    height: 90%;
    border: 2px solid #aaa9a9; 
    border-radius: 10px;
    padding-top: 20px;
}
#img{
     padding-left: 15px;
    padding-right: 15px;
    padding-top: 13px;
    padding-bottom: 20px; 
    float: left;
    height: 100%;
    text-align: center;
}
#imgmenu1{
    height: 350px;
}
#ptitle{
    padding-top: 2px;
}
#rev{
    color: #3b59dc;
}
  #img {position:relative;
}  

p1{color: #fff;
     line-height:350px;
    }
.mask{
    left: 0; top:0; 
    text-align: center;
        width: 99%; height: 97%;
       position: absolute;
         border-radius: 50%;
         background-color: rgba(32, 32, 32, 0.329); 
         display: none;
       
        }

 img:hover + .mask, .mask:hover {display: block;}

/* .imgs{
    width: 100%; height: 100%;
    
} */
 #imgs{
    width: 100%; height: 100%;
   
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
            <a class="nav-link nav-link2" href="#">자유게시판</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="#" id="rev">여행후기</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="#">구인구직</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="#">맛집</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="#">숙소리뷰</a>
        </li>
    </ul>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="#" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav_list">
                    <a href="#" class="nav_link active"> <i class='bx bx-wind nav_icon'></i> <span
                            class="nav_name">날씨</span> </a>
                    <a href="#" class="nav_link"> <i class='bx bx-message nav_icon'></i> <span
                            class="nav_name">커뮤니티</span> </a>
                    <a href="#" class="nav_link"> <i class='bx bx-bus nav_icon'></i> <span class="nav_name">여행정보</span>
                    </a>
                    <a href="#" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span
                            class="nav_name">마이페이지</span> </a>
                    <a href="#" class="nav_link"> <i class='bx bx-calendar nav_icon'></i> <span
                            class="nav_name">일정관리</span> </a>
                    <a href="#" class="nav_link"> <i class='bx bx-home nav_icon'></i> <span class="nav_name">숙소정보</span>
                    </a>
                    <a href="#" class="nav_link"> <i class='bx bx-message-alt-detail nav_icon'></i> <span
                            class="nav_name">쪽지</span> </a>
                </div>
            </div>
            <a href="#" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">로그아웃</span> </a>
        </nav>
    </div>
    <!--Container Main start-->
    
    <div id="cont">

        <div class="col-12" id="title">
           TRAVEL LOUNGE
        </div>

        <div class="col-12" id="searchbar" >
            <nav class="navbar bg">
                <div class="container-fluid">
                  <a class="navbar-brand"> </a>
                  <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요" aria-label="Search">
                    <button class="btn btn-primary" type="submit">Search</button>
                  </form>
                </div>
              </nav>
            </div>

            <div id="mm">
                 <div id="imgmenu1">
                    <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".." class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>
                    <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".." class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>
                    <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".." class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>
                </div>  
                <div id="imgmenu1">
                    <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".." class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>
                    <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".." class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>
                    <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".."  class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>
                        </div>  
                            <div id="imgmenu1">
                                <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".." class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>
                                <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".."  class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>
                                <div class=" col-12 col-sm-4" id="img"><img src="88.jpg" alt=".." class="rounded-circle w-100 h-100"><div class="mask"><p1>한라산근처 - 남휘리조트</p1></div></div>

                            </div>
                                    </header>
                                    <div calss="bar">
                                        <div class="col-12 text-center">
                                            1 2 3 4 5 6 7 8 9 >
                                        </div>
                                    <footer class="mt-auto text-black-50">                   
                                        <p>Designed for <a href="https://getbootstrap.com/" class="text-black">Catch the Java</a>, by <a
                                            href="https://twitter.com/mdo" class="text-black">@Jo yang gi</a>.</p>
                                    </footer>
                                </div>
                            </div>
                        </div>
    <!--Container Main end-->




    <script>

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