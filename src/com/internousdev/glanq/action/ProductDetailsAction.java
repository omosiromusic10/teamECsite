package com.internousdev.glanq.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.ProductInfoDAO;
import com.internousdev.glanq.dto.ProductInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductDetailsAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private int productId;
	private ProductInfoDTO productInfoDTO;

	// 作成中です・・・
	public String execute() throws SQLException {
		ProductInfoDAO pDAO1 = new ProductInfoDAO();
		setProductInfoDTO(pDAO1.getProductInfo(productId));
		session.put("productInfoDTO", productInfoDTO);

		String result = SUCCESS;
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



}
