package com.internousdev.glanq.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.glanq.dao.MCategoryDAO;
import com.internousdev.glanq.dao.ProductInfoDAO;
import com.internousdev.glanq.dto.MCategoryDTO;
import com.internousdev.glanq.dto.PaginationDTO;
import com.internousdev.glanq.dto.ProductInfoDTO;
import com.internousdev.glanq.util.InputChecker;
import com.internousdev.glanq.util.Pagination;
import com.opensymphony.xwork2.ActionSupport;

public class SearchItemAction extends ActionSupport implements SessionAware {
	private String categoryId;
	private String keywords;
	private String pageNo;
	private List<MCategoryDTO> mCategoryDTOList=new ArrayList<MCategoryDTO>();
	private List<String>keywordsErrorMessageList=new ArrayList<String>();
	private List<ProductInfoDTO> productInfoDTOList=new ArrayList<ProductInfoDTO>();
	private Map<String,Object>session;

	public String execute() throws SQLException{
		String result = ERROR;
	InputChecker inputChecker=new InputChecker();

//	検索ワードが"null"の時、空文字を挿入
	if(keywords==null){
		keywords="";

//	入力された情報を"InputChecker"を用いて有効であるかチェック
	keywordsErrorMessageList=inputChecker.docheck("検索ワード",keywords,0,6,true,true,true,true,false,true,true);
	ProductInfoDAO productInfoDAO=new ProductInfoDAO();

//	カテゴリーIDが０、または１が選択された時、検索は全商品の中から行われる
//	カテゴリーIDが２，３、または４が選択された時、検索はそれぞれのカテゴリーの中から行われる
	if("1".equals(categoryId)){
		productInfoDTOList=productInfoDAO.getProductInfoListAll(keywords.replaceAll("　"," ").split(" "));
		result=SUCCESS;
	}else if("2".equals(categoryId)|| "3".equals(categoryId) ||"4".equals(categoryId)){
		productInfoDTOList=productInfoDAO.getProductInfoListByKeywords(keywords.replaceAll("　", " ").split(" "),categoryId);
		result=SUCCESS;
	}else{
		productInfoDTOList=productInfoDAO.getProductInfoListAll(keywords.replaceAll("　"," ").split(" "));
		result=SUCCESS;
	}

//	iteratorメソッドを用いてリスト内のデータを順次参照し
//	次のデータがなくなったとき空データ"null"を挿入
	Iterator<ProductInfoDTO> iterator=productInfoDTOList.iterator();
	if(!(iterator.hasNext())){
		productInfoDTOList=null;
	}
	session.put("keywordsErrorMessageList", keywordsErrorMessageList);


//	session内に"MCategoryList"が存在しない場合
	if(!session.containsKey("mCategoryList")){

//	"mCategoryDaoList"にmCategoryDTOListの値を格納
		MCategoryDAO mCategoryDao=new MCategoryDAO();
		mCategoryDTOList=mCategoryDao.getMCategoryList();
		session.put("mCategoryDaoList", mCategoryDTOList);
	}

//	"productInfoDtoList"が"null"でない場合で次のif文へと移行し
//	"pageNo"が"nuLL"であれば1ページ目の、
//	そうでない場合は任意のページ情報を取得
	if(!(productInfoDTOList==null)){
		Pagination pagination=new Pagination();
		PaginationDTO paginationDTO=new PaginationDTO();
		int pageNO=Integer.parseInt(pageNo);
		if(pageNo==null){
			paginationDTO=pagination.initialize(productInfoDTOList,9);
		}else{
			paginationDTO=pagination.getPage(productInfoDTOList,9,(pageNO));
		}

//	sessionに各データを追加
		session.put("productInfoDtoList",paginationDTO.getCurrentProductInfoPage() );
		session.put("totalPageSize",paginationDTO.getTotalPageSize() );
		session.put("currentPageNo",paginationDTO.getCurrentPageNo() );
		session.put("totalRecordSize",paginationDTO.getTotalRecordSize() );
		session.put("startRecordNo",paginationDTO.getStartRecordNo() );
		session.put("endRecordNo",paginationDTO.getEndRecordNo() );
		session.put("previousPage",paginationDTO.isHasPreviousPage() );
		session.put("previousPageNo",paginationDTO.getPreviousPageNo() );
		session.put("nextPage",paginationDTO.isHasNextPage() );
		session.put("nextPageNo",paginationDTO.getNextPageNo() );
		}

//	上記にあったif文において"productInfoDtoList"が"null"であった場合は
//	"productInfoDTOList"のsession内に"null"を格納
	else{
			session.put("productInfoDTOList", null);
		}
	}return result;

	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getPageNo() {
		return pageNo;
	}

	public void setPageNo(String pageNo) {
		this.pageNo = pageNo;
	}

	public List<MCategoryDTO> getmCategoryDTOList() {
		return mCategoryDTOList;
	}

	public void setmCategoryDTOList(List<MCategoryDTO> mCategoryDTOList) {
		this.mCategoryDTOList = mCategoryDTOList;
	}

	public List<String> getKeywordsErrorMessageList() {
		return keywordsErrorMessageList;
	}

	public void setKeywordsErrorMessageList(List<String> keywordsErrorMessageList) {
		this.keywordsErrorMessageList = keywordsErrorMessageList;
	}

	public List<ProductInfoDTO> getProductInfoDTOList() {
		return productInfoDTOList;
	}

	public void setProductInfoDTOList(List<ProductInfoDTO> productInfoDTOList) {
		this.productInfoDTOList = productInfoDTOList;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}




}
