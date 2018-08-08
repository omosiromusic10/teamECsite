<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>

<style type="text/css">
/* 何も書かないと表示が酷いのでcssを仮設定（自作のものをコピー） */

#newItemList{
	width: 1000px;
	text-align: center;
}
#newItemBox{
	display: inline-block;
	border: 2px solid #ddbb55;
	border-radius: 5px;
    box-shadow:2px 2px #1a6ea0;
	background-color: #ffeebb;
	margin: 20px;
	padding: 10px;
}
#newItemList ul {
  list-style: none;
  padding: 0;
  margin: 0;
}
#newItemList #item_image_box{
	display: table-cell;
	width: 210px;
	height: 210px;
	margin: 0 auto;
	background: white;
	vertical-align: middle;
	margin-bottom: 10px;
}
#newItemList #item_image{
	max-width: 200px;
	max-height: 200px;
	width: auto;
	height: auto;
	vertical-align: middle;

}

</style>

<title>商品一覧画面</title>
</head>
<body>
	<s:include value="header.jsp" />

<h2>作成中です･･･</h2>

<s:if test="#session.productInfoDtoList == null">
	<div class="info">
		検索結果がありません。
	</div>
</s:if>
<s:else>
		<div id="newItemList">
			<h3>商品の一覧を表示</h3>

				<s:iterator value="#session.productInfoDtoList">
				<div id="newItemBox">
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
			<br>
			<br>

				<div class="pager">
				<s:iterator begin="1" end="#session.totalPageSize" status="pageNo">
					<s:if test="#session.currentPageNo == #pageNo.count">
						<s:property value="%{#pageNo.count}"/>
					</s:if>
					<s:else>
						<a href="<s:url action='SearchItemAction'>
								<s:param name='pageNo' value='%{#pageNo.count}'/>
								<s:param name='categoryId' value='%{categoryId}'/>
								</s:url> ">

							<s:property value="%{#pageNo.count}"/>
						</a>
					</s:else>
				</s:iterator>
				</div>


			<br>
			<br>

		</div>
</s:else>

	<s:include value="footer.jsp" />
</body>
</html>