package com.qdu.dao;

import com.qdu.pojo.Administrator;
import com.qdu.pojo.Administrator;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO{
    @Autowired
    private SessionFactory sessionFactory;
    
    public void update(Administrator admin) {
        Session session = sessionFactory.getCurrentSession();
        session.update(admin);
    }

    public Administrator getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Administrator s = (Administrator) session.get(Administrator.class, id);
        return s; 
    }
}