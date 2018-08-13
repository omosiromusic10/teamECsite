<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ロケーション場所確認</title>
<link rel="stylesheet" type="text/css" href="css/location.css"/>
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

    <tr>
        <td><s:property value="familyName"/></td>
    </tr>
    <tr>
        <td><s:property value="firstName"/></td>
    </tr>
    <tr>
        <td><s:property value="familyNameKana"/></td>
    </tr>
    <tr>
        <td><s:property value="firstNameKana"/></td>
    </tr>
    <tr>
        <td><s:property value="email"/></td>
    </tr>
    <tr>
        <td><s:property value="telNumber"/></td>
    </tr>
    <tr>
        <td><s:property value="userAddress"/></td>
    </tr>



    <s:hidden name="id" value="%{parkId}"/>

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