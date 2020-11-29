package com.qdu.dao;

import com.qdu.pojo.ProfessionalPlan;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProfessionalPlanDAO{

    @Autowired
    private SessionFactory sessionFactory;
 
    public void insert(ProfessionalPlan professionalPlan) {
        Session session = sessionFactory.getCurrentSession();
        session.save(professionalPlan); 
    }

    public void update(ProfessionalPlan professionalPlan) {
        Session session = sessionFactory.getCurrentSession();
        session.update(professionalPlan);
    }

    public List<ProfessionalPlan> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from ProfessionalPlan");
        List list = query.list();
        return list;
    }

    public void deleteById(int id) { 
        Session session = sessionFactory.getCurrentSession();
        session.delete(new ProfessionalPlan(id));
    }

    public ProfessionalPlan getOneById(int id) {
        Session session = sessionFactory.getCurrentSession();
        ProfessionalPlan s = (ProfessionalPlan) session.get(ProfessionalPlan.class, id);
        return s;
    }
    
    public List<ProfessionalPlan> getProfessionalPlanByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from ProfessionalPlan where professional=:name");
        query.setParameter("name", name);
        List list = query.list();
        return list;
    }

    public List getProfessionalPlanLinkedCourse(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createNativeQuery("select Course.name,type,weight,year,term from Course,ProfessionalPlan,Batch where Course.name=ProfessionalPlan.course and Batch.professional=ProfessionalPlan.professional and Batch.name=:name");
        query.setParameter("name", name);//赋值
        List list = query.getResultList();//得到结果集
        return list;
    }
    
    public List<ProfessionalPlan> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from ProfessionalPlan");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
        return list;
    }

}