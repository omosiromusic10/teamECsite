<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="3;URL='HomeAction'"/> <!-- 3秒後、自動的にホーム画面へ遷移 -->
<link rel="stylesheet" href="./css/style.css">
<title>パスワード再設定完了</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="contents">
	<h1>パスワード再設定完了画面</h1>
		パスワード再設定が完了しました。
</div>
	<!-- <p>Homeへ戻る場合は<a href='<s:url action="HomeAction"/>'>こちら</a></p>仕様にないです -->
	<h3>3秒後にホーム画面に戻ります。</h3>
<s:include value="footer.jsp"/>
</body>
</html>