package com.internousdev.glanq.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.UserInfoDAO;
import com.internousdev.glanq.dto.UserInfoDTO;
import com.internousdev.glanq.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	private String loginId;
	private String password;
	private boolean savedLoginId;

	private Map<String, Object> session;

	List<String> loginIdErrorMessageList = new ArrayList<String>();
	List<String> passwordErrorMessageList = new ArrayList<String>();


	public String execute() {
		UserInfoDAO userInfoDAO = new UserInfoDAO();
		UserInfoDTO userInfoDTO = new UserInfoDTO();

		String result = ERROR;

		//「ログインID保存」のチェックボックスに使う
		//trueの場合sessionに格納
		if(savedLoginId==true) {
			session.put("savedLoginId", true);
			session.put("loginId", loginId);

		//それ以外はsessionからはずす
		} else {
			session.put("savedLoginId", false);
			session.remove("loginId", loginId);
		}

		//正規表現検証(質問の内容,値,最小文字数,最大文字数,半角数字,漢字,ひらがな,半角数字,半角記号,カタカナ,全角記号)
		InputChecker inputChecker = new InputChecker();
		loginIdErrorMessageList = inputChecker.docheck("ログインID", loginId, 1, 8, true, false, false, true, false, false, false);
		passwordErrorMessageList = inputChecker.docheck("パスワード", password, 1, 16, true, false, false, true, false, false, false);

		//ログインIDとパスワード両方にエラーメッセージが入った場合、
		//エラーメッセージを格納、ログインフラグを降ろす
		if(loginIdErrorMessageList.size()!=0
				&& passwordErrorMessageList.size()!=0) {
					session.put("loginIdErrorMessageList", loginIdErrorMessageList);
					session.put("passwordErrorMessageList", passwordErrorMessageList);
					session.put("logined", 0);
		}
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

	public Map<String, Object> session() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}
