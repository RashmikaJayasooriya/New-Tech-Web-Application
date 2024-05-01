package com.newtech.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
public class ProductColor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    @OneToMany(mappedBy = "productColor", cascade = CascadeType.ALL)
    private List<ProductImage> productImages = new ArrayList<>();

    public ProductColor() {
    }

    public ProductColor(int id, String name, List<ProductImage> productImages) {
        this.id = id;
        this.name = name;
        this.productImages = productImages;
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

    public List<ProductImage> getProductImages() {
        return productImages;
    }

    public void setProductImages(List<ProductImage> productImages) {
        this.productImages = productImages;
    }
}
