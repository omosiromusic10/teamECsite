<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<style type="text/css">
#item_detail {
	width: 880px;
	height: 420px;
	border: 2px solid #4481ff;
	border-radius: 10px;
	margin: 0 auto;
	margin_bottom: 30px;
	padding: 0px auto;
	text-align: center;
	background-color: #c4dbff;
}

#item_detail #left_box{
	float: left;
	display: inline-block;
	width: 350px;
	height: auto;
	margin: auto 0;
	margin-right: 1%;
	margin-top: 20px;
/*	border: 1px solid green; */
	padding-top: 10px;
}
#item_detail h2{
	text-align: center;
}
#item_detail #right_box{
	float: left;
	display: inline-block;
	width: 500px;
	height: auto;
	margin-top: 20px;
	text-align: left;
/*	border: 1px solid green; */
	padding: 0;
	padding-top: 0px;
}

#item_detail #left_box table{
}
#item_detail #left_box th{
	font-size: 18px;
	border: 1px solid blue;
}
#item_detail #left_box td{
	font-size: 18px;
	border: 1px solid blue;
}
#item_detail #item_image_box{
	display: table-cell;
	width: 310px;
	height: 310px;
	vertical-align: middle;
	text-align: center;
	background: gray;
}
#item_detail #item_image_box img{
	max-width: 300px;
	max-height: 300px;
	width: auto;
	height: auto;
	vertical-align: middle;
}


table#item_info{
	width: 450px;
	background-color: #aaeeff;
	border: 2 bouble black;
	font-size: 18px;
}
table#item_info th{
	width: 30%;
	padding: 2px;
}
table#item_info td{
	width: 100%;
	text-align: left;
	padding: 2px;
}
#related_product_list #product_box{
	display: inline-block;
	border: 2px solid #ddbb55;
	border-radius: 5px;
    box-shadow:2px 2px #1a6ea0;
	background-color: #ffeebb;
	margin: 20px;
	padding: 10px;
}
#related_product_list ul {
  list-style: none;
  padding: 0;
  margin: 0;
}
#related_product_list #item_image_box{
	display: table-cell;
	width: 210px;
	height: 210px;
	margin: 0 auto;
	background: white;
	vertical-align: middle;
	margin-bottom: 10px;
}
#related_product_list #item_image{
	max-width: 200px;
	max-height: 200px;
	width: auto;
	height: auto;
	vertical-align: middle;

}
</style>
<title>商品詳細画面</title>
</head>
<body>
	<s:include value="header.jsp" />

<h2>作成中です･･･</h2>

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
				<input type="hidden" name="productId" value="#session.productId">
				<input type="hidden" name="productName" value="#session.productName">
				<input type="hidden" name="productNameKana" value="#session.productNameKana">
				<input type="hidden" name="imageFilePath" value="#session.imageFilePath">
				<input type="hidden" name="imageFileName" value="#session.imageFileName">
				<input type="hidden" name="releaseDate" value="#session.releaseDate">
				<input type="hidden" name="releaseCompany" value="#session.releaseCompany">
				<input type="hidden" name="price" value="#session.price">
				<input type="hidden" name="categoryId" value="#session.categoryId">
				<table id="item_info" border="">
					<tr>
						<th scope="row">商品名</th>
						<td><s:property value="#session.productName"/></td>
					</tr>
					<tr>
						<th scope="row">ふりがな</th>
						<td><s:property value="#session.productNameKana"/></td>
					</tr>
					<tr>
						<th scope="row">値段</th>
						<td><s:property value="#session.price"/><span>円</span></td>
					</tr>
					<tr>
						<th scope="row">購入個数</th>
						<td><s:select name="productCount" list="%{#session.productCountList}"/>個</td>
					</tr>
					<tr>
						<th scope="row">発売会社</th>
						<td><s:property value="#session.releaseCompany"/></td>
					</tr>
					<tr>
						<th scope="row">発売年月</th>
						<td><s:property value="#session.releaseDate"/></td>
					</tr>
					<tr>
						<th scope="row">商品詳細</th>
						<td height="52"><s:property value="#session.productDescription"/></td>
					</tr>
				</table>
				<s:submit value="カートに追加する" class="submit_btn"/>
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
 						<div id="item_image_box">
 						<a href='<s:url action="ProductDetailsAction">
 								<s:param name="productId" value="%{productId}"/>
 								</s:url>'>

 								<img id="item_image" src="<s:property value='imageFilePath'/>/<s:property value='imageFileName'/>">
 						</a>
 						</div>
						</li>
						<li><s:property value="productName" /></li>
						<li><s:property value="releaseCompany" /></li>
						<li><s:property value="price" /><span>円</span></li>
					</ul>
				</div>

			</s:iterator>

		</div>

	<s:include value="footer.jsp" />
</body>
</html>