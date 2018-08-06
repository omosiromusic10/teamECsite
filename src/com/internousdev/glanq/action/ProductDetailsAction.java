package com.internousdev.glanq.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.ProductInfoDAO;
import com.internousdev.glanq.dto.MCategoryDTO;
import com.internousdev.glanq.dto.ProductInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDetailsAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private int productId;
	private ProductInfoDTO productInfoDTO = new ProductInfoDTO();

	private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();
	private List<ProductInfoDTO> productInfoDtoList = new ArrayList<ProductInfoDTO>();
	private String categoryId;



	// 作成中です・・・
	public String execute() throws SQLException {
		String result = ERROR;
		// 選ばれた商品の商品情報を取得。productId が必要。
		ProductInfoDAO pDAO1 = new ProductInfoDAO();
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

			session.put("categoryId", productInfoDTO.getCategoryId());
			categoryId = session.get("categoryId").toString();

		// 関連商品の情報を取得。カテゴリIDと商品IDが必要。表示数に関連する数値を記述。
		ProductInfoDAO pDAO2 = new ProductInfoDAO();
		int iCategoryId = Integer.parseInt(categoryId);
		List<ProductInfoDTO> relatedProductList = pDAO2.getProductInfoListByCategoryId(iCategoryId, productId, 0, 3);
		session.put("relatedProductList", relatedProductList);

		if(!(relatedProductList.isEmpty())){
			result = SUCCESS;
		}
		return result;
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

	public ProductInfoDTO getProductInfoDTO() {
		return productInfoDTO;
	}
	public void setProductInfoDTO(ProductInfoDTO productInfoDTO) {
		this.productInfoDTO = productInfoDTO;
	}

	public List<MCategoryDTO> getmCategoryDtoList() {
		return mCategoryDtoList;
	}

	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList) {
		this.mCategoryDtoList = mCategoryDtoList;
	}

	public List<ProductInfoDTO> getProductInfoDtoList() {
		return productInfoDtoList;
	}

	public void setProductInfoDtoList(List<ProductInfoDTO> productInfoDtoList) {
		this.productInfoDtoList = productInfoDtoList;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}



}
