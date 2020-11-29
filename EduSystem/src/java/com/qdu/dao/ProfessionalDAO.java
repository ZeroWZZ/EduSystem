package com.qdu.dao;

import com.qdu.pojo.Batch;
import com.qdu.pojo.Professional;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProfessionalDAO{
      @Autowired
    private SessionFactory sessionFactory;
   
    public void insert(Professional professional) {
        Session session = sessionFactory.getCurrentSession();
        session.save(professional); 
    }

    public void update(Professional professional) {
        Session session = sessionFactory.getCurrentSession();
        session.update(professional);
    }
    
    public void deleteByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Professional(name));
    }

    public Professional getOneByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        Professional s = (Professional) session.get(Professional.class, name);
        return s; 
    }
    
    public List<Professional> getAll() { 
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Professional");
        List list = query.list();
        return list;
    }
    
    public List<Professional> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Professional");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
        return list;
    }
    
}