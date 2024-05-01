package com.newtech.model;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class TechnicalSpecification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    @OneToMany(mappedBy = "technicalSpecification")
    private List<SubCategoryTechnicalSpecification> subCategoryTechnicalSpecifications;


    public TechnicalSpecification() {
    }

    public TechnicalSpecification(int id, String name) {
        this.id = id;
        this.name = name;
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
}
