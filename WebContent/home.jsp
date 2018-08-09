<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ホーム画面</title>
<!-- <link rel="stylesheet" href=".//css/style.css"> -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<!--    スライドの設定 -->
<script>
    $(document).ready(function(){
      $('.homeSlider').bxSlider({
    	  infinite:true,
    	  auto:true,
    	  arrows:false,
    	  mode:'fade',
    	  speed:1000,
    	  centermode:true
      });
    });
  </script>

<!--   仮のCSS -->
  <style type="text/css">
/* @keyframes title-animation{ */
/*   0%{width:300px; height:500px; background-color:green;} */
/*   50%{width:400px; height:400px; background-color:black;} */
/*   100%{width:500px; height:300px; background-color:blue;} */

/* } */

/* .title{ */
/*   width:300px ; height:500px ; background-color:gleen; */
/*     animation-name:title-animation; */
/*     animation-duration:3s; */
/*     animation-fill-mode:forwards; */
/*     animation-iteration-count:5; */
/*     animation-direction:alternate-reverse; */
/* } */




  </style>

</head>

<body>

<s:include value="header.jsp" />
	<div class="title"><h1>仮ホーム画面</h1></div>
	<p></p>

	<div id="main-contents">


<!-- 	大きくスライドを作る？？ -->

<!-- <ul class="homeSlider"> -->
<!-- <li><img title="画像" src="./images/sample.jpg" width="600" height="300"/></li> -->
<!-- <li><img title="画像" src="./images/sample.jpg" width="600" height="300"/></li> -->
<!-- <li><img title="画像" src="./images/sample.jpg" width="600" height="300"/></li> -->
<!-- </ul> -->
</div>






	<s:include value="footer.jsp" />

</body>
</html>