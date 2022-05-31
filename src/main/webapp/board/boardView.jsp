<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
            cursor: pointer
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
.icon{
  color:#ffe69a;
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
           width: 87%;
           padding-top: 20px;
           padding-left: 20px;
           flex-wrap: nowrap; 
       } 
       #ht{
         float: left;
      }       
      
       #ht2{
          float: left;  
         text-align: right;
       
         vertical-align: right; 

      } 
      
       #count{
           padding-top: 5px;
            width: 87%;
           text-align: center;
           padding-left:20px;
       }
       #jjimcol{
           font-size: 27px;
           color: #b1b1b1;
           text-align: center;
           padding: 0px;
            max-width: 56px;
            min-width: 56px; 
            float: left;
            text-align: center;      
       }
       #goodcol{
           font-size: 27px;
           color: #b1b1b1;
           text-align: center;
           padding: 0px;
           max-width: 56px;
           min-width: 56px; 
           float: left;
           text-align: center;
           
       }
       #likecnt{
           padding: 0px;
           max-width: 56px;
           min-width: 56px;
       }
       #jjimcnt{
           padding: 0px;
           max-width: 56px;
           min-width: 56px;
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
       .fa-border{
         border-radius: 50%; 
         height: 50px;
         width:50px;
         padding-top: 9px;
        
     }

        .rebtn{
            text-align: right;
        }
            .padding{
            padding-bottom:10px ;

        }
         .writer{
            font-weight: bold;
        }
        .message{
        min-height:40px;
        padding-top:13px;
        word-break:break-all;
        }
        [contenteditable]{
        outline: 0px solid transparent;
        border-radius:8px;
        }
/*         대댓글 버튼 수정 */
.remodify {
	background-color: white !important;
} 
.remodify:hover {
	background-color: #0d72ff !important;
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
        .redelete {
	background-color: white !important;
} 
.redelete:hover{
	background-color: #dc3545 !important;
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
/*            left: 9px; */
/*            right: 9px; */
/*            display:inline-block; */
/*        } */
       /* */
       .ididid{
       overflow:hidden;
       text-overflow:ellipsis;
       white-space:nowrap;
       
       }
       .wrap{
           padding: 0px;
           margin: auto;
           width: 90%;
       }
       
       #btn{
          width: 100%;
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
        .btnbtn{
        text-align: right;
        }
        /*--top버튼----------------------------------------------------------------*/

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
#mesImg{
	transtition: all 0.2s linear;
	cursor:pointer;
}
#mesImg:hover{
	transform:scale(1.4);
}
               
    </style>




<!-- 화면 로딩 시 ------------------------------------------------------------------- -->
    <script>
       let page = 1;  //페이징과 같은 방식이라고 생각하면 된다.

       $(function(){
            getList(page);
            page++;
//             console.log(page);
       })
    
       $(window).scroll(function(){   //스크롤이 최하단 으로 내려가면 리스트를 조회하고 page를 증가시킨다.
           if($(window).scrollTop() >= $(document).height() - $(window).height()){
            getList(page);
                 page++;   
//                  console.log(page);
           } 
      });

       
       function getList(pape){
           
           $.ajax({
                url:'/list.reply',
                type:'POST',
               data : {page : page, parent_seq : '${dto.all_board_seq}'},
               dataType : 'json'
             }).done(function(resp){
            	 
            	 
            	 
            	 
           
//           if(${totalPage}<pape){
//              alert("마지막 페이지 입니다.");
//           }else{

             for(let i = 0; i < resp.length; i++){
//console.log(${reList[0].reply_seq});
				
				
				
				
                let row1 = $("<div>");
                      row1.attr("class","row wrap border-bottom border-2");
                      let col1 = $("<div>");
                      col1.attr("class","col-12 wwrap");
                      let row2 = $("<div>");
                      row2.attr("class","row");
                      
                      let col2 = $("<div>");
                      col2.attr("class","col-9 p-0");
                      let row3 = $("<div>");
                      //작성자
                      let col3 = $("<div>");
                      col3.attr("class","col-12 pt-4 writer"); 
                      col3.attr("style","padding-left : 10px");
                      col3.text(resp[i].id);   
                      //작성날짜
                      let col4 = $("<div>");
                      col4.attr("class","col-12 ");   
                      col4.css("padding-left","10px");
                      col4.css("font-size",  "11px");
                      col4.text(resp[i].write_date);
                      //버튼
                      let col5=$("<div>");
                      col5.attr("class","col-3 btnbtn pt-4");
                      
                       //댓글내용
                       let col6 =$("<div>");
                      col6.attr("class","col-12 message  m-0");
                      col6.attr("style","word-break:break-all");
                      col6.attr("style","padding-right:30px");
                      col6.text(resp[i].contents);    
                    //대댓 작성창 넣을 곳
                      let col7=$("<div>");
                    col7.attr("class","col-12 ");
                    //대댓 나올 곳
                       let col8=$("<div>");
                    col8.attr("class","col-12 dsfdadfs");
                      //대댓글 버튼
                 
    				
                      
                     let my_id =col3.text();
                     let btn5 =  $("<button>");
                     
             
                     btn5.attr("class","btn btn-outline-secondary btn-sm rereply ");
                     btn5.attr("type","button"); 
                     col5.append(btn5);
//                      console.log('${reList[0].reply_seq}');
                     
                     
                     
                     <c:forEach items="${reList}" var="i" varStatus="status">
                     console.log(${reList[status.index].reReCount});		

                     if(resp[i].reply_seq == '${reList[status.index].reply_seq}'){
//   						alert(123);
						btn5.html(' <i class="fa-solid fa-message"></i>' +"(${reList[status.index].reReCount})");
						
					}
                     
                     
                 	 </c:forEach>
                     
//                      for(let j = 0; j < ${fn:length(reList)}; j++){
//                     	 console.log(${reList[0].reply_seq});
//                     	 console.log(j);
     					
//      				}
//                      for(let j = 0; j < ${fn:length(reList)}; j++){
//                     	 console.log('${reList[j].reply_seq}');
// //                     	 let seq = 
//      					if(resp[i].reply_seq == ${reList[0].reply_seq}){
     						
//      						btn5.html(' <i class="fa-solid fa-message"></i>' +"(${reList[j].reReCount})");
     						
//      					}
//      				}
                     
                     //대댓글 작성
                     
                     let replyOn =false;
                     let replyView=false;
                   
                     let recol4; 
                     let rebtn2;
                     let rebtn3;
                     let recol11;
                     
                   //대댓글 보기
                     $(btn5).on("click",function(){
                        let the = $(this);
                        let the2 = $($(this).parent().parent().parent().siblings()[1]).children();
//                         let the2 = $(this).parent().parent().parent();
                        
                        //대댓 삭제버튼
                        let rebtn3;
                        
                        
                        $.ajax({
                           url:"/reList.reply",
                             type : 'POST',
                             data : {parent_seq :resp[i].reply_seq },
                             dataType : 'json'
                        }).done(function(resp){
                           let rereply;
                           let target1 = $(the.parent().parent().parent().siblings()[1]);
                           if(replyView==false){
                              
                         rereply=$("<div>");
                              rereply.attr("class","row hi");
                              let object={};
                           for(let i = 0; i<resp.length;i++){
                           
                                let recol4 =$("<div>");
                                recol4.attr("class","col-12");
                                
                                let rerow1= $("<div>");
                                rerow1.attr("class","row padding");
                                
                                let recol5 =$("<div>");
                                recol5.attr("class","col-1");
                                recol5.html('<i class="fa-solid fa-reply fa-rotate-180 "></i>');
                                
                                let recol6=$("<div>");
                                recol6.attr("class","col-11 rounded bordermodi");
                                recol6.css("background-color","#fff9e5d2");
                                
                                let rerow2 =$("<div>");
                                rerow2.attr("class","row");
                                
                                let recol7=$("<div>");
                                recol7.attr("class","col-12");
                                
                                let rerow3 =$("<div>");
                                rerow3.attr("class","row");
                                
                                let recol8=$("<div>");
                                recol8.attr("class","col-9");
                                
                                let rerow4 =$("<div>");
                                rerow4.attr("class","row");
                                
                                //대댓글 작성자
                                let recol9=$("<div>");
                                recol9.attr("class","col-12 writer");
                                recol9.text(resp[i].id);
                                let relogin_id = recol9.text();
                                //대댓글 날짜
                                let recol10=$("<div>");
                                recol10.attr("class","col-12");
                                recol10.text(resp[i].write_date);
                                recol10.css("font-size","11px");
                                
                                recol11=$("<div>");
                                recol11.attr("class","col-3 rebtn");
                                recol11.attr("value", resp[i].reply_re_seq);
                               
                                //대댓글 수정 버튼
                                rebtn2 =$("<button>");
                                rebtn2.html('<i class="fa-solid fa-pen-clip" ></i>')
                                rebtn2.attr("class","btn btn-outline-primary btn-sm opacity-100 remodify");
                                
//                                 rebtn2.css("background-color","white");
                                //대댓글 삭제 버튼
                                rebtn3=$("<button>");
                                rebtn3.html('<i class="fa-solid fa-trash"></i>');
                                rebtn3.attr("class","btn btn-outline-danger btn-sm redelete");
                                
                                
                                //대댓글 내용
                                let recol12=$("<div>");
                                recol12.attr("class","col-12 message m-0");
                                recol12.css("word-break","break-all");
                                recol12.css( "padding-right","30px");
                                recol12.text(resp[i].contents);
                                
                                //대댓글 수정하기
                                
                                
                                
                                let rebtn4;
                                let rebtn5
                                let thisrecol11;
                                $(rebtn2).on("click",function(){
                                   dummyremodify=$("#dummy").attr("modify");
                                   let btnview = $(this).closest(".padding").find("rebtn");
                                   
                                   
                                   thisrebtn3=$(this).siblings();
                                   thisrecol11=$(this).parent();
                                   thisbtn=$(this);
                                   thiscontents=$(this).parent().siblings()[1];

                                   thiswrap=$(this).closest(".hi").find(".remodify");
                                   thisborder=$(this).closest(".bordermodi");
                                   //댓글 하나의 대댓글 전체 수정 방지
                                   if(dummyremodify=='false'){
                                      
                                   $(this).css("display","none");
                                   thisrebtn3.css("display","none");
                                   thiswrap.attr("disabled",true);
                                   $(thiscontents).attr("contenteditable",true);
                                   thisborder.css("box-shadow","10px 5px 5px #dcdcdcd2");
                                   $(thiscontents).focus();
                                   
                                   
                                 
                                   //대댓글 수정 확인,취소버튼
                                   rebtn4 = $("<button>");
                                      rebtn4.attr("class","btn btn-outline-primary btn-sm reok");
                                      rebtn4.text("완료");
                                   rebtn5 = $("<button>");
                                      rebtn5.attr("class","btn btn-outline-danger btn-sm recancel");
                                      console.log('${loginID}');
                                      rebtn5.text("취소");
                             
                                      thisrecol11.append(rebtn4);
                                        thisrecol11.append(' ');
                                        thisrecol11.append(rebtn5);
                                      
                                      //대댓글 수정 완료
                                        $(rebtn4).on("click",function(){
                                        	let contents = $($(this).parent().siblings()[1]);
                                        	let the = $(this);
                                        	let thismodify =$($(this).siblings()[0]);
                                        	let thisdelete = $($(this).siblings()[1]);
                                        	let thiscancel = $($(this).siblings()[2]);
                                        	let thiswrap = $(this).closest(".hi").find(".remodify");
                                        	
                                        	console.log(thiswrap);
                                        	$.ajax({
                                        		url:"/reModify.reply",
                                        		data:{reply_re_seq:resp[i].reply_re_seq, replyContentModify:contents.text()  },
                                        		dataType:'json',
                                        		type:'POST'
                                        		  
                                        	}).done(function(resp){
                                        		contents.attr("contenteditable",false);
                                        		thismodify.css("display","inline-block");
                                        		thiswrap.attr("disabled",false);
                                        		thisdelete.css("display","inline-block");
                                        		thiscancel.remove();
                                        		the.remove();
//                                         		location.reload();  //수정 완료 누르면 새로고침
                                        	})
                                        	dummyremodify='false';
                                        })
                                        
                                        //대댓글 수정 취소
                                        $(rebtn5).on("click",function(){
                                        	  
                                        	let reply_re_seq =   $(this).parent().attr("value");
                                        	
                                        	
                                        	let modibtn = $($(this).siblings()[0]);
                                        	let delbtn = $($(this).siblings()[1])
                                        	  
                                        	
                                           let thisborder=$(this).closest(".bordermodi");
                                           let thiscontents=$(this).parent().siblings()[1];
                                           let reok =$($(this).siblings()[2]);
                                           let the = $(this);
                                          
                                           
                                        
                                           $.ajax({
                                        	   url:"/reReplyinfo.reply",
                                               type : 'POST',
                                               data : {reply_re_seq :reply_re_seq },
                                               dataType : 'json'
                                           }).done(function(resp){
													modibtn.css("display","inline-block");
                                          			delbtn.css("display","inline-block");
                                          			 $(thiscontents).attr("contenteditable",false);
                                          			$(".remodify").attr("disabled",false);
                                          			 reok.remove();
                                                     the.remove();
                                                     thisborder.css("box-shadow","");
                                        	   $(thiscontents).text(resp.contents);
                                           });
                                           
                                           
                                           dummyremodify=false;
                                        })
                                        
                                        dummyremodify='true';
                                   }
                                   
                                   else{
                                      $(this).css("display","inline-block");
                                      thisrebtn3.css("display","inline-block");
                                       
                                      dummyremodify='false';
                                   }
                                   
                                })
                                
                                
                                
                                
                                //대댓글 삭제하기
                                 $(rebtn3).on("click",function(){
                                     let del=  confirm('댓글을 삭제하시겠습니까?');
                                      if(del){
                                    
                                 let target2 = $(this).closest(".padding").parent();
                                    $.ajax({
                                       url:"/reDelete.reply",
                                       data:{reply_re_seq:resp[i].reply_re_seq },
                                       type:'POST',
                                       dataType:'json'
                                    }).done(function(resp){
                                       target2.remove();
                                    })
                                      }
                                 });
                                
                                
                                 recol4.append(rerow1);
                                rerow1.append(recol5);
                                rerow1.append(recol6);
                                recol6.append(rerow2);
                                rerow2.append(recol7);
                                recol7.append(rerow3);
                                rerow3.append(recol8);
                                recol8.append(rerow4);
                                rerow4.append(recol9);
                                rerow4.append(recol10);
                                rerow3.append(recol11);
                                
                                if(relogin_id=='${loginID}'){
                                recol11.append(rebtn2);
                                recol11.append(' ');
                                
                                }
                                if(${loginIsAdmin == 'Y'} || relogin_id=='${loginID}' ){
                                    recol11.append(rebtn3);
                                    }
                                
                                rerow3.append(recol12);
//                                 target1.append(recol4);

                                rereply.append(recol4)
                                
                                replyView=true;
                           }
                           
                           target1.append(rereply);
                           }else{
                                 the2.remove();
                              
                                   replyView = false;
                                }
                           
                        })
                        
                        
                        
                        
                     })
                     
                      let recol1;
                           let recol2;
                           let recol3;
                           let textarea;
                           let rebtn1;
                           let rerow5;
                     //대댓글 작성
                     $(btn5).on("click",function(){
                        
                         
                     if(replyOn==false){
                    let target = $($(this).parent().parent().parent().siblings()[2]);
                    
                    
                    rerow5=$("<div>");
                    rerow5.attr("class","row");
                    
                    
                    recol1 =$("<div>");
                    recol1.attr("class","col-1");
                    recol1.html('<i class="fa-solid fa-reply fa-rotate-180 "></i>');
                    recol1.css("display","inline-block");
                     
                    recol2 =$("<div>");
                    recol2.attr("class","col-10 text");
                    
                    
                    textarea = $("<textarea>");
                    textarea.attr("class","w-100 h-100 textarea")
                    
                    recol3 =$("<div>");
                    recol3.attr("class","col-1 p-0 text-center");
                    
                    rebtn1 =$("<button>");
                    rebtn1.attr("type","button");
                    rebtn1.attr("class","btn btn-primary btn-sm h-100 w-100")
                    rebtn1.css("padding","0px");
                      rebtn1.text("등록");
                    
                    
                    rerow5.append(recol1);
                    rerow5.append(recol2);
                    rerow5.append(recol3);
                    target.append(rerow5);
                       
                      
                       recol2.append(textarea);
                       recol3.append(rebtn1);
                       
                      replyOn = true;
                      //대댓글 등록
                   rebtn1.on("click",function(){
                      let the = $(this);
                      $.ajax({
                           url : '/reChatIN.reply',
                         type : 'POST',
                         data : {parent_seq :resp[i].reply_seq ,loginID:'${loginID}', reChatContents: $(this).parent().siblings(".text").children().val() },
                         dataType : 'json'
                  }).done(function(resp){
                      the.parent().siblings(".text").children().val(" ");
                      location.reload();
                      
                      
                      
                  });
                     });
                      
                      
                     }else if(replyOn==true){
                        recol1.remove();
                        recol2.remove();
                        recol3.remove();
                        rerow5.remove();
                        
                        textarea.off();
                          rebtn1.off();
                        replyOn=false;
                     }

              })
                     
           
                     
                     
                     
                     
                     
                     
                     
                     
                     if(my_id =='${loginID}'){
                      let btn1 = $("<button>");
                          btn1.html(' <i class="fa-solid fa-pen-clip"></i>');
                          btn1.attr("class","btn btn-outline-primary btn-sm modify");
                          btn1.attr("type","button");
                          
                      
                      let btn2 = $("<button>");
                          btn2.html('<i class="fa-solid fa-trash"></i>');
                          btn2.attr("class","btn btn-outline-danger btn-sm delete ");
                          btn2.attr("type","button");
                          
                        
                      
                    
                    
                      
                      
                      
                      
                      
                      
                      
                          //댓글 수정하기 
                          btn1.on("click",function(){
                             
                        	  let add =  $($(this).parent().parent().parent().siblings()[0]);
  							console.log(add);
  							add.css("border","2px solid #0d72ff");
                               //다른버튼 수정 막기    
                              $(".modify").attr("disabled",true);
                                 
                             
                              col6.attr("contenteditable","true");
                              col6.focus();
                              btn1.css("display","none");
                              btn2.css("display","none");
                              let btn3 =$("<button>");
                              btn3.text("완료");
                              btn3.attr("class","btn btn-outline-primary btn-sm finish");
                              btn3.attr("type","button");
                              btn3.css("padding-left","10px");
                              let btn4 =$("<button>");
                              btn4.text("취소");
                              btn4.attr("class","btn btn-outline-danger btn-sm ");
                              btn4.attr("type","button");
                              
                              col5.attr("value",resp[i].reply_seq);
                              
                              //수정취소 
                              btn4.on("click",function(){
                            	  $.ajax({
                            		  url:"/replyinfo.reply",
                            		   data:{reply_seq:col5.attr("value") },
                                       dataType:'json',
                                       type:'POST'
                            	  }).done(function(resp){
                            	       btn1.css("display","inline-block");
                                       btn2.css("display","inline-block");
                                       btn5.css("display","inline-block");
                                       btn3.css("display","none");
                                       btn4.css("display","none");
                                       col6.attr("contenteditable","false");
                                       col6.text(resp.contents);
                                       $(".modify").attr("disabled",false);
                                       add.css("border","0px solid black");
                            	  });
                            	  
                          
                              })
                              
                              //댓글 수정
                          btn3.on("click",function(){
							console.log(add);
                        	  add.css("border","0px solid black");
                             
                             $.ajax({
                                url:"/modify.reply",
                                data:{reply_seq:resp[i].reply_seq, replyContentModify:col6.text()},
                                dataType:'json',
                                type:'POST'
                                
                             }).done(function(resp){
                                btn1.css("display","inline-block");
                                  btn2.css("display","inline-block");
                                  btn5.css("display","inline-block");
                                  btn3.css("display","none");
                                  btn4.css("display","none");
                                  col6.attr("contenteditable","false");
                                  $(".modify").attr("disabled",false);
                                  
                             })
                          })
                              
                              
                                col5.append(btn3);
                              col5.append(' ');
                              col5.append(btn4);
                              
                             
                              
                              
                          })
                          
                          //댓글 삭제
                          btn2.on("click",function(){
                             let del=  confirm('댓글을 삭제하시겠습니까?');
                              if(del){

                            let delrow = btn2.parent().parent().parent().parent();
                            
                            $.ajax({
                               url:"/delete.reply",
                               data:{seq : resp[i].reply_seq},
                               type:'POST',
                               dataType : 'json'
                            }).done(function(resp){
                               delrow.remove();
                            })
                              }
                          });
                          
                          
                          col5.append(' ');
                          col5.append(btn1);
                          col5.append(' ');
                          col5.append(btn2);
                      }
                       
                      
       
                     row1.hide();
                     row1.fadeIn(2500);

                   
                   
                     
                     
                      $("#dummy").append(row1);
                      row1.append(col1);
                      col1.append(row2);
                      row2.append(col2);
                      col2.append(row3);

                      row3.append(col3);
                      row3.append(col4);


                      row2.append(col5);
                      row1.append(col6);
                      row1.append(col8);
                      row1.append(col7);
                      

                       
                      
          
                
                
             }             
             
  //         }
           

        })
          
    
       
       
        
        
        
        
        
     }

    
     
       
       
       
       
       
       

    </script>
    
    
    
</head>

<body id="body-pd">
    <header class="header" id="header" style="background-color:#f5f5f7">
        <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
        <div><a href="/board/communityMain.jsp" class="comuview"> 여행 커뮤니티</a></div>
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
							<a href="/goMyPage.mpg" class="nav_link"> <i class='bx bx-calendar nav_icon'></i> <span class="nav_name">일정관리</span> </a>
						</c:when>
		
						<c:otherwise>
							<a href="/goMyPage.mpg" class="nav_link" data-bs-toggle="modal" data-bs-target="#exampleModal"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">마이페이지</span> </a>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${loginIsAdmin == 'Y'}">
               				<a href="/adiminPage.admin" class="nav_link"> <i class='bx bx-hard-hat nav_icon'></i> <span class="nav_name">관리자페이지</span> </a>
                		</c:when>
                	
                		<c:otherwise>
							
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


<!-- 쪽지 Modal -->
<div class="modal fade" id="messageModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" >
        <h5 class="modal-title" id="exampleModalLabel">쪽지 보내기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	 
      	받는 사람 | <input type="text" placeholder="받는 사람 ID" id="modal_receiver" value="${dto.id}"><p></p><div id="checkReceiver"></div>
      	<input type="text" placeholder="제목을 입력하세요" id="modal_title" name="title" style="width:100%">
      	<p>
      		
      	</p>
      	
        <textarea style="width:100%; min-height:150px" placeholder="내용을 입력하세요" id="modal_msgContents"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="modal_sendmsg">보내기</button>
      </div>
    </div>
  </div>
</div>

<!-- <!-- 쪽지 Modal --> 
<!-- <div class="modal fade" id="messageModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"> -->
<!--   <div class="modal-dialog"> -->
<!--     <div class="modal-content"> -->
<!--       <div class="modal-header"> -->
<!--         <h5 class="modal-title" id="exampleModalLabel">쪽지 보내기</h5> -->
<!--         <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
<!--       </div> -->
<!--       <div class="modal-body"> -->
<!--       	받는 사람 | <input type="text" placeholder="받는 사람 ID"> -->
<!--       	<p> -->
      		
<!--       	</p> -->
      	
<!--         <textarea style="width:100%; min-height:150px" placeholder="내용을 입력하세요"></textarea> -->
<!--       </div> -->
<!--       <div class="modal-footer"> -->
<!--         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button> -->
<!--         <button type="button" class="btn btn-primary">보내기</button> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div> -->



    <!--Container Main start-->
    <div class="height-100 ">
        <div class="row width-100 dummy" ></div>
        
        <div class="row " id="contentsRow">
           
            <div class="col-12 p-0 border-bottom border-2 rounded h-100" id="contents">
                <div class="row border-bottom border-2 rounded h-100" id="conMenu">
<%--                     <div class="col-md-1 d-none d-md-block">${dto.all_board_seq}</div> --%>
                    <div class="col-12 col-md-12 ellipsis "  style="padding-left:15px" id="title">${dto.title}</div>
<!--                     <div class="col-1"  > -->
                    
<!--                     </div> -->
                    
                    <div class="col-3 col-md-3 ellipsis ididid" style="padding-left:8px;">
                    <i id="mesImg" class="fa-solid fa-envelope icon" data-bs-toggle="modal" data-bs-target="#messageModal"></i>&nbsp;&nbsp;${dto.id} </div>
                    
                    
                    <div class="col-9"><i class="fa-solid fa-calendar"></i>&nbsp;&nbsp;${dto.formdDate}</div>
                    <div class="col-3 " style="padding-left:8px;"><i class="fa-solid fa-eye"></i>&nbsp;&nbsp;${dto.view_count}</div>
                    <div class="col-9 like"><i class="fa-solid fa-thumbs-up"></i> &nbsp;&nbsp;${dto.like_count}</div>
                    <div class="col-6 filebox"  style="padding-left:8px;">첨부파일
                       <button type="button" class="btn btn-outline-primary btn-sm filebtn">보기</button>
                        
                       <div class="filelist text-center"  style="display:none;  padding-top:10px; padding-bottom: 10px; "></div>
                    </div>
                
                   <div class="col-12" id="dummy3" style="height: 10px;"></div>                     
                   
                </div>
                <div class="col-12 text-center" id="cont" style="padding:0px;">
                    <div class="row " id="contentsdummy" style="padding:0px;" >
                        <div class="col-12" id="contentsdummy2" style="padding-top: 40px;padding-bottom: 40px;padding-left: 0px;padding-right: 0px;">
                            ${dto.contents}
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-12"  id="heart" style="margin: auto;">

                <div class="col-6" id="ht" >
                    <div class="col-3" id="goodcol">
                        <i class="fa-solid fa-border fa-thumbs-up"></i>
                    </div>
                    <div class="col-3" id="jjimcol">
                        <i class="fa-solid fa-border fa-star"></i>
                    </div>
                </div>
        
                <div class="col-6" id="ht2" style="padding-top:8px;">
                    <c:if test="${loginID == dto.id }">
                    <button class="btn btn-primary " type="button" id="boardModi">수정</button>
                    </c:if>
                    <c:if test="${loginID == dto.id || loginIsAdmin == 'Y'}"> 
                    
                      <button class="btn btn-primary " type="button" id="boardDel">삭제</button>
                 </c:if> 
                 <button class="btn btn-primary " type="button" id="goList">목록</button>
                </div>
            
            <script>
            $("#goList").on("click",function(){
            	location.href="/goList.board?seq=${dto.all_board_seq}&cpage=${cpage}"
            	
            })
            
            </script>
            
            
                    </div>
                    <div class="row " id="count"  style="margin:auto">
                        
                        <div class="col-1" id="likecnt">
                            ${dto.like_count}
                        </div>
                     
                        <div class="col-1 text-center" id="jjimcnt" >
                           ${dto.jjim_count}
                        </div>
                        <div class="col-9"></div>
                    </div>
                    
                </div> 

                <br>


        <div class="col-12" id="message">
<%--          $("#message").text("댓글 ${reTotalCnt}개"); --%>
			댓글 ${reTotalCnt}개
        </div>

        <div class="row msg " >
            <div class="col-10 p-0">
               <textarea class="w-100 h-100 border border-2 rounded" id="chatContents"></textarea>
            </div>
            <div class="col-2  " style="text-align: center;">
                <button class="btn btn-primary h-100 " id="btn" type="button" style="padding:0px">등록</button>
            </div>
            
        </div>
        
        <div class="row dummy" id="dummy" modify="false"></div>
<!--         <footer class="mt-auto text-black-50" style="background-color:#f5f5f7"> -->
<!--         	<hr> -->
<!--         	<div class="row"> -->
<!--         		<div class="col-5" style=" text-align:right; "> -->
<!--         			<img src="/imgsrc/footerlogo2.png"> -->
<!--         		</div> -->
<!--         		<div class="col-7"> -->
<!--         			<div class="col-12"> -->
<!--         				프로젝트 쉼표 -->
<!--         			</div> -->
<!--         			<div class="col-12"> -->
<!--         				강석원 | 강정윤 | 박한길 | 어 현 | 임혜경 | 조양기 -->
<!--         			</div> -->
<!--         			<div class="col-12"> -->
<!--         				Designed by Catch the Java -->
<!--         			</div> -->
<!--         		</div> -->
<!--         	</div> -->
<!--         	<hr> -->
<!--         </footer> -->
        

<!-- jjim toast -->        
<div class="toast-container position-fixed bottom-0 end-0 p-3">
  <div id="liveToast1" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="/imgsrc/smlogo.png" class="rounded me-2" alt="...">
      <strong class="me-auto">쉼표 | 지친 일상에 쉼표를 찍다 </strong>
      <small>방금 전</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      좋아요가 등록되었습니다
    </div>
  </div>

  <div id="liveToast2" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="/imgsrc/smlogo.png" class="rounded me-2" alt="...">
      <strong class="me-auto">쉼표 | 지친 일상에 쉼표를 찍다 </strong>
      <small>방금 전</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      좋아요가 취소되었습니다
    </div>
  </div>
<!-- jjim toast -->  

<!-- heart toast -->
  <div id="liveToast3" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="/imgsrc/smlogo.png" class="rounded me-2" alt="...">
      <strong class="me-auto">쉼표 | 지친 일상에 쉼표를 찍다 </strong>
      <small>방금 전</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      찜이 등록되었습니다
    </div>
  </div>

  <div id="liveToast4" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="/imgsrc/smlogo.png" class="rounded me-2" alt="...">
      <strong class="me-auto">쉼표 | 지친 일상에 쉼표를 찍다 </strong>
      <small>방금 전</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      찜이 취소되었습니다
    </div>
  </div>
</div>
<!--  heart toast -->

<!-- login toast -->
	<div id="liveToast5" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="/imgsrc/smlogo.png" class="rounded me-2" alt="...">
      <strong class="me-auto">쉼표 | 지친 일상에 쉼표를 찍다 </strong>
      <small>방금 전</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      로그인되었습니다
    </div>
  </div>

  <div id="liveToast6" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="/imgsrc/smlogo.png" class="rounded me-2" alt="...">
      <strong class="me-auto">쉼표 | 지친 일상에 쉼표를 찍다 </strong>
      <small>방금 전</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      로그아웃되었습니다
    </div>
  </div>
</div>
<!-- login toast -->        
        <!-- 댓글  -->
        <script>
        //댓글 등록 버튼
        $("#btn").on("click",function(){
           if(${loginID == null}){
              alert("로그인이 필요합니다.");
              return false;
           }
           
           let parent_seq = "${dto.all_board_seq}";
           let chatContents = $("#chatContents").val();
           //댓글 테이블 삽입
           $.ajax({
              url : "/chat.board",
              type : "post",
              data : {parent_seq:parent_seq, chatContents:chatContents}
           }).done(function(resp){
//               $("#chatContents").val("");
//               $("#chatContents").focus();
              location.reload();
           })

        });
      
    </script>
    
        <div class="row dummy"></div>
    </div>
    
     <!--top 버튼-->
    <button onclick="topFunction()" id="myBtn" title="Go to top">↑</button>
    
    <!--Container Main end-->




    <script>
    
    $("#password-input").on("keyup",function(e){
        if(e.keyCode==13){
            $("#modal_loginBtn").click();
        }
    })
    
   //누르면 파일 펼치기
   let listExist = false;
   
   $(".filebtn").on("click",function(){
       let filelist = $(this).siblings();
       if(listExist==false){
           filelist.css("display","block");
//            listExist = true;
           
         $.ajax({
            url:"/f_list.file",
            data:{parent_seq:"${dto.all_board_seq}"},
            dataType:"json"
         }).done(function(resp){
               for(let i=0; i<resp.length; i++){
                  let fileDiv = $("<div>");
                  
                  let anker = $("<a>");
                  anker.attr("href","/f_download.file?ori_name="+resp[i].ori_name+"&sys_name="+resp[i].sys_name);
                  anker.text(resp[i].ori_name);
               
                  fileDiv.append(anker)
                  $(filelist).append(fileDiv);
               }
            })
         listExist=true;
           
       } else{
           filelist.css("display","none");
            $(filelist).children().remove();
           listExist = false;
       }
      
   })
   
   //좋아요 토스트
   	
   
    //좋아요
    let good = true;
   if(${isBoardGood!=null}){
      if(${isBoardGood==true}){
           $("#goodcol").css("color", "#0080ff" );
           $(".fa-thumbs-up").css("--fa-border-color","#0080ff");
           good=false;
      }
   }

    let gUpDown = 0;
	const toastLiveExample1 = document.getElementById('liveToast1');
	const toastLiveExample2 = document.getElementById('liveToast2');
	const toastLiveExample3 = document.getElementById('liveToast3');
	const toastLiveExample4 = document.getElementById('liveToast4');
	
    $("#goodcol").on("click", function () {
        if(${loginID == null}){
           alert("로그인이 필요합니다.");
           return false;
        }
        
        if (good) {
            $("#goodcol").css("color", "#0080ff");
            $(".fa-thumbs-up").css("--fa-border-color","#0080ff");
            good=false;
            const toast = new bootstrap.Toast(toastLiveExample1)

        	toast.show();
        } else {
            $("#goodcol").css("color", "#b1b1b1");
            $(".fa-thumbs-up").css("--fa-border-color","#b1b1b1");
            good=true;
            const toast = new bootstrap.Toast(toastLiveExample2)

        	toast.show();
        }

        if(good == false){
           gUpDown = 1;
        }else{
           gUpDown = 0;
        }
        
      $.ajax({
         url:"/goodClick.board",
         data:{
            seq:"${dto.all_board_seq}",
            upDown:gUpDown
         },
         dataType:"json"
      }).done(function(resp){
            console.log(resp.likeCount)//좋아요 갯수
            $("#likecnt").text(resp.likeCount);

            $(".like").html('<i class="fa-solid fa-thumbs-up"></i> &nbsp;&nbsp;'+resp.likeCount);
            
         }).fail(function(a, b){ 
            console.log(a);
            console.log(b);
         })
   
    })
    
    
    //heart-> 찜
    let heart = true;
    if(${isBoardJjim!=null}){
       if(${isBoardJjim==true}){
            $("#jjimcol").css("color", "#ffd000" );
            $(".fa-star").css("--fa-border-color","#ffd000");
          heart=false;
       }
    }
   let jUpDown = 0;
   	const toastTrigger = document.getElementById('jjimcol')
    $("#jjimcol").on("click", function () {
        if(${loginID == null}){
           alert("로그인이 필요합니다.");
           return false;
        }
       
        if (heart) {
            $("#jjimcol").css("color", "#ffd000" );
            $(".fa-star").css("--fa-border-color","#ffd000");
            heart=false;
            
            const toast = new bootstrap.Toast(toastLiveExample3)

        	toast.show();
        } else {
            $("#jjimcol").css("color", "#b1b1b1");
            $(".fa-star").css("--fa-border-color","#b1b1b1");
            heart=true;
            
            const toast = new bootstrap.Toast(toastLiveExample4)

        	toast.show();
        }
        
        if(heart == false){
           jUpDown = 1;
        }else{
           jUpDown = 0;
        }
        
      $.ajax({
         url:"/jjimClick.board",
         data:{
            seq:"${dto.all_board_seq}",
            upDown:jUpDown
         },
         dataType:"json"
      }).done(function(resp){
            console.log(resp.jjimCount)//좋아요 갯수
            $("#jjimcnt").text(resp.jjimCount);
         }).fail(function(a, b){ 
            console.log(a);
            console.log(b);
         })

        
    })


    
    //게시슬 수정
    $("#boardModi").on("click",function(){
       
       location.href = "/modiPage.board?cpage=${cpage}&seq=${dto.all_board_seq}";
       
    })
    
    
    
      //게시글 삭제
      $("#boardDel").on("click",function(){
         let del = confirm("해당 게시글을 삭제하시겠습니까?");
         if(del == true){
            location.href = "/delete.board?seq=${dto.all_board_seq}";
         }
      })
    

      
      //쪽지보내기
		$("#modal_sendmsg").on("click", function(){
			if($("#modal_receiver").val()==""){
				alert("받는 사람의 닉네임을 입력하세요.");
				$("#modal_receiver").focus();
				return false;
			}else if($("#modal_title").val()==""){
				alert("제목을 입력해주세요.");
				$("#modal_title").focus();
			}else if($("#modal_msgContents").val()==""){
				alert("내용을 입력해주세요.");
				$("#modal_msgContents").focus();
			}else{
		    	$.ajax({
		    		url:"sendMsg.mpg",
		    		type:"post",
		    		data:{
		    			receiver:$("#modal_receiver").val(),
		    			title:$("#modal_title").val(),
		    			contents:$("#modal_msgContents").val()
		    			},
		    		dataType:"json"
		    	}).done(function(resp){
		    		console.log(resp);
		    		if(resp==0){
		    			alert("존재하지 않는 닉네임입니다.");
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
   $("#modal_receiver").on("blur",function(){
		$.ajax({
		url:"/duplIDCheck.member",
		type:"get",
		data:{nickname:$("#modal_receiver").val()},
		dataType:"json"
		}).done(function(resp){
			if(resp==false){						
				$("#checkReceiver").text("존재하지 않는 닉네임입니다.");
				$("#checkReceiver").css({ color: "red" });
				
				$("#modal_sendmsg").attr("disabled", "disabled");
			}else if(resp==true){
				$("#checkReceiver").text("존재하는 닉네임입니다.");
				$("#checkReceiver").css({ color: "blue" });
				
				$("#modal_sendmsg").removeAttr("disabled");
			}
		});
	})

</script>
</body>

</html>