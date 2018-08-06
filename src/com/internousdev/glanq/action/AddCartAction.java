package com.internousdev.glanq.action;

import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.util.CommonUtility;
import com.opensymphony.xwork2.ActionSupport;

public class AddCartAction extends ActionSupport implements SessionAware{

	/*
	 *商品一覧からカートへのデータ移動を行うアクション
	 */

	private int productId;
	private String productName;
	private String productNameKana;
	private String productDescription;
	private String imageFilePath;
	private String imageFileName;
	private Date releaseDate;
	private String releaseCompany;
	private int price;

	private int categoryId;

	private Map<String,Object> session;

	public String execute(){
		String result = ERROR;
		String UserId = null;
		String tempUserId = null;


		//本登録のIdも仮登録のIdも存在しない場合
		if(!(session.containsKey("userId")) && !session.containsKey("tempUserId")){

			CommonUtility cu = new CommonUtility();
		}
	}


}
