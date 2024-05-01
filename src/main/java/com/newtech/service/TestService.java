package com.newtech.service;

import com.newtech.model.User;
import com.newtech.util.HibernateUtil;
import org.hibernate.Session;

public class TestService {
    public String checkOddOrEven(int number) {
        if (number % 2 == 0) {
            return "even";
        } else {
            return "odd";
        }
    }
}
