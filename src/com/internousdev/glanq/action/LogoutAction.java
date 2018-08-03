package com.internousdev.glanq.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.sampleweb.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;


/*sessionAwareを実装することでvalestackの中にsessionを入れることができる
ActionSupportをLogoutActionへ継承することでvaluestackを使えるようにする*/
public class LogoutAction extends ActionSupport implements SessionAware{


	private String categoryId;
	private Map<String, Object> session;
	public String execute() {

		//ERROR処理
		String result = ERROR;

		//userInfoDaoオブジェクトを生成
		UserInfoDAO userInfoDao = new UserInfoDAO();

		// loginIdにValueOfを代入
		//valueOfはsessionからloginIdを取得
		String loginId = String.valueOf(session.get("loginId"));

		// boolean型変数savedLoginIdにBoolean.valueOfを代入
		//String.valueOfはsessionからsavedloginid情報を取得
		//取得したsavedLoginIdをBoolean.valeuOfに代入
		boolean savedLoginId = Boolean.valueOf(String.valueOf(session.get("savedLoginId")));

		//int型countにuserInfoDao.logoutを代入
		int count = userInfoDao.logout(loginId);

		//もしcountの値が0以上の場合、
		if(count > 0) {

		//sessionの中を全て除去
			session.clear();

		//sessionの中へキーワードsavedLoginId、savedLoginId情報を登録
			session.put("savedLoginId", savedLoginId);

		//sessionの中へキーワードloginId、loginId情報を登録
			session.put("loginId", loginId);

		//SUCCESS処理
			result = SUCCESS;
		}
		//resultが返る
		return result;
	}
	//valuestackに渡すためのゲッター、セッター
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
}
