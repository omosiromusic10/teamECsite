<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>locationChoice</title>
</head>
<body>
<!-- ヘッダーをインクルード -->
<jsp:include page="header.jsp" />

<div id="contents">

  <h1>locationChoice画面</h1>

  <!-- 画像をクリックすると、対応したBBQ場が宛先としてデータベースに保存されるようにする -->
  <!-- jspにBBQ場の情報を記述して、DestinationInfoDAOの新規登録と同じメソッドでMySQLに登録 -->
  <!-- とりあえず機能を確かめるために画像ではなくボタンで送信することにする -->
  <!-- 同じテーブルで扱うため、便宜的に姓を会社名、名をBBQ場の名前とする -->

  <div>
  <s:form name="LocationChoiceCompleteAction">
      <!-- 姓 -->
      <s:hidden name="familyName" value="インターノウス株式会社"/>
      <!-- 名 -->
      <s:hidden name="firstName" value="Aバーベキュー場"/>
      <!-- 姓かな -->
      <s:hidden name="familyNameKana" value="いんたーのうすかぶしきがいしゃ"/>
      <!-- 名かな -->
      <s:hidden name="firstNameKana" value="えーばーべきゅーじょう"/>
      <!-- メールアドレス -->
      <s:hidden name="email" value="internousdev@test.com"/>
      <!-- 電話番号 -->
      <s:hidden name="telNumber" value="12345678900"/>
      <!-- 住所 -->
      <s:hidden name="userAdress" value="東京都千代田区三番町1-1 KY三番町ビル 1F"/>

      <!-- submitボタン -->
      <s:submit value="Aバーベキュー場"/>
  </s:form>
  </div>
  <div>
  </div>
  <div>
  </div>


</div>
<!-- フッターをインクルード -->
<jsp:include page="footer.jsp" />
</body>
</html>