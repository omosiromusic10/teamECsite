<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<meta http-equiv="refresh" content="3;URL='HomeAction'"/> <!-- 3秒後、自動的にホーム画面へ遷移 -->
<title>決済完了画面</title>
</head>
<body>
<jsp:inclued page="header.jsp" />
<div id="contents">
<h1>決済完了画面</h1>
<div class="success">
<h1>決済が完了しました。</h1>
</div>
</div>

	<s:inclued value ="footer.jsp"/>

</body>
</html>