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


            /*Container Main start------------------------------------------*/
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

           
            /* div{border:1px solid black;} */

            /* 수정버튼 */
            #btn{
                height: 50px;
                text-align: right;
            }
            .content{
                margin: auto;
                width:50%;
                max-width: 600px;
                min-width: 500px;
                height: 500px;
                padding-bottom: 20px;
            }
            .main{
                height: 16%;
            }
            .img{
                height: 70%;
                padding-left: 20px ;
                padding-right: 20px;
                padding-top: 10px;
               

            }
            .imgimg{
                border-radius: 20px;
            }
            .wrapper{
                border: 1px solid gray;
                border-radius: 20px;
                padding-top: 20px;
                margin-right: 20px;
            }
            .userimg{
                padding-top: 10px;
            }
            .username{
                font-size: 14px;
            }
            .main2>.row{
                padding-top:20px ;
                text-align: center;
            }
            .img2{
                height: 70%;
                padding-left: 20px ;
                padding-right: 20px;
                padding-top: 20px;
            }
            .main2{
                height: 8%;
            }
            .title{
                padding-top: 5px;
                font-size: 20px;

            }
            .heartcol{
           font-size: 25px;
           color: #b1b1b1;
           
           /* padding: 0px; */
          
          
          
       }
       .goodcol{
        font-size: 25px;
           color: #b1b1b1;
           text-align: right;
           /* padding: 0px; */
           
          
 
       }
       .goodcnt{
          text-align: right;
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

position:absolute;

left: 50%;

transform: translate(-50%, -50%);

text-align:center;
font-weight: bold;
    	font-size:20px;

}
.comuview:hover{
       color:#0080ff;
       }

        </style>
    </head>

<body id="body-pd">
    <header class="header" id="header" style="background-color:#f5f5f7">
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
            <a class="nav-link nav-link2" href="/boardMainView.board?cpage=1">자유게시판</a>
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
            <div> <a href="/index.jsp" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">쉼표
                        <br>- 일상의 쉼표를 찍다</span> </a>
                <div class="nav_list">
                    <a class="nav_link active"> <i class='CurrIcon'></i> <span class="nav_name"><span class="weather">
                    <span class="CurrTemp"></span>
                    <span class="City"></span>
                    </span></span> </a>
                     <a href="/communityMain.board" class="nav_link"> <i class='bx bx-message nav_icon'></i> <span class="nav_name">커뮤니티</span> </a> 
                   <a href="/editorReMain.board?" class="nav_link active"> <i class='bx bx-book-bookmark nav_icon'></i> <span class="nav_name">에디터추천</span> </a> 
                   <a href="/boardMainView.board?cpage=1" class="nav_link"> <i class='bx bx-home nav_icon'></i> <span class="nav_name">숙소리뷰</span> </a>
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
    <!-- 애디터 추천 메인 ----------------------------------------------------------------------->
    <!--Container Main start-->
    <div class="container">
        <div class="row">
            <div class="col-12 text-center display-6" style="height: 100px; line-height: 95px; border:0px;">
               - 애디터 추천글 -
            </div>
            <div class="col-12" id="btn">
                <button type="button" class="btn btn-primary">수정

            </div>


        </div>
        
        <div class="row">
        
				<c:forEach var="i" items="${list}">
					<c:forEach var="j" items="${porfileList}">
						<c:if test="${j.parent_seq eq i.all_board_seq}">

							<div class="col-12 col-md-6 content ">
								<div class="row h-100 wrapper">
									<div class="col-12 main">
										<div class="row h-100">
											<div class="col-4 h-100 username">
												<div class="row h-100">
													<div class="col-12">${i.id}</div>
													<div class="col-12">${i.formdDate}</div>
													<div class="col-12">${i.view_count}</div>

												</div>
											</div>
											<div class="col-8 h-100 title">
												<a href = "/detailView.board?cpage=1&seq=${i.all_board_seq}&click=ok">
													${i.title}
												</a>
											</div>
										</div>

									</div>
									<div class="col-12 img">
										<a href = "/detailView.board?cpage=1&seq=${i.all_board_seq}&click=ok">
											<img src="${profilePath}${j.sys_name}" class="w-100 h-100 imgimg" alt="">
										</a>
									</div>
									<div class="col-12">
										<div class="row  heart" style="margin: auto;">

											<div class="col-6 goodcol" seq="${i.all_board_seq}" good="true"  gUpDown="0">
												<i class="fa-solid fa-thumbs-up"></i>
											</div>

											<div class="col-6 heartcol" seq="${i.all_board_seq}" heart="true"  jUpDown="0">
												<i class="fa-solid fa-heart"></i>
											</div>

										</div>

										<div class="row " id="count" style="margin: auto;">

											<div class="col-6 goodcnt">${i.like_count}</div>

											<div class="col-6 heartcnt">${i.jjim_count}</div>

										</div>
									</div>
								</div>

							</div>
			
						</c:if>
					</c:forEach>
				</c:forEach>

        </div>

    </div>
    <button onclick="topFunction()" id="myBtn" title="Go to top">↑</button>


    <script>
    
    $(function(){
    	
        if(${loginID != null}){//로그인 했을 시
			//로그인 id 좋아요 정보 가져오기
			$.ajax({
				   url:"/editorLoad.board",
				   data:{
					   table: "good"
				   },
				   dataType:"json"
				}).done(function(resp){//goodDTO
	
					$(".goodcol").each(function(i,item){
						
						let seq = $(this).attr("seq");
						for(let i =0; i< resp.length; i++){
							if(seq == resp[i].board_seq){
					            $(this).css("color", "#ffd000" );
					            $(this).attr("good","false");//good에 flase set.
							}
						}
					})
					
				   }).fail(function(a, b){ 
				      console.log(a);
				      console.log(b);
				   })	
  
			//로그인 id 찜 정보 가져오기	   
			$.ajax({
				   url:"/editorLoad.board",
				   data:{
					   table: "jjim"
				   },
				   dataType:"json"
				}).done(function(resp){//jjimDTO
				      		
			     	$(".heartcol").each(function(i,item){
					  
						let seq = $(this).attr("seq");
						for(let i =0; i< resp.length; i++){
							if(seq == resp[i].board_seq){
					            $(this).css("color", "red" );
					            $(this).attr("heart","false");//heart에 flase set.
							}
						}
			     		
		    		
			     	})
					

				   }).fail(function(a, b){ 
				      console.log(a);
				      console.log(b);
				   });
			   
        }
    })
    
    
    
    //good(좋아요)
    $(".goodcol").on("click", function () {
        if(${loginID == null}){
            alert("로그인이 필요합니다.");
            return false;
         }
        
        let currnetLocation = $(this);
        let good = $(this).attr("good");//true,false 가져오기

        if (good == 'true') {
            $(this).css("color", "#ffd000" );
            $(this).attr("good","false");//good에 flase set.
        } else {
            $(this).css("color", "#b1b1b1");
            $(this).attr("good","true");
        }
        
        good = $(this).attr("good");//true,false 다시 가져오기
        let gUpDown ;
        if(good == 'false'){
            gUpDown = 1;
        }else{
            gUpDown = 0;
        }
         
        let seq = $(this).attr("seq");
		$.ajax({
		   url:"/goodClick.board",
		   data:{
		      seq: seq,
		      upDown:gUpDown
		   },
		   dataType:"json"
		}).done(function(resp){
// 		      console.log(resp.likeCount)//좋아요 갯수
		      let goodCntLocation = $(currnetLocation.parent().siblings()[0]).children()[0];
		      $(goodCntLocation).html(resp.likeCount);
		      
		   }).fail(function(a, b){ 
		      console.log(a);
		      console.log(b);
		   })
    
     })   
    
    
 	//heart(찜)

    $(".heartcol").on("click", function () {
        if(${loginID == null}){
            alert("로그인이 필요합니다.");
            return false;
         }
        
        let currnetLocation = $(this);
        let heart = $(this).attr("heart");//true,false 가져오기

        if (heart == 'true') {
            $(this).css("color", "red" );
            $(this).attr("heart","false");//heart에 flase set.
        } else {
            $(this).css("color", "#b1b1b1");
            $(this).attr("heart","true");
        }
        
        heart = $(this).attr("heart");//true,false 다시 가져오기
        let jUpDown ;
        if(heart == 'false'){
            jUpDown = 1;
         }else{
            jUpDown = 0;
         }
		
		let seq = $(this).attr("seq");
		$.ajax({
		   url:"/jjimClick.board",
		   data:{
		      seq:seq,
		      upDown:jUpDown
		   },
		   dataType:"json"
		}).done(function(resp){
// 		      console.log(resp.jjimCount)//좋아요 갯수
		      let jjimCntLocation = $(currnetLocation.parent().siblings()[0]).children()[1];
		      $(jjimCntLocation).html(resp.jjimCount);
		   }).fail(function(a, b){ 
		      console.log(a);
		      console.log(b);
		   })

         
     })



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

        $("#password-input").on("keyup",function(e){
            if(e.keyCode==13){
                $("#modal_loginBtn").click();
            }
        })
        
        /////////////////////////////////////애디터 추천//////////////////////////////////////////


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