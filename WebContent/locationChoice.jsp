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

  <!-- とりあえずで作ったからレイアウトは許してほしい -->

  <div>
  <s:form action="LocationChoiceConfirmAction">
      <s:hidden name="parkId" value="1"/>
      <!-- submitボタン -->
      <!-- 画面実装でimgタブで囲むことで、画像クリックでBBQ場の選択ができるようになる...はず -->
      <s:submit value="Aバーベキュー場"/>
      <table>
          <tr>
              <td>会場名</td>
              <td>Aバーベキュー場</td>
          </tr>
          <tr>
              <td>会場名かな</td>
              <td>えーばーべきゅーじょう</td>
          </tr>
          <tr>
              <td>会社名</td>
              <td>インターノウス株式会社</td>
          </tr>
          <tr>
              <td>会社名かな</td>
              <td>いんたーのうすかぶしきがいしゃ</td>
          </tr>
          <tr>
              <td>メールアドレス</td>
              <td>internousdev@test.com</td>
          </tr>
          <tr>
              <td>電話番号</td>
              <td>12345678900</td>
          </tr>
          <tr>
              <td>住所</td>
              <td>東京都千代田区三番町1-1 KY三番町ビル 1F</td>
          </tr>
      </table>
  </s:form>
  </div>
  <div>
  <s:form action="LocationChoiceConfirmAction">
      <s:hidden name="parkId" value="2"/>
      <!-- submitボタン -->
      <!-- 画面実装でimgタブで囲むことで、画像クリックでBBQ場の選択ができるようになる...はず -->
      <s:submit value="Bバーベキュー場"/>
      <table>
          <tr>
              <td>会場名</td>
              <td>Bバーベキュー場</td>
          </tr>
          <tr>
              <td>会場名かな</td>
              <td>びーばーべきゅーじょう</td>
          </tr>
          <tr>
              <td>会社名</td>
              <td>インターノウス株式会社</td>
          </tr>
          <tr>
              <td>会社名かな</td>
              <td>いんたーのうすかぶしきがいしゃ</td>
          </tr>
          <tr>
              <td>メールアドレス</td>
              <td>internousdev@test.com</td>
          </tr>
          <tr>
              <td>電話番号</td>
              <td>12345678900</td>
          </tr>
          <tr>
              <td>住所</td>
              <td>東京都千代田区三番町1-1 KY三番町ビル 1F</td>
          </tr>
      </table>
  </s:form>
  </div>
  <div>
  <s:form action="LocationChoiceConfirmAction">
      <s:hidden name="parkId" value="3"/>
      <!-- submitボタン -->
      <!-- 画面実装でimgタブで囲むことで、画像クリックでBBQ場の選択ができるようになる...はず -->
      <s:submit value="Cバーベキュー場"/>
      <table>
          <tr>
              <td>会場名</td>
              <td>Cバーベキュー場</td>
          </tr>
          <tr>
              <td>会場名かな</td>
              <td>しーばーべきゅーじょう</td>
          </tr>
          <tr>
              <td>会社名</td>
              <td>インターノウス株式会社</td>
          </tr>
          <tr>
              <td>会社名かな</td>
              <td>いんたーのうすかぶしきがいしゃ</td>
          </tr>
          <tr>
              <td>メールアドレス</td>
              <td>internousdev@test.com</td>
          </tr>
          <tr>
              <td>電話番号</td>
              <td>12345678900</td>
          </tr>
          <tr>
              <td>住所</td>
              <td>東京都千代田区三番町1-1 KY三番町ビル 1F</td>
          </tr>
      </table>
  </s:form>
  </div>

</div>
<!-- フッターをインクルード -->
<jsp:include page="footer.jsp" />
</body>
</html>