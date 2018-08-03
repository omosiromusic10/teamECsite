<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>宛先情報入力</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="contents">
<h1>宛先情報入力画面</h1>
<!--  姓入力エラー -->
<s:if test="!#session.familyNameErrorMessageList.isEmpty()">
    <div class="error">
        <div class="error-message">
            <s:iterator value="#session.familyNameErrorMessageList"><s:property /><br></s:iterator>
        </div>
    </div>
</s:if>
<!-- 名前入力エラー -->
<s:if test="!#session.firstNameErrorMessageList.isEmpty()">
     <div class="error">
         <div class="error-message">
             <s:iterator value="#session.firstNameErrorMessageList"><s:property /><br></s:iterator>
         </div>
     </div>
</s:if>
<!-- 姓かな入力エラー -->
<s:if test="!#session.familyNamekanaErrorMessageList.isEmpty()">
     <div class="error">
         <div class="error-message">
             <s:iterator value="#session.familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
         </div>
     </div>
</s:if>
<!-- 名前かな入力エラー -->
<s:if test="!#session.firstNameKanaErrorMessageList.isEmpty()">
     <div class="error">
         <div class="error-message">
             <s:iterator value="#session.firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
         </div>
     </div>
</s:if>
<!-- メールアドレス入力エラー -->
<s:if test="!#session.emailErrorMessageList.isEmpty()">
     <div class="error">
          <div class="error-message">
              <s:iterator value="#session.emailErrorMessageList"><s:property /><br></s:iterator>
          </div>
     </div>
</s:if>
<!-- 電話番号入力エラー -->
<s:if test="!#session.telNumberErrorMessageList.isEmpty()">
     <div class="error">
         <div class="error-message">
             <s:iterator value="#session.telNumberErrorMessageList"><s:property /><br></s:iterator>
         </div>
     </div>
</s:if>
<!-- 住所入力エラー -->
<s:if test="!#session.userAddressErrorMessageList.isEmpty()">
     <div class="error">
         <div class="error-message">
             <s:iterator value="#session.userAddressErrorMessageList"><s:property /><br></s:iterator>
         </div>
     </div>
</s:if>

<s:form action="CreateDestinationConfirmAction">
<table class="vertical-list-table">
<tr>
    <th scope="row"><s:label value="姓"/></th>
    <td><s:textfield name="familyName" class="txt" /></td>
</tr>

<tr>
    <th scope="row"></table>

</div>
</body>
</html>