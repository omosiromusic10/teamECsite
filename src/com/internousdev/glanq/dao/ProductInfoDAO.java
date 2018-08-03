package com.internousdev.glanq.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.glanq.dto.ProductInfoDTO;
import com.internousdev.glanq.util.DBConnector;

// [!]動作未確認
public class ProductInfoDAO {

	// 商品情報をすべて取得するメソッド。
	public List<ProductInfoDTO> getProductInfoList() throws SQLException{
		ArrayList<ProductInfoDTO> productInfoList = new ArrayList<ProductInfoDTO>();
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "SELECT * from product_info";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ProductInfoDTO pInfo = new ProductInfoDTO();
				pInfo.setId(rs.getInt("id"));
				pInfo.setProductId(rs.getInt("product_id"));
				pInfo.setProductName(rs.getString("product_name"));
				pInfo.setProductNameKana(rs.getString("product_name_kana"));
				pInfo.setProductDescription(rs.getString("product_description"));
				pInfo.setCategoryId(rs.getInt("category_id"));
				pInfo.setPrice(rs.getInt("price"));
				pInfo.setImageFilePath(rs.getString("image_file_path"));
				pInfo.setImageFileName(rs.getString("image_file_name"));
				pInfo.setReleaseDate(rs.getDate("release_date"));
				pInfo.setReleaseCompany(rs.getString("release_company"));
				pInfo.setStatus(rs.getInt("status"));
				pInfo.setRegistDate(rs.getDate("regist_date"));
				pInfo.setUpdateDate(rs.getDate("update_date"));
				productInfoList.add(pInfo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return productInfoList;
	}


	// 以下、作成予定。

	// 商品IDを参照して、その商品の商品情報を取得するメソッド。
	public ProductInfoDTO getProductInfo(int productId) throws SQLException{
		ProductInfoDTO pInfo = new ProductInfoDTO();
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "SELECT * from product_info WHERE product_id = ?";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, productId);
			ResultSet rs = ps.executeQuery();
			pInfo.setId(rs.getInt("id"));
			pInfo.setProductId(rs.getInt("product_id"));
			pInfo.setProductName(rs.getString("product_name"));
			pInfo.setProductNameKana(rs.getString("product_name_kana"));
			pInfo.setProductDescription(rs.getString("product_description"));
			pInfo.setCategoryId(rs.getInt("category_id"));
			pInfo.setPrice(rs.getInt("price"));
			pInfo.setImageFilePath(rs.getString("image_file_path"));
			pInfo.setImageFileName(rs.getString("image_file_name"));
			pInfo.setReleaseDate(rs.getDate("release_date"));
			pInfo.setReleaseCompany(rs.getString("release_company"));
			pInfo.setStatus(rs.getInt("status"));
			pInfo.setRegistDate(rs.getDate("regist_date"));
			pInfo.setUpdateDate(rs.getDate("update_date"));
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return pInfo;
	}


	// 関連商品のリストを取得するメソッド。その商品のカテゴリIDと商品IDと、表示数に関連する数値を参照。
	public List<ProductInfoDTO> getProductInfoListByCategoryId(int categoryId, int productId, int limitOffset, int limitRowCount) throws SQLException{
		ArrayList<ProductInfoDTO> productInfoListByCategoryId = new ArrayList<ProductInfoDTO>();
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "SELECT * from product_info WHERE category_id = ? AND product_id not in (?) order by rand() limit ?, ?";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, categoryId);
			ps.setInt(2, productId);
			ps.setInt(3, limitOffset);
			ps.setInt(4, limitRowCount);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ProductInfoDTO pInfo = new ProductInfoDTO();
				pInfo.setId(rs.getInt("id"));
				pInfo.setProductId(rs.getInt("product_id"));
				pInfo.setProductName(rs.getString("product_name"));
				pInfo.setProductNameKana(rs.getString("product_name_kana"));
				pInfo.setProductDescription(rs.getString("product_description"));
				pInfo.setCategoryId(rs.getInt("category_id"));
				pInfo.setPrice(rs.getInt("price"));
				pInfo.setImageFilePath(rs.getString("image_file_path"));
				pInfo.setImageFileName(rs.getString("image_file_name"));
				pInfo.setReleaseDate(rs.getDate("release_date"));
				pInfo.setReleaseCompany(rs.getString("release_company"));
				pInfo.setStatus(rs.getInt("status"));
				pInfo.setRegistDate(rs.getDate("regist_date"));
				pInfo.setUpdateDate(rs.getDate("update_date"));
				productInfoListByCategoryId.add(pInfo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return productInfoListByCategoryId;
	}


	// 商品検索によって対象の商品リストを取得するメソッド。検索欄のキーワードをリスト化したものならびにカテゴリIDを参照。
	// すべてのカテゴリ を選択した場合は、この下にある getProductInfoListAll を用いる。
	public List<ProductInfoDTO> getProductInfoListByKeywords(String[] keywordsList, String categoryId) throws SQLException{
		ArrayList<ProductInfoDTO> productInfoListByKeywords = new ArrayList<ProductInfoDTO>();
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "SELECT * from product_info WHERE categoryId = " + categoryId + " AND ";
		boolean iFlg = true;
		// 拡張for文
		for(String keyword : keywordsList){
			if(iFlg){
				sql += "(product_name like % " + keyword + " % or product_name_kana like % " + keyword + "%) ";
				iFlg = false;
			}else{
				sql += "AND (product_name like % " + keyword + " % or product_name_kana like % " + keyword + "%)";
			}
		}
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ProductInfoDTO pInfo = new ProductInfoDTO();
				pInfo.setId(rs.getInt("id"));
				pInfo.setProductId(rs.getInt("product_id"));
				pInfo.setProductName(rs.getString("product_name"));
				pInfo.setProductNameKana(rs.getString("product_name_kana"));
				pInfo.setProductDescription(rs.getString("product_description"));
				pInfo.setCategoryId(rs.getInt("category_id"));
				pInfo.setPrice(rs.getInt("price"));
				pInfo.setImageFilePath(rs.getString("image_file_path"));
				pInfo.setImageFileName(rs.getString("image_file_name"));
				pInfo.setReleaseDate(rs.getDate("release_date"));
				pInfo.setReleaseCompany(rs.getString("release_company"));
				pInfo.setStatus(rs.getInt("status"));
				pInfo.setRegistDate(rs.getDate("regist_date"));
				pInfo.setUpdateDate(rs.getDate("update_date"));
				productInfoListByKeywords.add(pInfo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return productInfoListByKeywords;
	}


	// すべてのカテゴリ を選択した場合のキーワード検索。検索ワードのリストが必要。
	public ArrayList<ProductInfoDTO> getProductInfoListAll(String[] keywordsList) throws SQLException{
		ArrayList<ProductInfoDTO> productInfoListByKeywords = new ArrayList<ProductInfoDTO>();
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "SELECT * from product_info ";
		boolean iFlg = true;
		// 拡張for文
		for(String keyword : keywordsList){
			if(iFlg){
				sql += "(product_name like % " + keyword + " % or product_name_kana like % " + keyword + "%) ";
				iFlg = false;
			}else{
				sql += "AND (product_name like % " + keyword + " % or product_name_kana like % " + keyword + "%)";
			}
		}
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ProductInfoDTO pInfo = new ProductInfoDTO();
				pInfo.setId(rs.getInt("id"));
				pInfo.setProductId(rs.getInt("product_id"));
				pInfo.setProductName(rs.getString("product_name"));
				pInfo.setProductNameKana(rs.getString("product_name_kana"));
				pInfo.setProductDescription(rs.getString("product_description"));
				pInfo.setCategoryId(rs.getInt("category_id"));
				pInfo.setPrice(rs.getInt("price"));
				pInfo.setImageFilePath(rs.getString("image_file_path"));
				pInfo.setImageFileName(rs.getString("image_file_name"));
				pInfo.setReleaseDate(rs.getDate("release_date"));
				pInfo.setReleaseCompany(rs.getString("release_company"));
				pInfo.setStatus(rs.getInt("status"));
				pInfo.setRegistDate(rs.getDate("regist_date"));
				pInfo.setUpdateDate(rs.getDate("update_date"));
				productInfoListByKeywords.add(pInfo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return productInfoListByKeywords;
	}
}
