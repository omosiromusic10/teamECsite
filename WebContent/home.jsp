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
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!--    スライドの設定 -->
<script>
$(document).ready(function(){
    $('.slider').bxSlider({
  	  auto:true,
  	  mode:'fade',
  	  speed:1000,
  	  infinite:true,
  	  controls:none

    });
  });
</script>

</head>

<body>

<s:include value="header.jsp" />

<!-- 	大きくスライドを作る -->
	<ul class="slider">
		<li><img src="./images/yakiniku1.jpg" width="980" height="500" alt="" ></li>
		<li><img src="./images/yakiniku1.jpg" width="980" height="500" alt=""></li>
		<li><img src="./images/yakiniku1.jpg" width="980" height="500" alt=""></li>
		<li><img src="./images/yakiniku1.jpg" width="980" height="500" alt=""></li>
		<li><img src="./images/yakiniku1.jpg" width="980" height="500" alt=""></li>
	</ul>




<!-- サイトコンセプト -->
<h1>GlanQとは？</h1>



<!-- 提携BBQ場の紹介 -->
<h1>提携BBQ場の紹介</h1>
<div class="BBQ1">
<h2>BBQ場1</h2>

</div>

<div class="BBQ2">
<h2>BBQ場2</h2>

</div>

<div class="BBQ3">
<h2>BBQ場3</h2>

</div>

	<s:include value="footer.jsp" />

</body>
</html>