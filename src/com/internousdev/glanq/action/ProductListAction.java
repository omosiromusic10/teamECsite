package com.internousdev.glanq.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.ProductInfoDAO;
import com.internousdev.glanq.dto.PaginationDTO;
import com.internousdev.glanq.dto.ProductInfoDTO;
import com.internousdev.glanq.util.Pagination;
import com.opensymphony.xwork2.ActionSupport;

public class ProductListAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private List<ProductInfoDTO> productInfoList = new ArrayList<ProductInfoDTO>();
	private Pagination pagination;
	PaginationDTO paginationDTO = new PaginationDTO();

	// 作成中です・・・
	public String execute() throws SQLException{
		String result;
		// すべての商品情報を取得
		ProductInfoDAO productInfoDAO = new ProductInfoDAO();
		productInfoList = productInfoDAO.getProductInfoList();
		session.put("productInfoList", productInfoList);

		paginationDTO = pagination.initialize(productInfoList, 9);
		result = SUCCESS;
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<ProductInfoDTO> getProductInfoList() {
		return productInfoList;
	}

	public void setProductInfoList(List<ProductInfoDTO> productInfoList) {
		this.productInfoList = productInfoList;
	}

	public PaginationDTO getPaginationDTO() {
		return paginationDTO;
	}

	public void setPaginationDTO(PaginationDTO paginationDTO) {
		this.paginationDTO = paginationDTO;
	}


}
