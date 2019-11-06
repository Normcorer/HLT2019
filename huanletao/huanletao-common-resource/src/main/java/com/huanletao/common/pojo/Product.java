package com.huanletao.common.pojo;

import java.util.Date;

public class Product {
 private String productId;
 private String productName;
 private Double productPrice;
 private Integer sales;
 private String  productImgurl;
 private Integer productNum;
 private String  productDescription;
 private Integer fCatelog;
 private Integer sCatelog;
 private Integer tCatelog;
 private Double productRprice;
 private Integer status;
 private Date startTime;
 private Date endTime;
public String getProductId() {
	return productId;
}
public void setProductId(String productId) {
	this.productId = productId;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public Double getProductPrice() {
	return productPrice;
}
public void setProductPrice(Double productPrice) {
	this.productPrice = productPrice;
}
public Integer getSales() {
	return sales;
}
public void setSales(Integer sales) {
	this.sales = sales;
}
public String getProductImgurl() {
	return productImgurl;
}
public void setProductImgurl(String productImgurl) {
	this.productImgurl = productImgurl;
}
public Integer getProductNum() {
	return productNum;
}
public void setProductNum(Integer productNum) {
	this.productNum = productNum;
}
public String getProductDescription() {
	return productDescription;
}
public void setProductDescription(String productDescription) {
	this.productDescription = productDescription;
}
public Integer getfCatelog() {
	return fCatelog;
}
public void setfCatelog(Integer fCatelog) {
	this.fCatelog = fCatelog;
}
public Integer getsCatelog() {
	return sCatelog;
}
public void setsCatelog(Integer sCatelog) {
	this.sCatelog = sCatelog;
}
public Integer gettCatelog() {
	return tCatelog;
}
public void settCatelog(Integer tCatelog) {
	this.tCatelog = tCatelog;
}
public Double getProductRprice() {
	return productRprice;
}
public void setProductRprice(Double productRprice) {
	this.productRprice = productRprice;
}
public Integer getStatus() {
	return status;
}
public void setStatus(Integer status) {
	this.status = status;
}
public Date getStartTime() {
	return startTime;
}
public void setStartTime(Date startTime) {
	this.startTime = startTime;
}
public Date getEndTime() {
	return endTime;
}
public void setEndTime(Date endTime) {
	this.endTime = endTime;
}
@Override
public String toString() {
	return "Product [productId=" + productId + ", productName=" + productName + ", productPrice=" + productPrice
			+ ", sales=" + sales + ", productImgurl=" + productImgurl + ", productNum=" + productNum
			+ ", productDescription=" + productDescription + ", fCatelog=" + fCatelog + ", sCatelog=" + sCatelog
			+ ", tCatelog=" + tCatelog + ", productRprice=" + productRprice + ", status=" + status + ", startTime="
			+ startTime + ", endTime=" + endTime + "]";
}

}
