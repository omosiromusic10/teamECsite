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
//          300pxスクロールでscrollinが始動
            if (scroll > elemPos - windowHeight + 300){
                $(this).addClass('scrollin');
            }
        });
    });
});


$(function(){
    $(window).scroll(function (){
        $('.intro_title').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 300){
                $(this).addClass('scrollin2');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.BBQ1').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 300){
                $(this).addClass('scrollin3');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.BBQ2').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 300){
                $(this).addClass('scrollin4');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.BBQ3').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 300){
                $(this).addClass('scrollin5');
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

h3{
text-align:center;
border-bottom:1px solid black;
width:100%
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
.intro_title {
    margin:0 auto;
    opacity : 0;
    transform : translate(0, 50px);
    transition : all 2s;
}
.intro_title.scrollin2 {
    opacity : 1;
    transform : translate(0, 0);
}
.BBQ1 {
    margin:0 auto;
    opacity : 0;
    transform : translate(0, 50px);
    transition : all 2s;
}
.BBQ1.scrollin3 {
    opacity : 1;
    transform : translate(0, 0);
}
.BBQ2 {
    margin:0 auto;
    opacity : 0;
    transform : translate(0, 50px);
    transition : all 2s;
}
.BBQ2.scrollin4 {
    opacity : 1;
    transform : translate(0, 0);
}
.BBQ3 {
    margin:0 auto;
    opacity : 0;
    transform : translate(0, 50px);
    transition : all 2s;
}
.BBQ3.scrollin5 {
    opacity : 1;
    transform : translate(0, 0);
}

/* 内容 */

.BBQ1_img{
float:left;
height:250px;

}
.BBQ1_text{
padding-top:0px;
width:75%;
  float:left;
  text-aline:left;
  height:250px;
}
.BBQ2{
clear:both;
}
.BBQ2_text{
padding-top:0px;
width:75%;
  float:left;
  text-aline:left;
  height:250px;
}
.BBQ2_img{
float:left;
height:250px;
}


.BBQ3{
clear:both;
}
.BBQ3_img{
float:left;
height:250px;
}
.BBQ3_text{
padding-top:0px;
width:75%;
  float:left;
  text-aline:left;
  height:250px;
}

.space1{
  height:150px;
}

.space2{
clear:both;
  height:100px;
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
お好きなものをお好きな分だけお届けします。
<br>
</div>

<div class="space1"></div>

<!-- 提携BBQ場の紹介 -->
<div class="BBQ_spot_introduction">

<div class="intro_title">
<h2>提携BBQ場の紹介</h2>
GlanQでは3つのBBQ場と提携しており、食材を各BBQ場に送り完全手ぶらでBBQが楽しめます。<br>
タイプの異なる3つの中からお好きな場所を選んでいただけます。<br>

</div>

<div class="space1"></div>

<div class="BBQ1">
<h3>BBQ場1</h3>
<div class="BBQ1_img">
<img src="./images/sample.jpg" width="200" height="200" alt="">
</div>
<div class="BBQ1_text">
<p>内容</p>
<p>いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！</p>
<p>緑がいっぱい</p>
<p>いいとこー！いいとこー！</p>
</div>
</div>

<div class="space2"></div>

<div class="BBQ2">
<h3>BBQ場2</h3>
<div class="BBQ2_text">
<p>内容</p>
<p>川沿いですずしくて</p>
<p>いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！</p>
<p>いいとこー！いいとこー！</p></div>
<div class="BBQ2_img"><img src="./images/sample.jpg" width="200" height="200" alt=""></div>
</div>

<div class="space2"></div>


<div class="BBQ3">
<h3>BBQ場3</h3>
<div class="BBQ3_img"><img src="./images/sample.jpg" width="200" height="200" alt=""></div>
<div class="BBQ3_text">
<p>内容</p>
<p>駅近！</p>
<p>いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！</p>
<p>いいとこー！いいとこー！</p></div>
</div>

</div>

<!-- トップへ戻るボタン -->
<input type="button" value="トップへ" onclick="pagetop" class="pagetop">

	<s:include value="footer.jsp" />

</body>
</html>