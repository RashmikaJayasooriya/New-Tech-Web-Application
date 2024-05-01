package com.newtech.service;

import com.newtech.model.*;
import com.newtech.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ProductService {

    public List<Product> getAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query<Product> query = session.createQuery("FROM Product p ORDER BY p.name ASC", Product.class);
        return query.getResultList();
    }

    public Product getProductByName(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT c FROM Product c WHERE c.name=:name", Product.class).setParameter("name", name).uniqueResult();
    }

    public Product getProductById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(Product.class, id);
    }

    public List<Product> search(String name, String description, String category, String subCategory, String brand) {
        System.out.println(name+"=="+ subCategory+"=="+ category+"=="+ subCategory);
        System.out.println(!name.isEmpty());
        System.out.println(!description.isEmpty());
        System.out.println(!category.isEmpty());
        System.out.println(!subCategory.isEmpty());
        System.out.println(!brand.isEmpty());

        try {
            String baseQuery = "SELECT p FROM Product p LEFT JOIN p.subCategory sc LEFT JOIN p.subCategory.categoryValue c LEFT JOIN p.brand b LEFT JOIN p.productColor pc LEFT JOIN p.status ps where (:name is null or p.name LIKE :name) AND (:description is null or p.description LIKE :description) AND (:category is null or p.subCategory.categoryValue.name LIKE :category) AND (:subCategory is null or p.subCategory.name LIKE :subCategory) AND (:brand is null or p.brand.name LIKE :brand)";
            Session session = HibernateUtil.getSessionFactory().openSession();
            Query<Product> query = session.createQuery(baseQuery, Product.class);

            if (!name.isEmpty()) {
                System.out.println("a");
                query.setParameter("name", "%" + name + "%");
            } else {
                System.out.println("b");
                query.setParameter("name", null);
            }

            if (!description.isEmpty()) {
                System.out.println("c");
                query.setParameter("description", "%" + description + "%");
            } else {
                System.out.println("d");
                query.setParameter("description", null);
            }
            if (!category.isEmpty()) {
                System.out.println("c");
                query.setParameter("category", "%" + category + "%");
            } else {
                System.out.println("d");
                query.setParameter("category", null);
            }
            if (!subCategory.isEmpty()) {
                System.out.println("c");
                query.setParameter("subCategory", "%" + subCategory + "%");
            } else {
                System.out.println("d");
                query.setParameter("subCategory", null);
            }
            if (!brand.isEmpty()) {
                System.out.println("c");
                query.setParameter("brand", "%" + brand + "%");
            } else {
                System.out.println("d");
                query.setParameter("brand", null);
            }



//            if (category!=0) {
//                System.out.println("e");
//                query.setParameter("category", category );
//            } else {
//                System.out.println("f");
//                query.setParameter("category", null);
//            }
//
//            if (subCategory!=0) {
//                System.out.println("g");
//                query.setParameter("subCategory", subCategory);
//            } else {
//                System.out.println("h");
//                query.setParameter("subCategory", null);
//            }

            return query.getResultList();
        } catch (Exception ex) {
            System.out.println("exception");
            return new ArrayList<>();
        }
    }
    public void productDelete(Product product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.remove(product);
            transaction.commit();
            session.close();
        } catch (Exception ex) {
            transaction.rollback();
            ex.printStackTrace();
        }
    }

    public ProductColor getColorById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(ProductColor.class, id);
    }

    public SubCategory getSubCategoryById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(SubCategory.class, id);
    }

    public Brand getBrandById(String id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(Brand.class, id);
    }

    public ProductStatus getStatusById() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(ProductStatus.class, "1");
    }


    public void addProduct(Product product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(product);
        transaction.commit();
        session.close();
    }

    public void updateProduct(Product product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.merge(product);
        transaction.commit();
        session.close();
    }


    public void addTechnicalSpecificationToSubCategory(SubCategoryTechnicalSpecification subCategoryTechnicalSpecification) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(subCategoryTechnicalSpecification);
        transaction.commit();
        session.close();
    }

}

