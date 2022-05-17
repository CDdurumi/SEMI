<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

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
        
        <!-- SummerNote -->
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<!--         <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"> -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

            /* .header_img img {
                width: 40px
            } */

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
            /* .bd-placeholder-img {
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
        } */


            /*Container Main start-----------------------------------------------------*/
            * {
                box-sizing: border-box;
            }

            .container {
                /* border : 1px solid red; */
            }

            [class ^="height"] div {
                /* border : 1px solid black; */
                margin: 0px;
            }

            [class ^="col"] {
                border: 1px solid black;
                padding: 0px;
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
            <a class="nav-link nav-link2" id="page" href="#">자유게시판</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="#">여행후기</a>
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

    <!-- 게시글 작성하기 메인 ----------------------------------------------------------------------->
    <!--Container Main start-->
    <form action="2134" method="post" enctype="multipart/form-data">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center display-6">
                    - OO게시판 글 작성하기 -
                </div>
                <div class="col-12 ">
                    <input type="text" placeholder="글 제목을 입력하세요" name="title" class="w-100" required>
                </div>
                <div class="col-12 " id="fileArea">
                    <input type="file" name="file1">
                    <button id="plusBtn" type="button">+</button>
                    <button id="minusBtn" type="button">-</button>
                </div>
                <div class="col-12 ">
                    <textarea class="summernote" placeholder="글 내용을 입력하세요." name="contents" required></textarea>
                </div>
                <div class="col-12 text-center">
                    <a href="/list.board?cpage=1"><input type="button" value="목록으로"></a>
                    <input type="submit" value="작성완료">
                </div>
            </div>
        </div>
    </form>
    <!--  ----------------------------------------------------------게시글 작성하기 메인------------->

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


        //게시글 작성하기/////////////////////////////////////////////////////////////////////////////////////////
		let i = 2;
        //+버튼 클릭시 type=file 추가
		$("#plusBtn").on("click",function(){
			let fileInput = ("<input type='file' class='addClass' name = file"+i+++">");
			$("#fileArea").append("<br>");
			$("#fileArea").append(fileInput);
		});
	    //+버튼 클릭시 type=file 제거
		$("#minusBtn").on("click",function(){
            console.log($("#fileArea").children(".addClass").length)
            for(let i=0 ; i<$("#fileArea").children(".addClass").length; i++ ){
                if(i+1 == $("#fileArea").children(".addClass").length){
                    let brIndex = $($("#fileArea").children(".addClass")[i]).siblings().length-1
                    $($($("#fileArea").children(".addClass")[i]).siblings()[brIndex]).remove();
                    $($("#fileArea").children(".addClass")[i]).remove();
                }
            }
            
		});

		//서머노트////////////////////////////////////////////////////////////////////////////
		$('.summernote').summernote({
            minHeight: 350,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            callbacks: {//콜백
                //이미지 업로드 시 감지하는 이벤트
//                onImageUpload : function(files, editor, welEditable) {
//             	   sendFile(files[0],this);
//                 },
                
                //이미지 마우스 오른쪽 클릭하여 쓰레기통 이모티콘 클릭 시 감지하는 이벤트
                onMediaDelete : function(target) {

 	                deleteFile(target[0].src);
 	            }
            }
        });
		
        //이지미 업로드 시 서블릿으로 보내서 업로드 하고, 서버에 저장된 이미지파일 주소 받아오기
	 	function sendFile(file, editor) {
            // 파일 전송을 위한 폼생성
	 		data = new FormData();
	 	    data.append("uploadFile", file);
	 	    $.ajax({ // ajax를 통해 파일 업로드 처리
	 	        data : data,
	 	        type : "POST",
	 	        url : "/imageUpload.file",
	 	        contentType : false,
	 	        processData : false,
	 	        dataType:"json",
	 	        success : function(data) { // 처리가 성공할 경우
                    // 에디터에 이미지 출력 - 서버에서 받아온 이미지파일 주소를 이미지 태그형식으로 만들기
	 	        	$(editor).summernote('editor.insertImage', data.url);
	 	        
	 	        }
	 	    });
	 	}

        //이미지 삭제 시 서버로 해당 이미지 소스 보내기(서블릿에서 소스-이미지 파일 주소 받아서 삭제)
	 	function deleteFile(src) {
	 	    $.ajax({
	 	        data: {src : src},
	 	        type: "POST",
	 	        url: "/dummmyImageDel.file", // replace with your url
	 	        cache: false,
	 	        success: function(resp) {
	 	            console.log(resp);
	 	        }
	 	    });
	 	}
         //////////////////////////////////////////////////////////////////////서머노트////////
    </script>
</body>

</html>