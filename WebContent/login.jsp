<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/login.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<title>ログイン</title>

<!-- 任意のHTMLタグで指定したIDにマッチするドキュメント要素を取得するメソッド -->
<script>
function goLoginAction() {
	document.getElementById("form").action = "LoginAction";
}
function goCreateUserAction() {
	document.getElementById("form").action = "CreateUserAction";
}
function goResetPasswordAction() {
	document.getElementById("form").action = "ResetPasswordAction";
}
</script>
</head>

<body>
<jsp:include page="header.jsp" />
<div id = "contents">
	<h1>ログイン画面</h1>
		<s:form action = "LoginAction" cssClass="form">

			<!-- もし、loginIdErrorMessageListが空でなかったら -->
			<s:if test = "!#session.loginIdErrorMessageList.isEmpty()">
				<div class = "error">
					<div class = "error-message">
						<!-- loginIdErrorMessageListの要素を画面に表示する -->
						<s:iterator value = "#session.loginIdErrorMessageList"><s:property /><br></s:iterator>
					</div>
				</div>
			</s:if>

			<!-- もし、passwordErrorMessageListが空でなかったら -->
			<s:if test = "!#session.passwordErrorMessageList.isEmpty()">
				<div class = "error">
					<div class = "error-message">
						<!-- passwordErrorMessageListの要素を画面に表示する -->
						<s:iterator value = "#session.passwordErrorMessageList"><s:property /><br></s:iterator>
					</div>
				</div>
			</s:if>

			<!-- もし、loginErrorMessageListが空でなかったら -->
			<s:if test="!#session.loginErrorMessageList.isEmpty()">
				<div class="error">
					<div class="error-message">
						<s:iterator value="#session.loginErrorMessageList"><s:property /><br></s:iterator>
					</div>
				</div>
			</s:if>

	      <div class="field name-box">
	      		<label class="defaultLabel">ログインID</label>
	      		<!-- セッションのsavedLoginIdにtrueが格納されていたら(ログインID保存にチェックが入っていたら)、 -->
	      		<s:if test = "#session.savedLoginId==true">
	      		<!-- ログインIDのテキストフィールドにセッションからloginIdを取得し表示させる -->
		        <s:textfield name="loginId" value="%{#session.saveId}" label="ログインID" class="txt" />
		        </s:if>

		        <s:else>
		        <s:textfield name="loginId" label="ログインID" placeholder="ログインID" class="txt" />
		        </s:else>
	      </div>

		<div class="field name-box">
	      		<label class="defaultLabel">パスワード</label>
		        <s:password name="password" label="パスワード" placeholder="パスワード" class="txt" />
	      </div>

			<div class = "box">
				<!-- セッションのsavedLoginIdにtrueが格納されていたら(ログインID保存にチェックが入っていたら)、 -->
				<s:if test = "#session.savedLoginId==true">
					<!-- チェックボックスにチェックが付いている状態にする -->
					<s:checkbox class = "checkbox" name = "savedLoginId" checked = "checked" />
				</s:if>
				<s:else>
					<s:checkbox class = "checkbox" name = "savedLoginId" />
				</s:else>
				<s:label value = "ログインID保存" /><br>
			</div>

			<div class = "submit_btn_box">
				<s:submit value = "ログイン" class = "submit_btn" onclick = "goLoginAction();" />
			</div>
		</s:form>

		<br>
		<div class = "submit_btn_box">
			<div id = ".contents-btn-set">
				<s:form action = "CreateUserAction">
					<s:submit value = "新規ユーザー登録" class = "submit_btn" />
				</s:form>
			</div>
		</div>

		<div class = "submit_btn_box">
			<div id = ".contents-btn-set">
				<s:form action = "ResetPasswordAction">
					<s:submit value = "パスワード再設定" class = "submit_btn" />
				</s:form>
			</div>
		</div>
</div>
<s:include value = "footer.jsp" />
<script type="text/javascript" src="./js/form.js"></script>
</body>
</html>