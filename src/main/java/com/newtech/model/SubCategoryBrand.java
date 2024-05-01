package com.newtech.model;

import jakarta.persistence.*;

@Entity
@Table(name = "subCategoryHasBrand")
public class SubCategoryBrand {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "subCategory_id")
    private SubCategory subCategory;

    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;

    public SubCategoryBrand() {
    }

    public SubCategoryBrand(Long id, SubCategory subCategory, Brand brand) {
        this.id = id;
        this.subCategory = subCategory;
        this.brand = brand;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public SubCategory getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(SubCategory subCategory) {
        this.subCategory = subCategory;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }
}
