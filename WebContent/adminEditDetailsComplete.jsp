<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="3;URL='GoAdminAction'" />
<link rel = "stylesheet" href = "./css/style.css">
<title>商品更新登録完了</title>
</head>
<body>
<jsp:include page = "header.jsp" />
<div id = "contents">
	<h1>商品更新登録完了</h1>
		<div class = "success">
		商品情報の更新登録が完了しました。
		3秒後に管理ホームに戻ります。
		</div>
</div>
<div id="footer">
	<s:include value="footer.jsp"/>
</div>
</body>
</html>