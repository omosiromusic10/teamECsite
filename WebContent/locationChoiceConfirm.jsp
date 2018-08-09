<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ロケーション場所確認</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<div id="contents">

    <h1>ロケーション場所確認画面</h1>

    <!-- 場所を確認し、完了にするのか場所を選択し直すのかボタンを追加する -->
    <!-- 以前から入っているsession情報を読み込ませ、内容を表示させる。 -->

    <s:form action="SettlementCompleteAction">
    <table>
    <tr>
    <td><!-- ここに画像を挿入 img src を用いて --></td>
    </tr>
    </table>
    <table>
    <s:if test="#session.parkName==1">
    <tr>
        <td>インターノウス株式会社</td>
    </tr>
    <tr>
        <td>Aバーベキュー場</td>
    </tr>
    <tr>
        <td>いんたーのうすかぶしきがいしゃ</td>
    </tr>
    <tr>
        <td>えーばーべきゅーじょう</td>
    </tr>
    <tr>
        <td>internousdev@test.com</td>
    </tr>
    <tr>
        <td>12345678900</td>
    </tr>
    <tr>
        <td>東京都千代田区三番町1-1 KY三番町ビル 1F</td>
    </tr>
    </s:if>
    <s:if test="#session.parkName==2">
    <tr>
        <td>インターノウス株式会社</td>
    </tr>
    <tr>
        <td>Aバーベキュー場</td>
    </tr>
    <tr>
        <td>いんたーのうすかぶしきがいしゃ</td>
    </tr>
    <tr>
        <td>えーばーべきゅーじょう</td>
    </tr>
    <tr>
        <td>internousdev@test.com</td>
    </tr>
    <tr>
        <td>12345678900</td>
    </tr>
    <tr>
        <td>東京都千代田区霞ヶ関3-6-15</td>
    </tr>
    </s:if>
    <s:if test="#session.parkName==3">
    <tr>
        <td>インターノウス株式会社</td>
    </tr>
    <tr>
        <td>Aバーベキュー場</td>
    </tr>
    <tr>
        <td>いんたーのうすかぶしきがいしゃ</td>
    </tr>
    <tr>
        <td>えーばーべきゅーじょう</td>
    </tr>
    <tr>
        <td>internousdev@test.com</td>
    </tr>
    <tr>
        <td>12345678900</td>
    </tr>
    <tr>
        <td>東京都千代田区三番町1-1 KY三番町ビル 1F</td>
    </tr>

    <tr>
        <td>東京都千代田区三番町1-1 KY三番町ビル 1F</td>
    </tr>
    </s:if>

    <s:submit value="決済"/>

    </table>
    </s:form>

<h2>やり直したい方はこちら</h2>
    <s:form action="LocationChoiceAction">
    <s:submit value="場所選択画面へ"/>
    </s:form>

</div>

<s:include value="footer.jsp"/>
</body>
</html>