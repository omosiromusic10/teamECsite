package com.internousdev.glanq.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class GoLoginAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;

	public String execute() {
		//他ページに飛んだあともエラーメッセージが残らないように、
		//セッションからはずす
		session.remove("loginIdErrorMessageList");
		session.remove("passwordErrorMessageList");

		return SUCCESS;
	}


	public Map<String,Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
