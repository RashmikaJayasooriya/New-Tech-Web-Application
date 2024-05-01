package com.newtech.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
public class SubCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String description;
    @ManyToOne
    private Category categoryValue;
    @OneToMany(mappedBy = "subCategory")
    private List<SubCategoryTechnicalSpecification> subCategoryTechnicalSpecifications;
    @OneToMany(mappedBy = "subCategory")
    private List<SubCategoryBrand> subCategoryBrands;
    @OneToMany(mappedBy = "subCategory", cascade = CascadeType.ALL)
    private List<Product> products = new ArrayList<>();

    public SubCategory() {
    }

    public SubCategory(int id, String name, String description) {
        this.id = id;
        this.name = name;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getCategoryValue() {
        return categoryValue;
    }

    public void setCategoryValue(Category categoryValue) {
        this.categoryValue = categoryValue;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<SubCategoryTechnicalSpecification> getSubCategoryTechnicalSpecifications() {
        return subCategoryTechnicalSpecifications;
    }

    public void setSubCategoryTechnicalSpecifications(List<SubCategoryTechnicalSpecification> subCategoryTechnicalSpecifications) {
        this.subCategoryTechnicalSpecifications = subCategoryTechnicalSpecifications;
    }

    public List<SubCategoryBrand> getSubCategoryBrands() {
        return subCategoryBrands;
    }

    public void setSubCategoryBrands(List<SubCategoryBrand> subCategoryBrands) {
        this.subCategoryBrands = subCategoryBrands;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
