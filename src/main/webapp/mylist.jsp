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
    <script defer src="https://use.fontawesome.com/releases/v5.15.2/js/all.js" integrity="sha384-vuFJ2JiSdUpXLKGK+tDteQZBqNlMwAjhZ3TvPaDfN9QmbPb7Q8qUpbSNapQev3YF" crossorigin="anonymous"></script>
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
		
		body::-webkit-scrollbar{
   			display: none; /* Chrome, Safari, Opera*/
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

        .l-nav1bar {
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

        .show {
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

        .height-100 {
            height: 100%
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

            .l-nav1bar {
                left: 0;
                padding: 1rem 1rem 0 0
            }

            .show {
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

        /* 여행커뮤니티 css */
        #header_header {
            height: 100%;
          padding-top: 8px;
          border: 1px black;
        }

        #headerrow {
            height: 100%
        }

        #maintext {
            text-align: center;
            font-size: 40px;
            line-height: 90px;
        }

          /* div {
            border: 1px solid black;
        }    */
        #freemain{
            height: 50px;
        }
        #mainnav1i_row{
            height: 100%;
        }
        #wt{
            
            height: 500px;
            border-radius: 10px;
        }
        #ht{
            
            height: 500px;
            border-radius: 10px;
        }
#bar{
    border: 1px solid #cfcfcf;
    height: 8%;
    padding-top: 5px;
    border-radius: 5px;
 
}
#list{
    border: 1px solid #cfcfcf;
    height:92%;
    border-radius: 12px;
}
.nav-link{
         padding-right: 10PX;
         color: hsl(0, 1%, 65%);
      }
      #click{
          color: #0D62FD;
      }


      #myBtn {
  display: none; /* Hidden by default */
  position: fixed; /* Fixed/sticky position */
  bottom: 13px; /* Place the button at the bottom of the page */
  right: 0px; /* Place the button 30px from the right */
  
  z-index: 99; /* Make sure it does not overlap */
  border: none; /* Remove borders */
  outline: none; /* Remove outline */
  background-color: #0D62FD; /* Set a background color */
  color: white; /* Text color */
  cursor: pointer; /* Add a mouse pointer on hover */
  padding: 15px; /* Some padding */
  border-radius: 70%; /* Rounded corners */
  font-size: 29px; /* Increase font size */
  width:46px;
  height: 44px;
  line-height:2px;
  padding-left:7px;
  padding-right:7px;
  padding-top: 13.5px;
  font-weight:bold ;
}

#myBtn:hover {
  background-color: #0D62FD; /* Add a dark-grey background on hover */
}


    </style>
</head>

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div class="login">login</div>
    </header>
    <div class="l-nav1bar" id="nav1-bar">
        <nav class="nav1">
            <div> <a href="#" class="nav1_logo"> <i class='bx bx-layer nav1_logo-icon'></i> <span class="nav1_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav1_list">
                    <a href="#" class="nav1_link active"> <i class='CurrIcon'></i> <span class="nav1_name"><span class="weather">
                    <span class="CurrTemp"></span>
                    <span class="City"></span>
                    </span></span> </a>
                            
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
    <!--Container Main start-->
    <div class="height-100 d-flex text-center text-black bg-white" id="nv">
        <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
            
        <ul class="nav nav-tabs" id="navset">
  <li class="nav-item">
    <a class="nav-link" href="#">일정관리</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="">쪽지</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#" aria-current="page" id="click">게시글</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="">계정정보</a>
  </li>
</ul>
            <header class="mb-auto">
                <div class="row" id="header_header">
                    <div class="col-12">
                        <div class="row" id="wt">   
                                <div id="list">내가쓴글</div>
                                <div id="bar"> < 1 2 3 4 5 6 7 8 9 10 > </div>
                            </div>
                            <br>
                            <div class="row" id="ht">   
                                <div id="list">찜 목록</div>
                                <div id="bar"> < 1 2 3 4 5 6 7 8 9 10 > </div>
                            </div>
                                </div>
                            </div>

                        </div>

                    </div>



                </div>
                
            </header>
       



            </main>

            <footer class="mt-auto text-black-50">
                <p>Designed for <a href="https://getbootstrap.com/" class="text-black">Catch the Java</a>, by <a
                        href="https://twitter.com/mdo" class="text-black">@Jo yang gi</a>.</p>
            </footer>
        </div>
    </div>
    <!--Container Main end-->
<!--버튼-->
    <button onclick="topFunction()" id="myBtn" title="Go to top">↑</button>


    <script>

        document.addEventListener("DOMContentLoaded", function (event) {

            const shownav1bar = (toggleId, nav1Id, bodyId, headerId) => {
                const toggle = document.getElementById(toggleId),
                    nav1 = document.getElementById(nav1Id),
                    bodypd = document.getElementById(bodyId),
                    headerpd = document.getElementById(headerId)

                // Validate that all variables exist
                if (toggle && nav1 && bodypd && headerpd) {
                    toggle.addEventListener('click', () => {
                        // show nav1bar
                        nav1.classList.toggle('show')
                        // change icon
                        toggle.classList.toggle('bx-x')
                        // add padding to body
                        bodypd.classList.toggle('body-pd')
                        // add padding to header
                        headerpd.classList.toggle('body-pd')
                    })
                }
            }

            shownav1bar('header-toggle', 'nav1-bar', 'body-pd', 'header')

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


//top버튼
mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
mybutton.style.display = "block";
} else {
mybutton.style.display = "none";
}
}
// When the user clicks on the button, scroll to the top of the document
function topFunction() {
document.body.scrollTop = 0; // For Safari
document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
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
	
</script>
</body>

</html>