package com.newtech.dto;

public class SearchProductDTO {
   private String productName;
   private String productPrice;
   private Integer productCategory;
   private Integer productSubCategory;

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(String productPrice) {
        this.productPrice = productPrice;
    }

    public Integer getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(Integer productCategory) {
        this.productCategory = productCategory;
    }

    public Integer getProductSubCategory() {
        return productSubCategory;
    }

    public void setProductSubCategory(Integer productSubCategory) {
        this.productSubCategory = productSubCategory;
    }
}
