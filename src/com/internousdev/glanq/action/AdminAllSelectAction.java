package com.internousdev.glanq.action;

/*
import java.util.ArrayList;
import java.util.List;
*/
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

/*
import com.internousdev.glanq.dao.CartInfoDAO;
import com.internousdev.glanq.dao.DestinationInfoDAO;
import com.internousdev.glanq.dao.MCategoryDAO;
import com.internousdev.glanq.dao.UserInfoDAO;
import com.internousdev.glanq.dto.CartInfoDTO;
import com.internousdev.glanq.dto.DestinationInfoDTO;
import com.internousdev.glanq.dto.MCategoryDTO;
import com.internousdev.glanq.dto.UserInfoDTO;

*/

import com.opensymphony.xwork2.ActionSupport;


public class AdminAllSelectAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
/*
	private List<MCategoryDTO> mCategoryAllDtoList = new ArrayList<MCategoryDTO>();
	private List<UserInfoDTO> userInfoAllDtoList = new ArrayList<UserInfoDTO>();
	private List<DestinationInfoDTO> DestinationInfoAllDtoList = new ArrayList<DestinationInfoDTO>();
	private List<CartInfoDTO> CartInfoAllDtoList = new ArrayList<CartInfoDTO>();
*/

	public String execute(){
		String result = ERROR;

/*		MCategoryDAO mCategoryDao = new MCategoryDAO();
		mCategoryAllDtoList =mCategoryDao.getMCategoryList();
		session.put("mCategoryAllDtoList",mCategoryAllDtoList);

		UserInfoDAO UserInfoDao = new UserInfoDAO();
		userInfoAllDtoList =UserInfoDao.getUserInfoAllList();
		session.put("UserInfoAllDtoList", userInfoAllDtoList);

		DestinationInfoDAO DestinationInfoDao = new DestinationInfoDAO();
		DestinationInfoAllDtoList =DestinationInfoDao.getDestinationInfoAllList();
		session.put("DestinationInfoAllDtoList", DestinationInfoAllDtoList);

		CartInfoDAO CartInfoDao = new CartInfoDAO();
		CartInfoAllDtoList = CartInfoDao.getCartInfoAllDtoList();
		session.put("CartInfoAllDtoList", CartInfoAllDtoList);
*/

		result = SUCCESS;

		return result;
	}
	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

/*
	public List<MCategoryDTO> getmCategoryDtoList() {
		return mCategoryDtoList;
	}
	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList) {
		this.mCategoryDtoList = mCategoryDtoList;
	}
	public List<UserInfoDTO> getUserInfoDtoList() {
		return userInfoDtoList;
	}
	public void setUserInfoDtoList(List<UserInfoDTO> userInfoDtoList) {
		this.userInfoDtoList = userInfoDtoList;
	}
	public List<DestinationInfoDTO> getDestinationInfoDtoList() {
		return DestinationInfoDtoList;
	}
	public void setDestinationInfoDtoList(List<DestinationInfoDTO> destinationInfoDtoList) {
		DestinationInfoDtoList = destinationInfoDtoList;
	}
	public List<CartInfoDTO> getCartInfoDtoList() {
		return CartInfoDtoList;
	}
	public void setCartInfoDtoList(List<CartInfoDTO> cartInfoDtoList) {
		CartInfoDtoList = cartInfoDtoList;
	}
*/

}
