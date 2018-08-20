package com.internousdev.glanq.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.MCategoryDAO;
import com.internousdev.glanq.dao.ProductInfoDAO;
import com.internousdev.glanq.dto.MCategoryDTO;
import com.internousdev.glanq.dto.ProductInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDetailsAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private int productId;

	private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();
	private String keywords;

	public String execute() throws SQLException {
		String result = ERROR;
		// 選ばれた商品の商品情報を取得。productId が必要。
		ProductInfoDAO pDAO1 = new ProductInfoDAO();
		ProductInfoDTO productInfoDTO = new ProductInfoDTO();
		productInfoDTO = pDAO1.getProductInfo(productId);
		session.put("productInfoDTO", productInfoDTO);

		session.put("productId", productInfoDTO.getProductId());

			// 商品名
			session.put("productName", productInfoDTO.getProductName());
			// 商品名かな
			session.put("productNameKana", productInfoDTO.getProductNameKana());
			// 値段
			session.put("price", productInfoDTO.getPrice());
			// 購入個数用のリスト
			List<Integer> productCountList = new ArrayList<Integer>(Arrays.asList(1,2,3,4,5));
			session.put("productCountList", productCountList);
			// 発売会社
			session.put("releaseCompany", productInfoDTO.getReleaseCompany());
			// 発売年月
			session.put("releaseDate", productInfoDTO.getReleaseDate());
			// 商品詳細
			session.put("productDescription", productInfoDTO.getProductDescription());
			// 商品画像用の情報
			session.put("imageFilePath", productInfoDTO.getImageFilePath());
			session.put("imageFileName", productInfoDTO.getImageFileName());

			// その他、使用したい情報。
			session.put("categoryId", productInfoDTO.getCategoryId());
			String categoryId = session.get("categoryId").toString();

		// 関連商品のリスト relatedProductList を取得。カテゴリIDと商品IDが必要。表示数に関連する数値 0, 3 を記述。
		// 今は、同カテゴリの商品のリストをランダムに並び替えた上で【先頭3行】を取得する設定。
		ProductInfoDAO pDAO2 = new ProductInfoDAO();
		int iCategoryId = Integer.parseInt(categoryId);
		List<ProductInfoDTO> relatedProductList = pDAO2.getProductInfoListByCategoryId(iCategoryId, productId, 0, 3);
		session.put("relatedProductList", relatedProductList);

		// セッション mCategoryDtoList はヘッダーにて用いているので、無い場合は必要。mCategoryList??
		if(!session.containsKey("mCategoryDtoList")) {
			MCategoryDAO mCategoryDao = new MCategoryDAO();
			mCategoryDtoList = mCategoryDao.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList);
		}

		// セッションlogined はヘッダーにて用いているので、無い場合は非ログイン状態として0を入れる。
		if(!session.containsKey("logined")) {
			session.put("logined", 0);
		}

		if(!(relatedProductList.isEmpty())){
			result = SUCCESS;
		}
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}

	public List<MCategoryDTO> getmCategoryDtoList() {
		return mCategoryDtoList;
	}

	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList) {
		this.mCategoryDtoList = mCategoryDtoList;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}



}
