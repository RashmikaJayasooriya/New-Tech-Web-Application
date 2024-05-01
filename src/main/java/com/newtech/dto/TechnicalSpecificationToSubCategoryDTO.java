package com.newtech.dto;

import java.util.List;

public class TechnicalSpecificationToSubCategoryDTO {
    private String subCategoryValue;
    private List<String> technicalSpecificationValues;

    public String getSubCategoryValue() {
        return subCategoryValue;
    }

    public void setSubCategoryValue(String subCategoryValue) {
        this.subCategoryValue = subCategoryValue;
    }

    public List<String> getTechnicalSpecificationValues() {
        return technicalSpecificationValues;
    }

    public void setTechnicalSpecificationValues(List<String> technicalSpecificationValues) {
        this.technicalSpecificationValues = technicalSpecificationValues;
    }
}
