package com.qdu.dao;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import com.qdu.pojo.Teacher;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

@Repository
public class TeacherDAO{
    
    @Autowired
    private SessionFactory sessionFactory;
        
    public void update(Teacher teacher) {
        Session session = sessionFactory.getCurrentSession();
        session.update(teacher);
    }
    
    public void insert(Teacher teacher) {
        Session session = sessionFactory.getCurrentSession();
        session.save(teacher); 
    }

    public Teacher getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Teacher s = (Teacher) session.get(Teacher.class, id);
        return s; 
    }
 
    public void deleteById(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Teacher(id));

    }

    public List<Teacher> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Teacher");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
//        session.close();
        return list;
    }
    
    public List<Teacher> getTeacherByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Teacher where name=:name");
        query.setParameter("name", name);
        List list = query.list(); 
        return list;
    }
    
    public List<Teacher> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Teacher");
        List list = query.list();
        return list;
    }

}