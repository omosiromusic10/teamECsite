<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>パスワード再設定</title>
</head>
<body>
<h1>パスワード再設定画面</h1>
<div id="contents">
<jsp:include page="header.jsp"/>

	<s:form action="ResetPasswordConfirmAction">
		<table class="vertical-list-table">
			<tr>
				<td>
					<s:if test="!#session.loginIdErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.loginIdErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>
				</td>
			</tr>
			<tr>
				<th scope="row"><s:label value="ログインID"/></th>
				<td><s:textfield name="loginId" placeholder="ログインID" class="txt"/></td>
			</tr>
			<tr>
				<td>
					<s:if test="!#session.passwordErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.passwordErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>
				</td>
			</tr>
			<tr>
				<td>
					<s:if test="!#session.passwordIncorrectErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.passwordIncorrectErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>
				</td>
			</tr>
			<tr>
				<th scope="row"><s:label value="パスワード"/></th>
				<td><s:password name="password" placeholder="パスワード" class="txt"/></td>
			</tr>
			<tr>
				<td>
					<s:if test="!#session.newPasswordErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.newPasswordErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>
				</td>
			</tr>
			<tr>
				<td>
					<s:if test="!#session.newPasswordIncorrectErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.newPasswordIncorrectErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>
				</td>
			</tr>
			<tr>
				<th scope="row"><s:label value="新しいパスワード"/></th>
				<td><s:password name="newPassword" placeholder="新しいパスワード" class="txt"/></td>
			</tr>
			<tr>
				<td>
					<s:if test="!#session.reConfirmationNewPasswordErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.reConfirmationNewPasswordErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>
				</td>
			</tr>
			<tr>
				<th scope="row"><s:label value="確認用パスワード"/></th>
				<td><s:password name="reConfirmationPassword" placeholder="確認用" class="txt"/></td>
			</tr>
		</table>
		<s:submit value="パスワード再設定" class="submit_btn"/>
	</s:form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>