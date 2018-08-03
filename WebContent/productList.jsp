<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品一覧画面</title>
</head>
<body>
<h2>作成中です･･･</h2>

		<div id="newItemList">
			<h3>商品の一覧を表示</h3>
				<s:iterator value="#session.productInfoList">
				<div id="ItemBox">

					<ul>
					<!-- 	<li><input type="radio" name="productId" value='<s:property value="productId"/>'></li>  -->
						<li>
						<div id="item_image_box">
<%-- 						<a href='<s:url action="ProductDetailsAction"> --%>
<%-- 							</s:url>'> --%>
							<img id="item_image" src="<s:property value='imageFilePath'/>/<s:property value='imageFileName'/>">
<!-- 						</a> -->
						</div>
						</li>
						<li><s:property value="productName" /></li>
						<li><s:property value="productReleaseCompany" /></li>
						<li><s:property value="price" /><span>円</span></li>
					</ul>

				</div>
				</s:iterator>
			<br><br>
			<div id="error">
				<s:if test='errorMessage != ""'>	<!-- 追加 -->
					<h4><s:property value="errorMessage" escape="false" /></h4>
				</s:if>
			</div>
			<br>
			<br>

		</div>

</body>
</html>