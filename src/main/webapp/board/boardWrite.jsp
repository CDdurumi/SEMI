<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Document</title>

   
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
<!--         <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> -->
<!--         <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> -->
<!--         <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"> -->
<!--         <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

        <script src="/summernote-0.8.18-dist/summernote-lite.js"></script>
        <script src="/summernote-0.8.18-dist/lang/summernote-ko-KR.js"></script>
        <link rel="stylesheet" href="/summernote-0.8.18-dist/summernote-lite.css">
        
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
            .note-editor{
            	background-color: white;
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
                border : 1px solid black;
                
            }

            [class ^="col"] {
                border: 1px solid black;
                padding: 0px;
            }

            .mainTitle{
                font-weight: bold;
            }
            .title{
                border: 0px; width: 99.5%; 
                margin: 2px; margin-left: 3px;
                font-size: 20px;
                font-weight: bold;
            }
            #firstFile{margin-left: 2px;}
            .addFile{margin: 2px;}

            #plusBtn, #minusBtn{
                border-radius: 4px;
                margin: 2px;
                font-weight: bold;
                width: 30px;
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
                    <a href="#" class="nav_link active"> <i class='CurrIcon'></i> <span class="nav_name"><span class="weather">
                    <span class="CurrTemp"></span>
                    <span class="City"></span>
                    </span></span> </a>
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
        <div class="container my-4">
            <div class="row">
                <div class="col-12 text-center display-6 mainTitle p-1">
                    - OO게시판 글 작성하기 -
                </div>
                <div class="col-12 ">
                    <input type="text" placeholder="글 제목을 입력하세요" name="title" class="title" required>
                </div>
                <div class="col-12 " id="fileArea">
                    <!-- <input type="hidden" name="fileCount" id="fileCount" value=1>  -->
                    <input type="file" name="file1" id="firstFile">
                    <button id="plusBtn" type="button">+</button>
                    <button id="minusBtn" type="button">-</button>
                </div>
                <div class="col-12 ">
                    <textarea class="summernote" name="contents" required></textarea>
                </div>
                <div class="col-12 " style="text-align: right;">
                    <a href="/list.board?cpage=1"><input type="button" value="목록으로" class="my-1"></a>
                    <input type="submit" value="작성완료" class="mx-2">
                </div>
            </div>
        </div>
    </form>
    <!--  ----------------------------------------------------------게시글 작성하기 메인------------->

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


        //게시글 작성하기/////////////////////////////////////////////////////////////////////////////////////////
		let i = 2;
        //+버튼 클릭시 type=file 추가
		$("#plusBtn").on("click",function(){
			let fileInput = ("<input type='file' class='addFile' name = file"+i+++">");
			$("#fileArea").append("<br>");
			$("#fileArea").append(fileInput);
			// $("#fileCount").val(i-1);
		});
	    //+버튼 클릭시 type=file 제거
		$("#minusBtn").on("click",function(){
            console.log($("#fileArea").children(".addFile").length)
            for(let i=0 ; i<$("#fileArea").children(".addFile").length; i++ ){
                if(i+1 == $("#fileArea").children(".addFile").length){
                    let brIndex = $($("#fileArea").children(".addFile")[i]).siblings().length-1
                    $($($("#fileArea").children(".addFile")[i]).siblings()[brIndex]).remove();
                    $($("#fileArea").children(".addFile")[i]).remove();
                }
            }
            
		});

		//서머노트////////////////////////////////////////////////////////////////////////////
		$('.summernote').summernote({
            toolbar: [
							['style', ['style']],
							['fontsize', ['fontsize']],
							['font', ['bold', 'italic', 'underline', 'clear']],
							['fontname', ['fontname']],
							['color', ['color']],
							['para', ['ul', 'ol', 'paragraph']],
							['height', ['height']],
							['table', ['table']],
							['insert',['picture','link','video','hr']],
							['view', ['codeview','fullscreen']],
							['help', ['help']]
						],

            minHeight: 500,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
//             spellCheck: false,
            callbacks: {//콜백
                //이미지 업로드 시 감지하는 이벤트
            //    onImageUpload : function(files, editor, welEditable) {
            // 	   sendFile(files[0],this);
            //     },
                
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
// 	            enctype: 'multipart/form-data',
	 	        url : "/imageUpload.file",
// 	 	        cache : false,
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
</body>

</html>