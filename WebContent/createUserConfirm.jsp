<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="./css/glanq.css">
		<title>登録内容確認</title>
	</head>
	<body>

		<jsp:include page="header.jsp" />

		<h3>登録内容確認画面</h3>

		<s:form action="CreateUserCompleteAction">
			<table>
				<tr>
					<th scope="row"><s:label value="姓" /></th>
					<td><s:property value="familyName" /></td>
				</tr>

				<tr>
					<th scope="row"><s:label value="名" /></th>
					<td><s:property value="firstName" /></td>
				</tr>

				<tr>
					<th scope="row"><s:label value="姓ふりがな" /></th>
					<td><s:property value="familyNameKana" /></td>
				</tr>

				<tr>
					<th scope="row"><s:label value="名ふりがな" /></th>
					<td><s:property value="firstNameKana" /></td>
				</tr>

				<tr>
					<th scope="row"><s:label value="性別" /></th>
					<td><s:property value="sex" /></td>
				</tr>



			</table>

		</s:form>

	</body>
</html>