package com.qdu.dao;

import com.qdu.pojo.CoursePlan;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CoursePlanDAO{

    @Autowired
    private SessionFactory sessionFactory;
    
     public void insert(CoursePlan coursePlan) {
        Session session = sessionFactory.getCurrentSession();
        session.save(coursePlan); 
    }

    public void update(CoursePlan coursePlan) {
        Session session = sessionFactory.getCurrentSession();
        session.update(coursePlan);
    }
     
    public List<CoursePlan> getAll() {
        System.err.println(sessionFactory==null);
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CoursePlan");
        List list = query.list();
        return list;
    }

    public void deleteById(int id) { 
        Session session = sessionFactory.getCurrentSession();
        session.delete(new CoursePlan(id));
    }

    public CoursePlan getOneById(int id) {
        Session session = sessionFactory.getCurrentSession();
        CoursePlan s = (CoursePlan) session.get(CoursePlan.class, id);
        return s;
    }
    
    public List<CoursePlan> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CoursePlan");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
        return list;
    }

    public List getCoursePlanByTeacherId(String id) { 
        System.out.println(sessionFactory==null);
        Session session = sessionFactory.getCurrentSession();
        System.out.println(id);
        System.out.println(session==null);
        Query query = session.createNativeQuery("select CoursePlan.batch,Course.name from CoursePlan,Course,Teacher where CoursePlan.teacherid=Teacher.id and CoursePlan.courseid=Course.id and Teacher.id=:id");
        
        query.setParameter("id", id);
        List list=query.list();
        System.out.println(list==null);
        return list;  
    }

    public List getCourseByTeacherId(String id) { 
        System.out.println(sessionFactory==null);
        Session session = sessionFactory.getCurrentSession();
        System.out.println(id);
        System.out.println(session==null);
        Query query = session.createNativeQuery("select distinct Course.name from CoursePlan,Course,Teacher where CoursePlan.teacherid=Teacher.id and CoursePlan.courseid=Course.id and Teacher.id=:id");
        query.setParameter("id", id);
        List list=query.list();
        System.out.println(list==null);
        return list;  
    }

    public List getBatchByTeacherId(String id) { 
        System.out.println(sessionFactory==null);
        Session session = sessionFactory.getCurrentSession();
        System.out.println(id);
        System.out.println(session==null);
        Query query = session.createNativeQuery("select distinct CoursePlan.batch from CoursePlan,Course,Teacher where CoursePlan.teacherid=Teacher.id and CoursePlan.courseid=Course.id and Teacher.id=:id");
        query.setParameter("id", id);
        List list=query.list();
        System.out.println(list==null);
        return list;  
    }
     
}