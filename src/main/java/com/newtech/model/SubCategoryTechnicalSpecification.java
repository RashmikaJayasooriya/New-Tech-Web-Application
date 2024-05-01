package com.newtech.model;


import jakarta.persistence.*;

@Entity
@Table(name = "subCategoryHasTechnicalSpecification")
public class SubCategoryTechnicalSpecification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "subCategory_id")
    private SubCategory subCategory;

    @ManyToOne
    @JoinColumn(name = "technicalSpecification_id")
    private TechnicalSpecification technicalSpecification;


    public SubCategoryTechnicalSpecification() {
    }

    public SubCategoryTechnicalSpecification(Long id, SubCategory subCategory, TechnicalSpecification technicalSpecification) {
        this.id = id;
        this.subCategory = subCategory;
        this.technicalSpecification = technicalSpecification;
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

    public TechnicalSpecification getTechnicalSpecification() {
        return technicalSpecification;
    }

    public void setTechnicalSpecification(TechnicalSpecification technicalSpecification) {
        this.technicalSpecification = technicalSpecification;
    }
}
