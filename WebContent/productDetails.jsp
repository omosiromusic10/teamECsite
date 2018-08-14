<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="./css/product.css">

<title>商品詳細画面</title>
</head>
<body>

	<s:include value="header.jsp" />

	<h1>商品詳細ページ</h1>

<div id="contents">


	<!-- ～商品詳細を表示～ -->
	<div id="item_detail">
		<div id="left_box">
			<table>
			<tr>
				<th scope="col">商品画像</th>
			</tr>
			<tr>
				<td><div id="item_image_box"> <img id="item_image" src="<s:property value='#session.imageFilePath'/>/<s:property value='#session.imageFileName'/>"></div></td>
			</tr>
			</table>
		</div>

		<div id="right_box">
			<h2>～ 商品情報 ～</h2>
			<s:form action="AddCartAction">
			<s:hidden name="productId" value="%{#session.productId}"/>
			<s:hidden name="productName" value="%{#session.productName}"/>
			<s:hidden name="productNameKana" value="%{#session.productNameKana}"/>
			<s:hidden name="imageFilePath" value="%{#session.imageFilePath}"/>
			<s:hidden name="imageFileName" value="%{#session.imageFileName}"/>
			<s:hidden name="releaseDate" value="%{#session.releaseDate}"/>
			<s:hidden name="releaseCompany" value="%{#session.releaseCompany}"/>
			<s:hidden name="price" value="%{#session.price}"/>
			<s:hidden name="categoryId" value="%{#session.categoryId}"/>
			<table id="item_info" border="">
				<tr>
					<th scope="row">商品名</th>
					<td><s:property value="#session.productName"/></td>
				</tr>
				<tr>
					<th scope="row">商品名ふりがな</th>
					<td><s:property value="#session.productNameKana"/></td>
				</tr>
				<tr>
					<th scope="row">値段</th>
					<td><s:property value="#session.price"/><span>円</span></td>
				</tr>
<!-- 				<tr> -->
<!-- 					<th scope="row">購入個数</th> -->
<%-- 					<td><s:select name="productCount" list="%{#session.productCountList}"/>個</td> --%>
<!-- 				</tr> -->
				<tr>
					<th scope="row">発売会社</th>
					<td><s:property value="#session.releaseCompany"/></td>
				</tr>
				<tr>
					<th scope="row">発売年月日</th>
					<td><s:property value="#session.releaseDate"/></td>
				</tr>
				<tr>
					<th scope="row">商品詳細情報</th>
					<td height="52"><s:property value="#session.productDescription"/></td>
				</tr>
			</table>
			<table id="buy">
				<tr>
					<td><s:select name="productCount" list="%{#session.productCountList}"/>個</td>
					<td><s:submit value="カートに追加" class="submit_btn"/></td>
				</tr>
			</table>
（調整中）
<%-- 			<s:select name="productCount" list="%{#session.productCountList}"/>個 --%>


			</s:form>
		</div>
	</div>

	<!-- ～関連商品を表示～ -->
	<h3>↓関連商品↓</h3>
	<div id="related_product_list">
		<s:iterator value="#session.relatedProductList">
			<div id="product_box">
				<ul>
					<li>
					<div id="product_image_box">
					<a href='<s:url action="ProductDetailsAction">
							<s:param name="productId" value="%{productId}"/>
							</s:url>'>

							<img id="product_image" src="<s:property value='imageFilePath'/>/<s:property value='imageFileName'/>">
					</a>
					</div>
					</li>
					<li><s:property value="productName" /></li>
				</ul>
			</div>
		</s:iterator>
	</div>
<br>
</div>

	<s:include value="footer.jsp" />

</body>
</html>