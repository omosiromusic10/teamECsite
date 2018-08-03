package com.internousdev.glanq.action;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2,interceptor.SessionAware;

import com.internousdev.glanq.dao.DestinationInfoDAO;
import com.internousdev.glanq.dto.DestinationInfoDTO;
import com.internousdev.glanq.dto.PurchaseHistoryInfoDTO;
import com.internousdev.glanq.util.CommonUtility;
import com.opensymphony.xwork2.ActionSupport;

public class SettlementConfirmAction extends ActionSupport implements SessionAware{

private String categoryId;
private Collection<String> checkList;
private String productId;
private String productName;
private String productNameKana;
private String imageFilePath;
private String imageFileName;
private String price;
private String releaseCompany;
private String releaseDate;
private String productCount;
private String subtotal;
private Map<String, Object> session;
public String execute(){
String result = ERROR;

if(session.containsKey("loginId")){
DestinationInfoDAO destinationInfoDAO = new DestinationInfoDAO();
List<DestinationInfoDTO> destinationInfoDtoList = newArrayList<>();
try{
destinationInfoDtoList = destinationInfoDAO.getDestinationInfo(String.valueOf(session.get("loginId")));
Iterator<DestinationInfoDTO> iterator = destinationInfoDtoList.iterator();
if(!(iterator.hasNext())){
destinationInfoDtoList = null;
}
session.put("destinationInfoDtoList" , destinationInfoDtoList);
} catch (SQLException e){
e.printStackTrace();
}
}

List<PurchaseHistoryInfoDTO> purchaseHistoryInfoDtoList = new ArrayList<PurchaseHistoryInfoDTO>();

CommonUtility commonUtility = new CommonUtility();
String[] productIdList = commonUtility.parseArrayList(priductId);
String[] productNameList= commonUtility.parseArrayList(productName);
String[] productNameKanaList= commonUtility.parseArrayList(productNameKana);
String[] imageFilePathList= commonUtility.parseArrayList(imageFilePath);
String[] imageFileNameList= commonUtility.parseArrayList(imageFileName);
String[] priceList= commonUtility.parseArrayList(price);
String[] releaseCompanyList= commonUtility.parseArrayList(releaseCompany);
String[] releaseDateList= commonUtility.parseArrayList(releaseDate);
String[] productCountList= commonUtility.parseArrayList(productCount);
String[] subtotalList= commonUtility.parseArrayList(subtotal);
for(int i=0; i<productIdList.length; i++){
PurchaseHistoryInfoDTO purchaseHistoryInfoDTO = new PurchaseHistoryInfoDTO();
purchaseHistoryInfoDTO.setUserId(String.valueOf(session.get("loginId")));
purchaseHistoryInfoDTO.setProductId(Integer.parseInt(String.valueOf(productIdList[i])));
purchaseHistoryInfoDTO.setProductName(String.valueOf(productNameList[i]));
purchaseHistoryInfoDTO.setProductNameKana(String.valueOf(productNameKanaList[i]));
purchaseHistoryInfoDTO.setImageFilePath(String.valueOf(imageFilePathList[i]));
purchaseHistoryInfoDTO.setImageFileName(String.valueOf(imageFileNameList[i]));
purchaseHistoryInfoDTO.setPrice(String.valueOf(priceList[i]));
purchaseHistoryInfoDTO.setReleaseCompany(String.valueOf(releaseCompanyList[i]));
} catch (ParseException e) {
e.printStackTrace();
}
purchaseHistoryInfoDTO.setProductCount(Integer.parseInt(String.valueOf(productCountList[i])));
purchaseHistoryInfoDTO.setSubtotal(Integer.parseInt(String.valueOf(subtotalList[i])));
purchaseHistoryInfoDtoList.add(purchaseHistoryInfoDTO);
}
session.put("purchaseHistoryInfoDtoList" , purchaseHistoryDtoList);

if(!session.containsKey("loginId")){
result = ERROR,
} else {
 result = SUCCESS;
}
return result;
}