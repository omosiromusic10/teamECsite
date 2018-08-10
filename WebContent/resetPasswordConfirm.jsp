<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>パスワード再設定確認</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="contents">
<h1>パスワード再設定確認画面</h1>
<s:form action="ResetPasswordCompleteAction">
	<table class="NewPassword-list">
	<tr>
		<th scope="row"><s:label value="ログインID"/></th>
		<td><s:property value="#session.loginId"/></td>
	</tr>
	<tr>
		<th scope="row"><s:label value="新しいパスワード"/></th>
		<td><s:property value="#session.concealedPassword"/></td>
	</tr>
	</table>
	<s:submit value="再設定" class="submit_btn" />
</s:form>
<!-- <p>前画面へ戻る場合は<a href='<s:url action="ResetPasswordAction"/>'>こちら</a></p> 仕様にないです -->
	</div>
<s:include value="footer.jsp"/>
</body>
</html>