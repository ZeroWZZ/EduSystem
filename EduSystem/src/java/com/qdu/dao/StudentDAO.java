package com.qdu.dao;
import com.qdu.pojo.Student;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDAO{

    @Autowired
    private SessionFactory sessionFactory;
        
    public void insert(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.save(student); 
    }

    public void update(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.update(student);
    }
    
    public void deleteById(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Student(id));

    }

    public Student getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Student s = (Student) session.get(Student.class, id);
        return s; 
    }

    public List<Student> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student");
        List list = query.list();
        return list;
    }

    public List<Student> getListByBatchName(String batchName) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student where batch=:batch");
        query.setParameter("batch", batchName);
        List list = query.list(); 
        return list;
    }
 
    public List<Student> getListByBatchNameAndPage(String batchName,int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student where batch=:batch");
        query.setParameter("batch", batchName);
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
        return list;
    }
    
    public List<Student> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
//        session.close();
        return list;
    }
}