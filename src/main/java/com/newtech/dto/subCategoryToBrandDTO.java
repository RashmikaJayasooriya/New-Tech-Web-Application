package com.newtech.dto;

import java.util.List;

public class subCategoryToBrandDTO {
    private String brandValue;
    private List<String> subCategoriesValues;

    public String getBrandValue() {
        return brandValue;
    }

    public void setBrandValue(String brandValue) {
        this.brandValue = brandValue;
    }

    public List<String> getSubCategoriesValues() {
        return subCategoriesValues;
    }

    public void setSubCategoriesValues(List<String> subCategoriesValues) {
        this.subCategoriesValues = subCategoriesValues;
    }
}
