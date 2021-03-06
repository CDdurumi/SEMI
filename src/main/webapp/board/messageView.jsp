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
<!--     <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" -->
<!--         integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<!--     <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json"> -->
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
    <script src="https://kit.fontawesome.com/247b201f79.js" crossorigin="anonymous"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
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
            transition: .5s;
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
            cursor: pointer;
        }

        .login, .join {
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


        /* ???????????? */
        div {
            /* border: 1px solid black; */
        }

        #page {
            font-weight:bold;
            color: #0080ff;
            text-decoration: underline;
            text-underline-position : under;
            font-size:17px;
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
            min-width:330px;
            
        }

        #contentsRow {
            margin: auto;
            width: 100%;
            /* border: 1px solid black; */
        }

        #conMenu {
            height: 50px;
             margin: 40px;
           
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
       #goodcol{
        font-size: 30px;
           color: #b1b1b1;
           text-align: center;
           padding: 0px;
           border-radius: 100px;
           border: 1px solid rgb(177, 177, 177);
           max-width: 47px;
           min-width: 47px;
       }
       #likecnt{
           padding: 0px;
           max-width: 47px;
           min-width: 47px;
       }
       #jjimcnt{
           padding: 0px;
           max-width: 47px;
           min-width: 47px;
       }
       .msg{
           width: 90%;
           margin: auto;
           height: 65px;
       }
        #message{
           margin: auto;
           width: 90%;
           padding-bottom: 10px;
       }
       .message{
           min-height: 80px;
       }
      
       /* ????????? ????????? ????????? ?????? ?????? ?????? ??????????????? */
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
            left:0px;
            border: 1px solid #0080ff;
            border-radius: 10px;
        }
         #title{
            font-size: 40px;
           
        }
        /*--top??????----------------------------------------------------------------*/

#myBtn {
  display: none; 
  position: fixed; 
  bottom: 12px;
  width: 45px;
  height: 45px;
  right: 10px; 
  z-index: 99; 
  border: none; 
  outline: none; 
  background-color:  #0080ff;
  color: white; 
  cursor: pointer; 
  padding: 3px; 
  border-radius: 50%; 
  font-size: 32px; 
  font-weight: bold;
  padding-bottom:40px;
  padding-top: 0px;
}

#myBtn:hover {
  background-color: #555; 
}
               
    </style>




<!-- ?????? ?????? ??? ------------------------------------------------------------------- -->
    <script>
    window.onload = function(){
    	if(${loginID == null}){
    		Swal.fire({
    			  icon: 'error',
    			  title: 'Oops...',
    			  text: 'Something went wrong!',
    			  footer: '<a href="">Why do I have this issue?</a>'
    			})
    	}
    }
    

    </script>
    
    
    
</head>

<body id="body-pd">
    <header class="header" id="header">
       <i class='bx bx-menu' id="header-toggle"></i>
        <div>?????? ????????????</div>
        <div>
            <c:choose>
				<c:when test="${loginID !=null}">
						<div class="d-md-inline d-none">${loginID }??? ??????????????? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<a href="/logout.member" class="d-md-inline d-none">logout</a>					
				</c:when>
		
				<c:otherwise>
					<a href="#" class="login" id="login"  data-bs-toggle="modal" data-bs-target="#exampleModal">login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          			 <a href="/goJoinPage.member" class="join">join</a>
				</c:otherwise>
			</c:choose>
        </div>
    </header>
    <ul class="nav nav2">
       <li class="nav-item">
            <a class="nav-link nav-link2" href="/boardMainView.board?cpage=1">???????????????</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/galleryMain.board?cpage=1">????????????</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/jobMain.board?cpage=1">????????????</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/foodMain.board?cpage=1">??????</a>
        </li>
        <li class="nav-item">
            <a class="nav-link nav-link2" href="/houseMain.board?cpage=1">????????????</a>
        </li>
    </ul>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="/goIndex.board" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">??????
                        <br>- ????????? ????????? ??????</span> </a>
                <div class="nav_list">
                   <a class="nav_link" style="color:white;"> <i class='CurrIcon'></i> <span class="nav_name"><span class="weather">
                   <span class="CurrTemp"></span>
                   <span class="City"></span>
                   </span></span> </a>
                   <a href="/communityMain.board" class="nav_link"> <i class='bx bx-message nav_icon'></i> <span class="nav_name">????????????</span> </a> 
                   <a href="/editorReMain.board?" class="nav_link"> <i class='bx bx-book-bookmark nav_icon'></i> <span class="nav_name">???????????????</span> </a> 
                   <a href="/houseMain.board?cpage=1" class="nav_link"> <i class='bx bx-home nav_icon'></i> <span class="nav_name">????????????</span> </a>
               		<c:choose>
						<c:when test="${loginID !=null}">
							<a href="/goMyPage.mpg" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">???????????????</span> </a>
							
						</c:when>
		
						<c:otherwise>
							<a href="/goMyPage.mpg" class="nav_link" data-bs-toggle="modal" data-bs-target="#exampleModal"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">???????????????</span> </a>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${loginIsAdmin == 'Y'}">
               				<a href="/adiminPage.admin" class="nav_link"> <i class='bx bx-hard-hat nav_icon'></i> <span class="nav_name">??????????????????</span> </a>
                		</c:when>
                	
                		<c:otherwise>
							
						</c:otherwise>
                	</c:choose> 
                 </div>
            </div>
            <c:choose>
				<c:when test="${loginID !=null}">
					<a href="/logout.member" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">????????????</span> </a>	
				</c:when>
			</c:choose>
        </nav>
    </div>
    
 <!--????????? ??????-->
    <div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-right" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title text-center" id="exampleModalLabel">?????????</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="card-details">
                  <input type="text" id="id-input" placeholder="email" name="email" required>
                  <i class="fa fa-envelope"></i>
              </div>
              <div class="card-details">
                  <input type="password" id="password-input" placeholder="password" name="pw" required>
                  <i class="fa fa-lock"></i>
                  <span><small class="fa fa-eye-slash passcode"></small></span>
              </div>
              <div>
              <span id="idpw_check"></span>
                  </div>            
            </div>
            <div class="modal-footer">
                <button class="btn btn-outline-success" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal">??????????????? ??????????????? ?</button>
            <button type="button" class="btn btn-primary" id="modal_loginBtn">?????????</button>
              <a href="/signup.jsp"><button type="button" class="btn btn-outline-primary">????????????</button></a>
            </div>
          </div>
        </div>
      </div>
      <!--pw ?????? ??????-->
      <div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalToggleLabel2">???????????? ??????</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              ????????? <strong>?????????</strong>??? ????????? <strong>?????????</strong>??? ????????? 
              <br>?????? ??????????????? ???????????????

              <div class="input-group mb-3">
                <span class="input-group-text" id="inputGroup-sizing-default">?????????</span>
                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="findpw_email">
              </div>
              <div class="input-group mb-3">
                <span class="input-group-text" id="inputGroup-sizing-default">?????????</span>
                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="findpw_nickname">
              </div>
              <input class="form-control" type="text" placeholder="??????????????????" aria-label="default input example" id="temp_pw" disabled>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-bs-target="#exampleModal" id="new_pw_btn">?????? ???????????? ??????</button>
              <button class="btn btn-primary" data-bs-target="#exampleModal" data-bs-toggle="modal">???????????????</button>
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
					$("#idpw_check").text("Email ?????? ??????????????? ???????????? ????????????!");
					$("#idpw_check").css({ color: "red" })
					$("#id-input").val("");
					$("#id-input").focus();					
					$("#password-input").val("");
				}else if(resp==true){
					location.reload();
				}
				
			});
		})

$("#new_pw_btn").on("click",function(){
			let email = $("#findpw_email").val();
			let nickname= $("#findpw_nickname").val();
			
			
			let pw = (Math.floor(Math.random() * 10)*10000000)+(Math.floor(Math.random() * 10)*1000000)+(Math.floor(Math.random() * 10)*100000)+(Math.floor(Math.random() * 10)*10000)+(Math.floor(Math.random() * 10)*1000)+(Math.floor(Math.random() * 10)*100)+(Math.floor(Math.random() * 10)*10)+Math.floor(Math.random() * 10);
			
			for(i=1; i<9; i++){
				
			}
			
			console.log(pw);
			
			
			let temppw =$("#temp_pw");
			if(email==""||nickname==""){
				alert("????????? ????????? ??? ????????????");
			}else{
				$.ajax({
					url:"/resetpw.member",
					type:"post",
					data:{email:email,nickname:nickname,pw:pw},
					dataType:"json"
				}).done(function(resp){
					console.log(resp);
					if(resp>0){
						temppw.val("?????? ???????????? : " + pw);
					}else{
						temppw.val("email ?????? ???????????? ???????????????");
					}
				});
			}
			
		})

</script>		
<!-- ????????? ??????  -->
    <!--Container Main start-->
    <div class="height-100 ">
        <div class="row width-100 dummy" ></div>
        
        <div class="row " id="contentsRow">
           
            <div class="col-12 p-0 border-bottom border-2 rounded h-100" id="contents">
                <div class="row border-bottom border-2 rounded h-100" id="conMenu">
                    <div class="col-12 col-md-12 ellipsis "  style="padding-left:15px" id="title">${dto.title}</div>
                    <div class="col-3 col-md-3 ellipsis " ><span style="width: 90%; ">????????? | ${dto.receiver}</span></div>
                    <div class="col-9 ">${dto.date }</div>
                    
                    
 						<div class="col-12" id="dummy3" style="height: 10px;"></div>                     
                   
                </div>
                <div class="col-12 text-center" id="cont" style="padding:0px;">
                    <div class="row " id="contentsdummy" style="padding:0px;" >
                        <div class="col-12" id="contentsdummy2" style="padding-top: 40px; padding-bottom: 40px;padding-left: 0px;padding-right: 0px;">
                            ${dto.contents}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12" style="text-align: right; padding-top: 10px;padding-right: 10px;">
            		<button type="button" class="btn btn-primary" id="previousBtn">????????????</button>
	           	    <button class="btn btn-primary " type="button" id="MessageSend" data-bs-toggle="modal" data-bs-target="#exampleModal1">??????</button>
	               	<button class="btn btn-outline-danger " type="button" id="deleteMsg">??????</button>
            </div>
            
            

            
        </div>
        
        <div class="row dummy" id="dummy"></div>
        
<!--         <footer class="mt-auto text-black-50" style="background-color:#f5f5f7"> -->
<!--         	<hr> -->
<!--         	<div class="row"> -->
<!--         		<div class="col-5" style=" text-align:right;"> -->
<!--         			<img src="/imgsrc/footerlogo2.png"> -->
<!--         		</div> -->
<!--         		<div class="col-7"> -->
<!--         			<div class="col-12"> -->
<!--         				???????????? ?????? -->
<!--         			</div> -->
<!--         			<div class="col-12"> -->
<!--         				????????? | ????????? | ????????? | ??? ??? | ????????? | ????????? -->
<!--         			</div> -->
<!--         			<div class="col-12"> -->
<!--         				Designed by Catch the Java -->
<!--         			</div> -->
<!--         		</div> -->
<!--         	</div> -->
<!--         	<hr> -->
<!--         </footer> -->
        
<!-- Message Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" >
        <h5 class="modal-title" id="exampleModalLabel">?????? ?????????</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	 
      	?????? ?????? | <input type="text" placeholder="?????? ?????? ID" id="receiver"><p></p><div id="checkReceiver"></div>
      	<input type="text" placeholder="????????? ???????????????" id="title1" name="title" style="width:100%">
      	<p>
      		
      	</p>
      	
        <textarea style="width:100%; min-height:150px" placeholder="????????? ???????????????" id="msgContents"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
        <button type="button" class="btn btn-primary" id="sendMsg">?????????</button>
      </div>
    </div>
  </div>
</div>
        
    
    </div>
    
     <!--top ??????-->
    <button onclick="topFunction()" id="myBtn" title="Go to top">???</button>
    
	<script>
//     ?????? ??????
    $("#deleteMsg").on("click", function(){
    	location.href = "deleteMsg.mpg?message_seq="+${dto.message_seq};
    });
//   ????????????
	$("#previousBtn").on("click", function(){
		history.back();
	})
    
//	     ???????????????
    $("#sendMsg").on("click", function(){
    	if($("#receiver").val()==""){
        	alert("?????? ????????? ???????????? ??????????????????.");
        	$("#receiver").focus();
        	return false;
        }else if($("#title1").val()==""){
        	alert("????????? ??????????????????.");
        	$("#title1").focus();
        	return false;
        }else if($("#msgContents").val()==""){
        	alert("????????? ??????????????????.");
        	$("#msgContents").focus();
        	return false;
        }else{
        	$.ajax({
        		url:"sendMsg.mpg",
        		type:"post",
        		data:{
        			message_seq:${dto.message_seq},
        			receiver:$("#receiver").val(),
        			title:$("#title1").val(),
        			contents:$("#msgContents").val()
        			},
        		dataType:"json"
        	}).done(function(resp){
        		console.log(resp);
        		if(resp==0){
        			alert("???????????? ?????? ??????????????????.");
        		}else{
        			location.reload();
        		}
        	})
        }
        
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
    
    

  //top ??????

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
               let $Temp = Math.floor(data.main.temp) + '??';
               let $city = "?????????";
               
               $('.CurrIcon').append('<i class="' + weatherIcon[$Icon] +'"></i>');
               $('.CurrTemp').prepend($Temp);
               $('.City').append($city);
               console.log(data);
                   console.log("???????????? : "+ (data.main.temp- 273.15) ); //??????????????? ????????? ??????
                   console.log("???????????? : "+ data.main.humidity);
                   console.log("?????? : "+ data.weather[0].main );
                   console.log("?????????????????? : "+ data.weather[0].description );
                   console.log("?????? ????????? : "+ data.weather[0].icon );
                   console.log("??????   : "+ data.wind.speed );
                   console.log("??????   : "+ data.sys.country );
                   console.log("????????????  : "+ data.name );
                   console.log("??????  : "+ (data.clouds.all) +"%" );  
            }
         })
      });
   });
   $("#receiver").on("blur",function(){
		$.ajax({
		url:"/duplIDCheck.member",
		type:"get",
		data:{nickname:$("#receiver").val()},
		dataType:"json"
		}).done(function(resp){
			if(resp==false){						
				$("#checkReceiver").text("???????????? ?????? ??????????????????.");
				$("#checkReceiver").css({ color: "red" });
				
				$("#sendMsg").attr("disabled", "disabled");
			}else if(resp==true){
				$("#checkReceiver").text("???????????? ??????????????????.");
				$("#checkReceiver").css({ color: "blue" });
				
				$("#sendMsg").removeAttr("disabled");
			}
		});
	})
</script>
</body>

</html>