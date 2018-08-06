<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="./css/glanq.css">
		<title>ユーザー情報入力</title>
	</head>
	<body>

		<!-- ヘッダー -->
		<jsp:include page="header.jsp" />

		<h3>ユーザー情報入力画面</h3>


		<!-- エラーメッセージがあれば表示したい -->
		<!-- まず姓 -->
		<s:if test="!#session.familyNameErrorMessageList.isEmpty()">
			<s:iterator value="#session.familyNameErrorMessageList"><s:property /><br></s:iterator>
		</s:if>

		<!-- 名 -->
		<s:if test="!#session.firstNameErrorMessageList.isEmpty()">
			<s:iterator value="#session.firstNameErrorMessageList"><s:property /><br></s:iterator>
		</s:if>

		<!-- 姓かな -->
		<s:if test="!#session.familyNameKanaErrorMessageList.isEmpty()">
			<s:iterator value="#session.familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
		</s:if>

		<!-- 名かな -->
		<s:if test="!#session.firstNameKanaErrorMessageList.isEmpty()">
			<s:iterator value="#session.firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
		</s:if>

		<!-- メールアドレス -->
		<s:if test="!#session.emailErrorMessageList.isEmpty()">
			<s:iterator value="#session.emailErrorMessageList"><s:property /><br></s:iterator>
		</s:if>

		<!-- ログインID -->
		<s:if test="!#session.loginIdErrorMessageList.isEmpty()">
			<s:iterator value="#session.loginIdErr"></s:iterator>
		</s:if>

		<!-- パスワード -->
		<s:if test="!#session.passwordErrorMessageList.isEmpty()">
			<s:iterator value="#session.passwordErrorMessageList"><s:property /><br></s:iterator>
		</s:if>



		<!-- ここから送信フォーム -->
		<s:form action="CreateUserConfirmAction">
			<table>
				<tr>
					<th scope="row">姓</th>
					<td><s:textfield name="familyName" value="%{#session.familyName}" label="姓" placeholder="姓" /></td>
				</tr>

				<tr>
					<th scope="row">名</th>
					<td><s:textfield name="firstName" value="%{#session.firstName}" label="名" placeholder="名" /></td>
				</tr>

				<tr>
					<th scope="row">姓ふりがな</th>
					<td><s:textfield name="familyNameKana" value="%{#session.familyNameKana}" label="姓ふりがな" placeholder="姓ふりがな" /></td>
				</tr>

				<tr>
					<th scope="row">名ふりがな</th>
					<td><s:textfield name="firstNameKana" value="%{#session.firstNameKana}" label="名ふりがな" placeholder="名ふりがな" /></td>
				</tr>

				<tr>
					<th scope="row">性別</th>
					<td><s:checkbox name="sex" list="%{#session.sexList}" value="%{#session.sexList}" label="性別" placeholder="性別" /></td>
				</tr>

				<tr>
					<th scope="row">メールアドレス</th>
					<td><s:textfield name="email" value="%{#session.email}" label="メールアドレス" placeholder="メールアドレス" /></td>
				</tr>

				<tr>
					<th scope="row">ログインID</th>
					<td><s:textfield name="loginId" value="%{#session.loginId}" label="ログインID" placeholder="ログインID" /></td>
				</tr>

				<tr>
					<th scope="row">パスワード</th>
					<td><s:textfield name="password" value="%{#session.password}" label="パスワード" placeholder="パスワード" /></td>
				</tr>

				<!-- sessionないに格納された情報を表示
					すでに入力された情報があり、入力エラーなどでこのページに戻された際に
					再度入力する手間を省く -->

				<s:submit value="登録" />

			</table>

		</s:form>

		<s:include value="footer.jsp" />

	</body>
</html>