package com.internousdev.glanq.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.PurchaseHistoryInfoDAO;
import com.internousdev.glanq.dto.DestinationInfoDTO;
import com.internousdev.glanq.dto.PurchaseHistoryInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SettlmentCompleteAction extends ActionSupport implements SessionAware{


	private String id;
	private String categoryId;
	private Map<String, Object> session;

	public String execute() {
	String result = ERROR;


	@SuppressWarnings("unchecked")
		ArrayList<PurchaseHistoryInfoDTO> purchaseHistoryInfoDtoList = (ArrayList<PurchaseHistoryInfoDTO>)session.get("purchaseHistoryInfoDtoList");

		@SuppressWarnings("unchecked")
		ArrayList<DestinationInfoDTO> destinationInfoDtoList = (ArrayList<DestinationInfoDTO>)session.get("destinationInfoDtoList");
}

	PurchaseHistoryInfoDAO purchaseHistoryInfoDAO = new PurchaseHistoryInfoDAO();
	int count = 0:
	for(int i=0; i<purchaseHistoryInfoDAOList.size(); i++) {
	   count += purchaseHistoryInfoDAO.regist(
		String.valueOf(session.get("loginId")),
		purchaseHistoryInfoDtoList.get(i).getProductId(),
		purchaseHistoryInfoDtoList.get(i).getProductCount(),
		purchaseHistoryInfoDtoList.get(i).getDestinationId(),
		purchaseHistoryInfoDtoList.get(i).Subtotal()
		);
}

if(count > 0) {
	CartInfoDAO cartInfoDAO = new CartInfoDAO();
	count = cartInfoDAO.deleteAll(String.valueOf(session.get("loginId")));
	if(count > 0) {
		List<CartInfoDTO> cartInfoDtoList = new ArrayList<CartInfoDTO>();
		cartInfoDtoList = cartInfoDAO.getCartInfoDtoList(String.valueOf(Session.put("loginId")));
		Iterator<CartInfoDTO> iterator = cartInfoDtoList.iterator();
		if(!(iterator.hasNext())) {
			cartInfoDtoList = null;
		}
		session.put("cartInfoDtoList", cartInfoDtoList);

		int totalPrice = Integer.parseInt(cartInfoDAO.getTotalPrice(String.valueOf(session.get("loginId"))));
		session.put("totalPrice", totalPrice);
		result = SUCCESS;
	}
	}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getCategoryId() {
	return categoryId;
}

public void setCategoryId(String categoryId) {
	this.categoryId = categoryId;
}

public Map<String, Object> getSession() {
	return session;
}

public void setSession(Map<String, Object> session) {
	this.session = session;
}

public PurchaseHistoryInfoDAO getPurchaseHistoryInfoDAO() {
	return purchaseHistoryInfoDAO;
}

public void setPurchaseHistoryInfoDAO(PurchaseHistoryInfoDAO purchaseHistoryInfoDAO) {
	this.purchaseHistoryInfoDAO = purchaseHistoryInfoDAO;
}

public int getCount() {
	return count;
}

public void setCount(int count) {
	this.count = count;
}

public int getI() {
	return i;
}

public void setI(int i) {
	this.i = i;
}





