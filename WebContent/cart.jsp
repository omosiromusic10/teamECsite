<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

<meta charset=UTF-8>
<link rel="stylesheet" href="./css/style.css">
<title>カート</title>

<script type="text/javascript">

</script>

</head>
<body>

	<!-- ヘッダーとの関連付け -->
	<jsp:include page="header.jsp">

		<div id="contents">
			<h1>カート画面</h1>

			<s:if test="#session.checkErrorMessageList != null">
							<div class="error">
					<div class="error-message">
						<s:iterator value="session.checkListErrorMessageList">
							<s:property />
						</s:iterator>
					</div>
				</div>
			</s:if>

			<s:if test="#session.cartInfoDtoList.size() > 0">
			<s:form id="form" action="SettlementConfirmAction">
			<table class="horizontal-list-table">

			<!-- テーブルの表題 -->
			<thead>
			<tr>
			<th><s:label value="#"/></th>
			<th><s:label value="商品名"/></th>
			<th><s:label value="ふりがな"/></th>
			<th><s:label value="商品画像"/></th>
			<th><s:label value="値段"/></th>
			<th><s:label value="発売会社"/></th>
			<th><s:label value="発売年月日"/></th>
			<th><s:label value="購入個数"/></th>
			<th><s:label value="合計金額"/></th>
			</tr>
			</thead>

			<!-- 表示項目 -->
			<tbody>
			<s:iterator value="#session.cartInfoDtoList">
			<tr>
			<td><s:checkbox name="checkList" value="checked" fieldvalue="%{id}"/></td>
			<s:hidden name="productId" value="%{productId}"/>
			<td><s:property value="productName"/></td>
			<td><s:property value="productNameKana"/></td>
			<td><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' width=50px height=50px /></td>
			<td><s:property value="price"/>円</td>
			<td><s:property value="releaseCompany"/></td>
			<td><s:property value="releaseDate"/></td>
			<td><s:property value="productCount"/>個</td>
			<td><s:property value="subtotal"/>円</td>
			</tr>

			<!-- 実際のデータの移動 -->
			<s:hidden name="productName" value="%{productName}"/>
			<s:hidden name="productNameKana" value="%{productNameKana}"/>
			<s:hidden name="imageFilePath" value="%{imageFilePath}"/>
			<s:hidden name="imageFileName" value="%{imageFileName}"/>
			<s:hidden name="price" value="%{price}"/>
			<s:hidden name="releaseCompany" value="%{releaseCompany}"/>
			<s:hidden name="releaseDate" value="%{releaseDate}"/>
			<s:hidden name="productCount" value="%{productCount}"/>
			<s:hidden name="subtotal" value="%{subtotal}"/>
			</s:iterator>
			</tbody>
			</table>

			<h2><s:label value="カート合計金額 :"/><s:property value="#session.totalPrice"/>円</h2><br>

			<!-- 決済ボタン -->
			<div class="submit_btn_box">
			<div id=".contents_btn_set">
			<s:submit value="決済" class="submit_btn"/>
			</div>
			</div>

			<!-- 削除ボタン -->
			<div class="submit_btn_box">
			<div id=".contents_btn_set">
			<s:submit value="削除" class="submit_btn" onclick="this.form.action='DeleteCartAction';"/>
			</div>
			</div>

			</s:form>
			</s:if>

			<!-- カートの中身がなかった場合 -->
			<s:else>
			<div class="info">
			カートに情報はありません
			</div>
			</s:else>

		</div>
		</body>
</html>