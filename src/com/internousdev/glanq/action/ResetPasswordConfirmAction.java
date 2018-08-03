package com.internousdev.glanq.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ResetPasswordConfirmAction extends ActionSupport implements SessionAware{

	private String loginId;
	private String password;
	private String newPassword;
	private String reConfirmationNewPassword;
	private String categoryId;

	List<String> loginIdErrorMessage = new ArrayList<String>();
	List<String> passwordErrorMessage = new ArrayList<String>();
	List<String> passwordIncorrectErrorMessage = new ArrayList<String>();
	List<String> newPasswordErrorMessage = new ArrayList<String>();
	List<String> reConfirmationNewPasswordErrorMessage = new ArrayList<String>();
	List<String> newPasswordIncorrectErrorMessage = new ArrayList<String>();

	public Map<String,Object> session;

	public String execute(){
		result = ERROR;

		InputChecker inputChecker = new InputChecker();

		loginIdErrorMessageList = inputChecker.doCheck("ログインID","loginId",1,8,true,false,false,true,false,false,false);
		passwordErrorMessageList = inputChecker.doCheck("パスワード","password",1,16,true,false,false,true,false,false,false);
		newPasswordErrorMessageList = inputChecker.doCheck("新しいパスワード","newPassword",1,16,true,false,false,true,false,false,false);
		reConfirmationNewPasswordErrorMessageList = inputChecker.doCheck("確認用パスワード","reConfirmationNewPassword",1,16,true,false,false,true,false,false,false);
		newPasswordIncorrectErrorMessageList = inputChecker.doPasswordCheck("newPassword","reConfirmationPassword");

		if(loginErrorMessageList.size()==0 &&
				passwordErrorMessageList.size()==0 &&
				newPasswordErrorMessageList.size()==0 &&
				reConfirmationNewPasswordErrorMessageList.size()==0 &&
				newPasswordIncorrectErrorMessageList.size()==0){
			UserInfoDAO userInfoDAO = new UserInfoDAO();
			if(UserInfoDAO.isExistsUserInfo(loginId,password)){
				session.put("loginId",loginId);
				session.put("newPpassword",newPassword);
				session.put("concealPassword",concealPassword);
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
	public List<String> getLoginIdErrorMessage() {
		return loginIdErrorMessage;
	}
	public void setLoginIdErrorMessage(List<String> loginIdErrorMessage) {
		this.loginIdErrorMessage = loginIdErrorMessage;
	}
	public List<String> getPasswordErrorMessage() {
		return passwordErrorMessage;
	}
	public void setPasswordErrorMessage(List<String> passwordErrorMessage) {
		this.passwordErrorMessage = passwordErrorMessage;
	}
	public List<String> getPasswordIncorrectErrorMessage() {
		return passwordIncorrectErrorMessage;
	}
	public void setPasswordIncorrectErrorMessage(List<String> passwordIncorrectErrorMessage) {
		this.passwordIncorrectErrorMessage = passwordIncorrectErrorMessage;
	}
	public List<String> getNewPasswordErrorMessage() {
		return newPasswordErrorMessage;
	}
	public void setNewPasswordErrorMessage(List<String> newPasswordErrorMessage) {
		this.newPasswordErrorMessage = newPasswordErrorMessage;
	}
	public List<String> getReConfirmationNewPasswordErrorMessage() {
		return reConfirmationNewPasswordErrorMessage;
	}
	public void setReConfirmationNewPasswordErrorMessage(List<String> reConfirmationNewPasswordErrorMessage) {
		this.reConfirmationNewPasswordErrorMessage = reConfirmationNewPasswordErrorMessage;
	}
	public List<String> getNewPasswordIncorrectErrorMessage() {
		return newPasswordIncorrectErrorMessage;
	}
	public void setNewPasswordIncorrectErrorMessage(List<String> newPasswordIncorrectErrorMessage) {
		this.newPasswordIncorrectErrorMessage = newPasswordIncorrectErrorMessage;
	}

}
