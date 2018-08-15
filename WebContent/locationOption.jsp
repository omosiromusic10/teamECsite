<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>locationOption</title>
<link rel="stylesheet" type="text/css" href="css/location.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="./js/test.js"></script>
</head>
<body>
<!-- ヘッダーをインクルード -->
<jsp:include page="header.jsp" />

<div id="contents">

  <h1>locationOption画面</h1>

  <!-- 自宅に配送かBBQ場に配送かを選ぶ -->
  <!-- 自宅を選択した場合、SettlementConfirmActionに飛ぶ   -->
  <!-- BBQ場を選択した場合、LocationChoiceActionに飛ぶ -->

  <p>自宅に配送するか、提携しているBBQ場へ直接配送するかを選択できます。</p>

  <figure>
    <div class="image"><img src="./images/zitaku.jpg" /></div>
    <figcaption>

      <s:form action="SettlementConfirmAction">
        <s:submit value="BBQ" type="image" src="./images/zitaku_overray.jpg"/>
      </s:form>

     <p>testtesttest</p>
    </figcaption>
  </figure>

  <!--
  <div id="image_btn_container">
    <div class="img_button">

      <s:form action="SettlementConfirmAction">

	    <s:submit value="自宅" class="button_img" type="image" src="./images/zitaku.jpg">
	        <div class="mask">
	            <div class="caption">自宅へ配送</div>
	        </div>
	    </s:submit>

	  </s:form>

	</div>
-->
<!--
	<div class="img_button">

      <s:form action="LocationChoiceAction">

	    <s:submit value="BBQ場" class="button_img" type="image" src="./images/bbqzyo_btn.jpg"/>

	  </s:form>
	  <div class="mask">
	    <div class="caption">BBQ場へ発送</div>
	  </div>
	</div>
 -->
    <div class="myimage">
      <s:submit value="BBQ場" class="alt_text" type="image" src="./images/bbqzyo_btn.jpg"/>
    </div>

	<div id="image_btn_container">
    <s:form action="LocationChoiceAction">
	  <s:submit value="BBQ場" class="image_submit_btn" type="image" src="./images/bbqzyo_btn.jpg"/>
    </s:form>
    </div>

  </div>

<!--
</div>
 -->
<!-- フッターをインクルード -->
<jsp:include page="footer.jsp" />
</body>
</html>