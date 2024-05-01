package com.newtech.service;

import com.newtech.model.User;
import com.newtech.model.UserType;
import com.newtech.util.HibernateUtil;
import jakarta.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserService {
    public User getById(Long id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(User.class, id);
    }

    public User getByEmail(String email) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("SELECT u FROM User u WHERE u.email=:email", User.class).setParameter("email", email).uniqueResult();
        } catch (NoResultException ex) {
            return null;
        }
    }
    public User getByEmailAndPassword(String email,String password) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("SELECT u FROM User u WHERE u.email=:email and u.password=:password", User.class)
                    .setParameter("email", email)
                    .setParameter("password",password)
                    .uniqueResult();
        } catch (NoResultException ex) {
            return null;
        }
    }

    public void saveUser(User user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(user);
        transaction.commit();
        session.close();
    }

//    Admin

    public User getByAdminEmailAndPassword(String email,String password) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("SELECT u FROM User u WHERE u.email=:email and u.password=:password and u.userType=:type", User.class)
                    .setParameter("email", email)
                    .setParameter("password",password)
                    .setParameter("type",UserType.ADMIN)
                    .uniqueResult();
        } catch (NoResultException ex) {
            return null;
        }
    }

    public User isAdmin(String email, String password) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("select u from User u where u.email=:email and u.password=:password and u.userType=:type", User.class)
                    .setParameter("email", email)
                    .setParameter("password", password)
                    .setParameter("type", UserType.ADMIN)
                    .uniqueResult();
        } catch (NoResultException ex) {
            return null;
        }
    }

}
