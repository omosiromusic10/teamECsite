<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="./css/glanq.css">
		<meta http-equiv="refresh" content="3;URL='HomeAction'" />
		<title>登録完了</title>
	</head>
	<body>

	<jsp:include page="header.jsp" />
		<div id="contents">
			<h1>登録完了画面</h1>
			<div class="success">
			<div>
            	<img class = "kusa" src= "images/kusa.svg">
            	<img class = "ushi" src= "images/ushi.svg">
            	<img class = "kusa" src= "images/kusa.svg">
        	</div>
				<p>ユーザー登録が完了しました。</p>
			</div>
		</div>
	
			<s:include value="footer.jsp" />
	

	</body>
</html>