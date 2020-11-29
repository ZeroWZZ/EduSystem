package com.qdu.dao;

import com.qdu.pojo.Course;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CourseDAO{

    @Autowired
    private SessionFactory sessionFactory;
 
    
    public void insert(Course course) {
        Session session = sessionFactory.getCurrentSession();
        session.save(course); 
    }


    public void update(Course course) {
        Session session = sessionFactory.getCurrentSession();
        session.update(course);
    }

    public List<Course> getAll() {
        System.err.println(sessionFactory==null);
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Course");
        List list = query.list();
        return list;
    }
    
    public void deleteById(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Course(id));
    }

    public Course getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Course s = (Course) session.get(Course.class, id);
        return s;
    }

    public List<Course> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Course");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
        return list;
    }
    
}