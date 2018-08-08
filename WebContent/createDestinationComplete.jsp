<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>宛先情報完了</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="contents">
<h1>宛先情報完了画面</h1>

<!-- 完了画面表示 -->
<div class="success">
宛先情報の登録が完了しました。
</div>

<s:form action="SettlementConfirmAction">
		  <s:submit value="決済画面へ" class="submit_btn" />
</s:form>
</div>

<s:include value="footer.jsp"/>


</body>
</html>