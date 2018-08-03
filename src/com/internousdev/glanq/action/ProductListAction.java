package com.internousdev.glanq.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.ProductInfoDAO;
import com.internousdev.glanq.dto.ProductInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductListAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private ArrayList<ProductInfoDTO> productInfoList = new ArrayList<ProductInfoDTO>();

	// 作成中です・・・
	public String execute() throws SQLException{
		String result;
		ProductInfoDAO productInfoDAO = new ProductInfoDAO();
		productInfoList = productInfoDAO.getProductInfoList();
		session.put("productInfoList", productInfoList);
		result = SUCCESS;
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<ProductInfoDTO> getProductInfoList() {
		return productInfoList;
	}

	public void setProductInfoList(ArrayList<ProductInfoDTO> productInfoList) {
		this.productInfoList = productInfoList;
	}

}
