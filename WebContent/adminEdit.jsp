<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>商品編集画面</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="contents">
<h1>商品編集画面</h1>
<div id="product-list">

<table class="horizontal-list-table">
<thead>
	<tr>
		<th><s:label value="商品画像" /></th>
		<th><s:label value="商品名" /></th>
		<th><s:label value="ふりがな" /></th>
		<th><s:label value="値段" /></th>
		<th><s:label value="発売会社名" /></th>
		<th><s:label value="発売年月日" /></th>
	</tr>
</thead>
<tbody>
<s:iterator value="#session.productInfoDtoList">
	<tr>
		<td><a href='<s:url action="AdminEditDetailsAction">
			<s:param name="productId" value="%{productId}"/>
			</s:url>'><img src='<s:property value="imageFilePath" />/<s:property value="imageFileName" />
</s:iterator>

</tbody>
</table>

</div>
</div>

</body>
</html>