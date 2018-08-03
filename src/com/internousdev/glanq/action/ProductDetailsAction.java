package com.internousdev.glanq.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ProductDetailsAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	// 作成中です・・・
	public String execute() {
		String result = ERROR;
		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



}
