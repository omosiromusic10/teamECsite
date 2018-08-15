<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/createUser.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>パスワード再設定</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>パスワード再設定画面</h1>
<div id="contents">

	<!-- テーブルで表示予定
	だったんですけどね・・・ -->



					<s:if test="!#session.loginIdErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.loginIdErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>




					<s:if test="!#session.passwordErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.passwordErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>

					<s:if test="!#session.passwordIncorrectErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.passwordIncorrectErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>



					<s:if test="!#session.newPasswordErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.newPasswordErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>

					<s:if test="!#session.newPasswordIncorrectErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.newPasswordIncorrectErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>

					<s:if test="!#session.reConfirmationNewPasswordErrorMessageList.isEmpty()">
						<div class="error">
						<div class="error-message">
						<s:iterator value="#session.reConfirmationNewPasswordErrorMessageList"><s:property />
						<br></s:iterator>
						</div>
						</div>
					</s:if>

<section>

    <s:form action="ResetPasswordConfirmAction" cssClass="form">

	      <div class="field name-box">
	      		<label class="defaultLabel">ログインID</label>
		        <s:textfield name="loginId"  label="ログインID" placeholder="ログインID" class="txt" />
        		<label class="accordion">半角英数字 1文字以上8文字以下</label>
		        <span class="nice">Nice!</span>
	      </div>

	      <div class="field name-box">
	      		<label class="defaultLabel">パスワード</label>
		        <s:password name="password"  label="パスワード" placeholder="パスワード" class="txt" />
        		<label class="accordion">半角英数字 1文字以上16文字以下</label>
		        <span class="nice">Nice!</span>
	      </div>

	      <div class="field name-box">
	      		<label class="defaultLabel-mini">新しい<br>パスワード</label>
		        <s:password name="newPassword"  label="新しいパスワード" placeholder="新しいパスワード" class="txt" />
        		<label class="accordion">半角英数字 1文字以上16文字以下</label>
		        <span class="nice">Nice!</span>
	      </div>

	      <div class="field name-box">
	      		<label class="defaultLabel-mini">新しい<br>パスワード(確認用)</label>
		        <s:password name="reConfirmationPassword"  label="新しいパスワード(確認用)" placeholder="新しいパスワード(確認用)" class="txt" />
        		<label class="accordion">半角英数字 1文字以上16文字以下</label>
		        <span class="nice">Nice!</span>
	      </div>

					<div class="submit_btn_box">
						<div id=".contents-btn-set">
							<s:submit value="登録" />
						</div>
					</div>

			</s:form>

		</section>

</div>
<jsp:include page="footer.jsp"/>
	<script type="text/javascript" src="./js/form.js"></script>
</body>
</html>