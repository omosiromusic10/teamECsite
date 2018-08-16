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
<link rel="stylesheet" href="./css/home.css">
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
 	  pager:false,
  	  controls:false,

    });
  });




$(function(){
    $(window).scroll(function (){
        $('.concept').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
//          300pxスクロールでscrollinが始動
            if (scroll > elemPos - windowHeight + 250){
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
            if (scroll > elemPos - windowHeight + 250){
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
            if (scroll > elemPos - windowHeight + 250){
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
            if (scroll > elemPos - windowHeight + 250){
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
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollin5');
            }
        });
    });
});

//左サイド
$(function(){
    $(window).scroll(function (){
        $('.left1').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime1');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left2').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime2');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left3').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime3');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left4').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime4');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left5').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime5');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left6').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime6');
            }
        });
    });
});
$(function(){
    $(window).scroll(function (){
        $('.left7').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime7');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left8').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime8');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left9').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime9');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left10').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime10');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.left11').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime11');
            }
        });
    });
});
// 右サイド
$(function(){
    $(window).scroll(function (){
        $('.right1').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime12');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right2').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime13');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right3').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime14');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right4').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime15');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right5').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime16');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right6').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime17');
            }
        });
    });
});
$(function(){
    $(window).scroll(function (){
        $('.right7').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime18');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right8').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime19');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right9').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime20');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right10').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime21');
            }
        });
    });
});

$(function(){
    $(window).scroll(function (){
        $('.right11').each(function(){
            var elemPos = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > elemPos - windowHeight + 250){
                $(this).addClass('scrollanime22');
            }
        });
    });
});

</script>
</head>

<body>

<s:include value="header.jsp" />

<div id="wrapper">
<!-- 	大きくスライドを作る -->
	<ul class="slider">
		<li><img src="./images/yakiniku3.jpg"  height="600" alt="" ></li>
		<li><img src="./images/yakiniku2.jpg"  height="600" alt="" ></li>
		<li><img src="./images/yakiniku1.jpg"  height="600" alt="" ></li>
	</ul>

<div class="space1"></div>

<div class="left">
<div class="left1"></div><div class="space1"></div>
<div class="left2"></div><div class="space1"></div>
<div class="left3"></div><div class="space1"></div>
<div class="left4"></div><div class="space1"></div>
<div class="left5"></div><div class="space1"></div>
<div class="left6"></div><div class="space1"></div>
<div class="left7"></div><div class="space1"></div>
<div class="left8"></div><div class="space1"></div>
<div class="left9"></div><div class="space1"></div>
<div class="left10"></div><div class="space1"></div>
<div class="left11"></div><div class="space1"></div>
<div class="left11"></div><div class="space1"></div>
<div class="left11"></div><div class="space1"></div>
</div>

<div class="center">
<!-- サイトコンセプト -->
<div class="concept">
<h2>GlanQとは？</h2>
<br>
GlanQとはGlamorousとBBQを併せた造語であり、<br>
それらの意味通り普段とは一風変わった<br>
「華やかで魅惑的なBBQ体験を提供したい」<br>という思いが込められています。<br>
お好きなものをお好きな分だけお届けします。
<br>
</div>

<div class="space1"></div>

<!-- 提携BBQ場の紹介 -->
<div class="BBQ_spot_introduction">

<div class="intro_title">
<h2>提携BBQ場の紹介</h2>
<br>
GlanQでは3つのBBQ場と提携しており、<br>食材を各BBQ場に送り完全手ぶらでBBQが楽しめます。<br>
タイプの異なる3つの中から場所をお選びいただけます。<br>

</div>

<div class="space1"></div>

<div class="BBQ1">
<h3>BBQ場1</h3>
<div class="BBQ1_img">
<img src="./images/basyo1.jpg" width="200" height="200" alt="">
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
<div class="BBQ2_img"><img src="./images/basyo2.jpg" width="200" height="200" alt=""></div>
</div>

<div class="space2"></div>


<div class="BBQ3">
<h3>BBQ場3</h3>
<div class="BBQ3_img"><img src="./images/basyo3.jpg" width="200" height="200" alt=""></div>
<div class="BBQ3_text">
<p>内容</p>
<p>駅近！</p>
<p>いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！いいとこー！</p>
<p>いいとこー！いいとこー！</p></div>
</div>

</div>

</div>



<div class="right">
<div class="right1"></div><div class="space1"></div>
<div class="right1"></div><div class="space1"></div>
<div class="right2"></div><div class="space1"></div>
<div class="right3"></div><div class="space1"></div>
<div class="right4"></div><div class="space1"></div>
<div class="right5"></div><div class="space1"></div>
<div class="right6"></div><div class="space1"></div>
<div class="right7"></div><div class="space1"></div>
<div class="right8"></div><div class="space1"></div>
<div class="right9"></div><div class="space1"></div>
<div class="right10"></div><div class="space1"></div>
<div class="right11"></div><div class="space1"></div>
<div class="right11"></div><div class="space1"></div>
</div>


</div>


	<s:include value="footer.jsp" />

</body>
</html>