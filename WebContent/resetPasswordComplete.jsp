<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<s:include value="footer.jsp"/>
</body>
</html>