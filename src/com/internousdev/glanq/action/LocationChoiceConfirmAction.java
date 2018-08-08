package com.internousdev.glanq.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LocationChoiceConfirmAction extends ActionSupport implements SessionAware{

	private String categoryId;
	private Map<String, Object> session;
	private String parkName;

	public String execute(){

		String result = ERROR;

		try {
			session.put("parkName", parkName);
			result = SUCCESS;
		} catch(Exception e){
			e.printStackTrace();
		}

		return result;
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

	public String getParkName() {
		return parkName;
	}

	public void setParkName(String parkName) {
		this.parkName = parkName;
	}

}
