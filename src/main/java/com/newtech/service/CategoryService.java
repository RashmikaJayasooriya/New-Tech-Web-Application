package com.newtech.service;

import com.newtech.model.*;
import com.newtech.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CategoryService {
    public List<Category> getAllCategories(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT c FROM Category c", Category.class).getResultList();
    }

    public List<SubCategory> getAllSubCategories(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT sc FROM SubCategory sc", SubCategory.class).getResultList();
    }

    public List<SubCategory> getAllSubCategoriesRelateToCategory(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT sc FROM SubCategory sc WHERE sc.categoryValue=:id", SubCategory.class).setParameter("id",category).getResultList();
    }

    public List<Brand> getAllBrands(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT b FROM Brand b", Brand.class).getResultList();
    }

    public List<SubCategoryBrand> getAllBrandsRelateToSubCategory(SubCategory subCategory){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT sb FROM SubCategoryBrand sb WHERE sb.subCategory=:id", SubCategoryBrand.class).setParameter("id",subCategory).getResultList();
    }

    public List<TechnicalSpecification> getAllTechnicalSpecifications(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT t FROM TechnicalSpecification t", TechnicalSpecification.class).getResultList();
    }

    public Category getCategoryByName(String name){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT c FROM Category c WHERE c.name=:name", Category.class).setParameter("name", name).uniqueResult();
    }
    public Category getCategoryById(String id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(Category.class,id);
    }
    public SubCategory getsubCategoryById(String id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(SubCategory.class,id);
    }
    public Brand getBrandById(String id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(Brand.class,id);
    }
    public Brand getBrandByName(String name){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT b FROM Brand b WHERE b.name=:name", Brand.class).setParameter("name", name).uniqueResult();
    }
    public SubCategory getsubCategoryByName(String name){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT c FROM SubCategory c WHERE c.name=:name", SubCategory.class).setParameter("name", name).uniqueResult();
    }
    public TechnicalSpecification getTechnicalSpecificationByName(String name){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT t FROM TechnicalSpecification t WHERE t.name=:name", TechnicalSpecification.class).setParameter("name", name).uniqueResult();
    }
    public TechnicalSpecification getTechnicalSpecificationById(String id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(TechnicalSpecification.class,Integer.parseInt(id));
    }
    public SubCategoryTechnicalSpecification getTechnicalSpecificationSubCategoryRelationshipById(SubCategory subCategoryId, TechnicalSpecification technicalSpecificationId){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT s FROM SubCategoryTechnicalSpecification s WHERE s.subCategory=:subcid AND s.technicalSpecification=:techspecid", SubCategoryTechnicalSpecification.class).setParameter("subcid", subCategoryId).setParameter("techspecid",technicalSpecificationId).uniqueResult();
    }
    public SubCategoryBrand getBrandSubCategoryRelationshipById(Brand brandId, SubCategory subCategoryId){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT s FROM SubCategoryBrand s WHERE s.subCategory=:subcid AND s.brand=:branid", SubCategoryBrand.class).setParameter("subcid", subCategoryId).setParameter("branid",brandId).uniqueResult();
    }

    public void addCategory(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(category);
        transaction.commit();
        session.close();
    }
    public void addBrand(Brand brand){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(brand);
        transaction.commit();
        session.close();
    }
    public void addSubCategory(SubCategory subCategory){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(subCategory);
        transaction.commit();
        session.close();
    }

    public void addTechnicalSpecification(TechnicalSpecification technicalSpecification){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(technicalSpecification);
        transaction.commit();
        session.close();
    }

    public void addTechnicalSpecificationToSubCategory(SubCategoryTechnicalSpecification subCategoryTechnicalSpecification){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(subCategoryTechnicalSpecification);
        transaction.commit();
        session.close();
    }

    public void addSubCategoryToBrand(SubCategoryBrand subCategoryBrand){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(subCategoryBrand);
        transaction.commit();
        session.close();
    }

}
