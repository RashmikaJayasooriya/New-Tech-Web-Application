package com.newtech.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String description;
    private String SKU;
    private Double price;
    private Double stockQuantity;
    private Double minStockTreshold;
    @ManyToOne
    private SubCategory subCategory;
    @ManyToOne
    private Brand brand;
    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private List<ProductImage> productImages = new ArrayList<>();
    @ManyToOne
    private ProductStatus status;

    public Product() {
    }

    public Product(int id, String name, String description, String SKU, Double price, Double stockQuantity, Double minStockTreshold, SubCategory subCategory, Brand brand, List<ProductImage> productImages, ProductStatus status) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.SKU = SKU;
        this.price = price;
        this.stockQuantity = stockQuantity;
        this.minStockTreshold = minStockTreshold;
        this.subCategory = subCategory;
        this.brand = brand;
        this.productImages = productImages;
        this.status = status;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSKU() {
        return SKU;
    }

    public void setSKU(String SKU) {
        this.SKU = SKU;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(Double stockQuantity) {
        this.stockQuantity = stockQuantity;
    }

    public Double getMinStockTreshold() {
        return minStockTreshold;
    }

    public void setMinStockTreshold(Double minStockTreshold) {
        this.minStockTreshold = minStockTreshold;
    }

    public List<ProductImage> getProductImages() {
        return productImages;
    }

    public void setProductImages(List<ProductImage> productImages) {
        this.productImages = productImages;
    }

    public ProductStatus getStatus() {
        return status;
    }

    public void setStatus(ProductStatus status) {
        this.status = status;
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
