package com.internousdev.glanq.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.UserInfoDAO;
import com.internousdev.glanq.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class ResetPasswordConfirmAction extends ActionSupport implements SessionAware{

	private String loginId;
	private String password;
	private String newPassword;
	private String reConfirmationNewPassword;
	private String categoryId;

	private List<String> loginIdErrorMessageList = new ArrayList<String>();
	private List<String> passwordErrorMessageList = new ArrayList<String>();
	private List<String> passwordIncorrectErrorMessageList = new ArrayList<String>();
	private List<String> newPasswordErrorMessageList = new ArrayList<String>();
	private List<String> reConfirmationNewPasswordErrorMessageList = new ArrayList<String>();
	private List<String> newPasswordIncorrectErrorMessageList = new ArrayList<String>();

	public Map<String,Object> session;

	public String execute(){
		String result = ERROR;

		InputChecker inputChecker = new InputChecker();

		loginIdErrorMessageList = inputChecker.docheck("ログインID",loginId,1,8,true,false,false,true,false,false,false);
		passwordErrorMessageList = inputChecker.docheck("パスワード",password,1,16,true,false,false,true,false,false,false);
		newPasswordErrorMessageList = inputChecker.docheck("新しいパスワード",newPassword,1,16,true,false,false,true,false,false,false);
		reConfirmationNewPasswordErrorMessageList = inputChecker.docheck("確認用パスワード","reConfirmationNewPassword",1,16,true,false,false,true,false,false,false);
		newPasswordIncorrectErrorMessageList = inputChecker.doPasswordCheck("newPassword","reConfirmationPassword");

		if(loginIdErrorMessageList.size()==0 &&
				passwordErrorMessageList.size()==0 &&
				newPasswordErrorMessageList.size()==0 &&
				reConfirmationNewPasswordErrorMessageList.size()==0 &&
				newPasswordIncorrectErrorMessageList.size()==0){
			UserInfoDAO userInfoDAO = new UserInfoDAO();
			if(userInfoDAO.isExistUser(loginId,password)){
				String concealedPassword = userInfoDAO.concealPassword(password);
				session.put("loginId",loginId);
				session.put("newPpassword",newPassword);
				session.put("concealPassword",concealedPassword);
				result = SUCCESS;
			}else{
				passwordIncorrectErrorMessageList.add("パスワードが間違っています。");
				session.put("passwordIncorrectErrorMessageList", passwordIncorrectErrorMessageList);
			}
		}else{
			session.put("loginIdErrorMessageList",loginIdErrorMessageList);
			session.put("passwordErrorMessageList",passwordErrorMessageList);
			session.put("newPasswordErrorMessageList",newPasswordErrorMessageList);
			session.put("reConfirmationNewPasswordErrorMessageList",reConfirmationNewPasswordErrorMessageList);
			session.put("newPasswordErrorMessageList",newPasswordErrorMessageList);

		}
		return result;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getReConfirmationNewPassword() {
		return reConfirmationNewPassword;
	}

	public void setReConfirmationNewPassword(String reConfirmationNewPassword) {
		this.reConfirmationNewPassword = reConfirmationNewPassword;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public List<String> getLoginIdErrorMessageList() {
		return loginIdErrorMessageList;
	}

	public void setLoginIdErrorMessageList(List<String> loginIdErrorMessageList) {
		this.loginIdErrorMessageList = loginIdErrorMessageList;
	}

	public List<String> getPasswordErrorMessageList() {
		return passwordErrorMessageList;
	}

	public void setPasswordErrorMessageList(List<String> passwordErrorMessageList) {
		this.passwordErrorMessageList = passwordErrorMessageList;
	}

	public List<String> getPasswordIncorrectErrorMessageList() {
		return passwordIncorrectErrorMessageList;
	}

	public void setPasswordIncorrectErrorMessageList(List<String> passwordIncorrectErrorMessageList) {
		this.passwordIncorrectErrorMessageList = passwordIncorrectErrorMessageList;
	}

	public List<String> getNewPasswordErrorMessageList() {
		return newPasswordErrorMessageList;
	}

	public void setNewPasswordErrorMessageList(List<String> newPasswordErrorMessageList) {
		this.newPasswordErrorMessageList = newPasswordErrorMessageList;
	}

	public List<String> getReConfirmationNewPasswordErrorMessageList() {
		return reConfirmationNewPasswordErrorMessageList;
	}

	public void setReConfirmationNewPasswordErrorMessageList(List<String> reConfirmationNewPasswordErrorMessageList) {
		this.reConfirmationNewPasswordErrorMessageList = reConfirmationNewPasswordErrorMessageList;
	}

	public List<String> getNewPasswordIncorrectErrorMessageList() {
		return newPasswordIncorrectErrorMessageList;
	}

	public void setNewPasswordIncorrectErrorMessageList(List<String> newPasswordIncorrectErrorMessageList) {
		this.newPasswordIncorrectErrorMessageList = newPasswordIncorrectErrorMessageList;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
