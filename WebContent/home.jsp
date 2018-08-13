<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ホーム画面</title>

<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.2.3.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!--    スライドの設定 -->
<script>
$(document).ready(function(){
    $('.slider').bxSlider({
  	  auto:true,
  	  mode:'fade',
  	  speed:1000,
  	  infinite:true,
    });
  });

//pagetop
$(function() {
    var topBtn = $('.pagetop');
    topBtn.hide();
    $(window).scroll(function () {
    //スクロールが500に達したらボタン表示
    if ($(this).scrollTop() > 500) {
    //ボタンの表示方法
    topBtn.fadeIn();
    } else {
    //ボタンの非表示方法
    topBtn.fadeOut();
        } });
    //スクロールしてトップ
    topBtn.click(function () {
        $('body,  html').animate({
            scrollTop: 0
        },   500);
        return false;
    });
});


$(function(){
    $(window).scroll(function (){
        $('.concept').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 300){
                $(this).addClass('scrollin');
            }
        });
    });
});


$(function(){
    $(window).scroll(function (){
        $('.BBQ_spot_introduction').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 300){
                $(this).addClass('scrollin2');
            }
        });
    });
});

</script>

<style type="text/css">

 .concept{
   width:60%;
   text-align:center;
   margin:0 auto;
   font-size:20px;
 }

 .BBQ_spot_introduction{
   width:60%;
   text-align:center;
   margin:0 auto;
   font-size:20px;
 }

/* ページトップボタン */
.pagetop {
    position: fixed;
    bottom: 20px;
    right: 20px;
}

.pagetop:hover{
  opacity:0.5;
  }

/* BBQ場紹介 */
/* フェードインのための設定 */
.concept{
    margin:0 auto;
    opacity : 0;
    transform : translate(0, 50px);
    transition : all 2s;
}
.concept.scrollin {
    opacity : 1;
    transform : translate(0, 0);
}
.BBQ_spot_introduction {
    margin:0 auto;
    opacity : 0;
    transform : translate(0, 50px);
    transition : all 2s;
}
.BBQ_spot_introduction.scrollin2 {
    opacity : 1;
    transform : translate(0, 0);
}
/* 内容 */
.BBQ1{
border-top:1px solid black;
border-bottom:1px solid black;
float:left;
}
.BBQ1_text{
width:75%;
border-top:1px black solid;
  float:left;
  text-aline:left;
}
.BBQ2{
border-bottom:1px solid black;
clear:both;
}
.BBQ3{
border-bottom:1px solid black;
clear:both;
}
.text{
  color:red;
}
.space{
  height:150px;
}

</style>

</head>

<body>

<s:include value="header.jsp" />

<!-- 	大きくスライドを作る -->
	<ul class="slider">
		<li><img src="./images/sample.jpg" width="100%" height="600" alt="" ></li>
		<li><img src="./images/sample.jpg" width="100%" height="600" alt="" ></li>
		<li><img src="./images/sample.jpg" width="100%" height="600" alt="" ></li>
	</ul>

<div class="space"></div>



<!-- サイトコンセプト -->
<div class="concept">
<h2>GlanQとは？</h2>
<br>
GlanQとはGlamorousとBBQを併せた造語であり、それらの意味通り普段とは一風変わった<br>
華やかで魅惑的なBBQ体験を提供したいという思いが込められています。<br>
<br>
</div>

<div class="space"></div>

<!-- 提携BBQ場の紹介 -->
<div class="BBQ_spot_introduction">

<h2>提携BBQ場の紹介</h2>

<div class="BBQ1">
<h3>BBQ場1</h3>
<img src="./images/sample.jpg" width="200" height="150" alt="">
</div>
<div class="BBQ1_text">
<p>内容</p>
<p>いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！</p>
<p>いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！</p>
<p>いいとこー！いいとこー！</p>
</div>


<div class="BBQ2">
<h3>BBQ場2</h3>
<div class="BBQ2_text">内容</div>
<div class="BBQ2_img"><img src="./images/sample.jpg" width="200" height="150" alt=""></div>
</div>

<div class="BBQ3">
<h3>BBQ場3</h3>
<div class="BBQ3_img"><img src="./images/sample.jpg" width="200" height="150" alt=""></div>
<div class="BBQ3_text">内容</div>
</div>

</div>

<!-- トップへ戻るボタン -->
<input type="button" value="トップへ" onclick="pagetop" class="pagetop">

	<s:include value="footer.jsp" />

</body>
</html>