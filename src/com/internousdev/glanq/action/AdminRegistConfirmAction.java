package com.internousdev.glanq.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.MCategoryDAO;
import com.internousdev.glanq.dto.MCategoryDTO;
import com.internousdev.glanq.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class AdminRegistConfirmAction extends ActionSupport implements SessionAware{

	private String productName;
	private String productNameKana;
	private String productDescription;
	private String price;
	private String imageFileName;
	private String imageFilePath;
	private String releaseCompany;
	private String releaseDate;

	private File userImage;
	private String userImagePathContentType;
	private String userImageFileName;

	private List<String>productNameErrorMessageList = new ArrayList<String>();
	private List<String>productNameKanaErrorMessageList = new ArrayList<String>();
	private List<String>productDescriptionErrorMessageList  = new ArrayList<String>();
	private List<String>priceErrorMessageList = new ArrayList<String>();
	private List<String>releaseCompanyErrorMessageList = new ArrayList<String>();
	private List<String>releaseDateErrorMessageList = new ArrayList<String>();

	private List<String>userImageFileNameErrorMessageList = new ArrayList<String>();


	private int categoryId;
	private List<String> categoryIdList = new ArrayList<String>();
	private Map<String, Object> session;

	public String execute(){
		String result = ERROR;
		InputChecker inputChecker = new InputChecker();

		session.put("productName", productName);
		session.put("productNameKana", productNameKana);
		session.put("productDescription", productDescription);
		session.put("price", price);
		session.put("imageFileName", imageFileName);
		session.put("imageFilePath", imageFilePath);
		session.put("releaseCompany", releaseCompany);
		session.put("releaseDate", releaseDate);
		session.put("categoryId", categoryId);
		session.put("userImageFileName", userImageFileName);
		session.put("Status", 0);

		//ファイルアップロードの処理
		if(!(userImage == null)){
		String filePath = ServletActionContext.getServletContext().getRealPath("/").concat("images");
		System.out.println("Image Location:" + filePath);
		File fileToCreate = new File(filePath, userImageFileName);
	try{
		  FileUtils.copyFile(userImage , fileToCreate);
			session.put("image_file_name", userImageFileName);
			session.put("image_file_path", "./images");
			session.put("image_flg" , userImageFileName);
			System.out.println(session.get("image_file_name"));
			System.out.println(session.get("image_file_path"));
	  }catch(IOException e){
		  e.printStackTrace();
	  }
	  }else{
			userImageFileName="";
			result = ERROR;
	  }

        //ここでmCategoryDtoListを使用してcategoryIdを表示された名前で取ってくる。
		MCategoryDAO mCategoryDAO = new MCategoryDAO();
		MCategoryDTO mCategoryDTO = mCategoryDAO.getMCategory(categoryId);
		//ユーザーID, status をセッションに格納
		//putされたcategoryIdをメソッド内でセレクトし、categoryNameをsession内に保存する。
		session.put("categoryName", mCategoryDTO.getCategoryName());




		productNameErrorMessageList = inputChecker.docheck("商品名", productName, 1, 32, true, true, true, true, true, true, true);
		productNameKanaErrorMessageList = inputChecker.docheck("商品名ふりがな", productNameKana, 1, 32, false, false, true, false, false, false, false);
		productDescriptionErrorMessageList = inputChecker.docheck("商品名詳細", productDescription, 1, 320, true, true, true, true, true, true, true);
		priceErrorMessageList  = inputChecker.docheck("価格", price, 1, 8, false, false, false, true, false, false, false);
		releaseCompanyErrorMessageList  = inputChecker.docheck("発売会社名", releaseCompany, 1, 16, true, true, true, true, false, true, false);
		releaseDateErrorMessageList  = inputChecker.docheck("発売年月日", releaseDate, 1, 16, false, true, false, true, true, false, false);
		userImageFileNameErrorMessageList = inputChecker.docheck("画像ファイル", userImageFileName, 1, 32, true, true, true, true, true, true, true);

		if(productNameErrorMessageList.size()==0
		&& productNameKanaErrorMessageList.size()==0
		&& productDescriptionErrorMessageList.size()==0
		&& priceErrorMessageList.size()==0
		&& releaseCompanyErrorMessageList.size()==0
		&& releaseDateErrorMessageList.size()==0
		&& userImageFileNameErrorMessageList.size()==0 ){
			result = SUCCESS;
		}else{
			session.put("productNameErrorMessageList", productNameErrorMessageList);
			session.put("productNameKanaErrorMessageList", productNameKanaErrorMessageList);
			session.put("productDescriptionErrorMessageList", productDescriptionErrorMessageList);
			session.put("priceErrorMessageList", priceErrorMessageList);
			session.put("releaseCompanyErrorMessageList", releaseCompanyErrorMessageList);
			session.put("releaseDateErrorMessageList", releaseDateErrorMessageList);
			session.put("userImageFileNameErrorMessageList" ,userImageFileNameErrorMessageList);
			result = ERROR;
		}

		return result;
	}
	public int getCategoryId(){
		return categoryId;
	}
	public void setCategoryId(int categoryId){
		this.categoryId = categoryId;
	}
	public String getProductName(){
		return productName;
	}
	public void setProductName(String productName){
		this.productName = productName;
	}
	public String getProductNameKana(){
		return productNameKana;
	}
	public void setProductNameKana(String productNameKana){
		this.productNameKana = productNameKana;
	}
	public String getProductDescription(){
		return productDescription;
	}
	public void setProductDescription(String productDescription){
		this.productDescription = productDescription;
	}
	public String getPrice(){
		return price;
	}
	public void setPrice(String price){
		this.price = price;
	}
	public String getImageFilePath(){
		return imageFilePath;
	}
	public void setImageFilePath(String imageFilePath){
		this.imageFilePath = imageFilePath;
	}
	public String getImageFileName(){
		return imageFileName;
	}
	public void setImageFileName(String imageFileName){
		this.imageFileName = imageFileName;
	}
	public String getReleaseCompany(){
		return releaseCompany;
	}
	public void setReleaseCompany(String releaseCompany){
		this.releaseCompany = releaseCompany;
	}
	public String getReleaseDate(){
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate){
		this.releaseDate = releaseDate;
	}


	public List<String> getProductNameErrorMessageList(){
		return productNameErrorMessageList;
	}
	public void setProductNameErrorMessageList(List<String> productNameErrorMessageList){
		this.productNameErrorMessageList = productNameErrorMessageList;
	}
	public List<String> getProductNameKanaErrorMessageList(){
		return productNameKanaErrorMessageList;
	}
	public void setProductNameKanaErrorMessageList(List<String> productNameKanaErrorMessageList){
		this.productNameKanaErrorMessageList = productNameKanaErrorMessageList;
	}
	public List<String> getProductDescriptionErrorMessageList(){
		return productDescriptionErrorMessageList;
	}
	public void setProductDescriptionErrorMessageList(List<String> productDescriptionErrorMessageList){
		this.productDescriptionErrorMessageList = productDescriptionErrorMessageList;
	}
	public List<String> getPriceErrorMessageList(){
		return priceErrorMessageList;
	}
	public void setPriceErrorMessageList(List<String> priceErrorMessageList){
		this.priceErrorMessageList = priceErrorMessageList;
	}
	public List<String> getReleaseCompanyErrorMessageList(){
		return releaseCompanyErrorMessageList;
	}
	public void setReleaseCompanyErrorMessageList(List<String> releaseCompanyErrorMessageList){
		this.releaseCompanyErrorMessageList = releaseCompanyErrorMessageList;
	}
	public List<String> getReleaseDateErrorMessageList(){
		return releaseDateErrorMessageList;
	}
	public void setReleaseDateErrorMessageList(List<String> releaseDateErrorMessageList){
		this.releaseDateErrorMessageList = releaseDateErrorMessageList;
	}
	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public File getUserImage(){
		return userImage;
	}
	public void setUserImage(File userImage){
		this.userImage = userImage;
	}
	public String getUserImagePathContentType(){
		return userImagePathContentType;
	}
	public void setUserImagePathContentType(String userImagePathContentType){
		this.userImagePathContentType = userImagePathContentType;
	}
	public String getUserImageFileName(){
		return userImageFileName;
	}
	public void setUserImageFileName(String userImageFileName){
		this.userImageFileName = userImageFileName;
	}
	public List<String> getCategoryIdList() {
		return categoryIdList;
	}
	public void setCategoryIdList(List<String> categoryIdList) {
		this.categoryIdList = categoryIdList;
	}
	public List<String> getUserImageFileNameErrorMessageList() {
		return userImageFileNameErrorMessageList;
	}
	public void setUserImageFileNameErrorMessageList(List<String> userImageFileNameErrorMessageList) {
		this.userImageFileNameErrorMessageList = userImageFileNameErrorMessageList;
	}


}
