<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="3;URL='GoAdminAction'"/>
<!-- 3秒後に管理者ホーム画面に戻るよう指示。 -->
<title>商品登録官僚</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="contents">
<h1>商品登録完了画面</h1>
<div class="success">
<div>
    <img class="kusa" src="images/kusa.svg">
    <img class="ushi" src="images/ushi.svg">
    <img class="kusa" src="images/kusa.svg">
</div>
<p>
商品情報の登録が完了しました。<br>
3秒後に管理ホームに戻ります。
</p>
</div>

<s:include value="footer.jsp" />

</div>
</body>
</html>