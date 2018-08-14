<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
        <title>ヘッダー</title>
<script>
function goLoginAction(){
	document.getElementById("form").action="GoLoginAction";
}
function goMyPageAction(){
	document.getElementById("form").action="MyPageAction";
}
function goCartAction(){
	document.getElementById("form").action="CartAction";
}
function goProductListAction(){
	document.getElementById("categoryId").value=1;
	document.getElementById("form").action="ProductListAction";
}
function goLogoutAction(){
	document.getElementById("form").action="LogoutAction";
}
function goSearchItemAction(){
	document.getElementById("form").action="SearchItemAction";
}
function goAdminAction(){
	document.getElementById("form").action="GoAdminAction";
}
</script>
</head>

<body>
<header>
             <div id="header">
                     <div id="header-title">GLANQ</div>
                     <div id="header-menu">
                             <ul>
                                  <s:form id="form" name="form">
                                       <s:if test="#session.status==1">
                                               <li><s:submit value="管理者ホーム" class="header_btn" onclick="goAdminAction();"/></li>
                                       </s:if>
                                       <s:if test='#session.containsKey("mCategoryDtoList") && #session.status!=1'>
                                               <li><s:select name="categoryId" list="#session.mCategoryDtoList" listValue="categoryName" listKey="categoryId" class="cs-div" id="categoryId"/></li>
                                       </s:if>
                                       <s:if test="#session.logined==0 || #session.status==0">
                                               <li><s:textfield name="keywords" class="txt-keywords" placeholder="検索ワード" />
                                               <s:submit value="商品検索" class="header_btn" onclick="goSearchItemAction();"/></li>
                                       </s:if>
                                       <s:if test="#session.logined==1">
                                               <li><s:submit value="ログアウト" class="header_btn" onclick="goLogoutAction();"/></li>
                                       </s:if>
                                       <s:else>
                                               <li><s:submit value="ログイン" class="header_btn" onclick="goLoginAction();"/></li>
                                       </s:else>
                                       <s:if test="#session.logined==0 || #session.status==0">
                                               <li><s:submit value="カート" class="header_btn" onclick="goCartAction();"/></li>
                                               <li><s:submit value="商品一覧" class="header_btn" onclick="goProductListAction();"/></li>
                                       </s:if>
                                       <s:if test="#session.logined==1 && #session.status==0">
                                               <li><s:submit value="マイページ" class="header_btn" onclick="goMyPageAction();"/></li>
                                       </s:if>

                                  </s:form>
                             </ul>
                     </div>
                     </div>
</header>
</body>
</html>