package com.qdu.dao;
import com.qdu.pojo.Score;
import com.qdu.pojo.ScoreId;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScoreDAO{  

    @Autowired
    private SessionFactory sessionFactory;
 
 
    public void insert(Score score) {
        Session session = sessionFactory.getCurrentSession();
        session.save(score); 
    }

    
    public void update(Score score) {
        Session session = sessionFactory.getCurrentSession();
        session.update(score);
    }

    public void deleteById(ScoreId id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(new Score(id));

    }


    public Score getOneById(ScoreId  id) {
        Session session = sessionFactory.getCurrentSession();
        Score s = (Score) session.get(Score.class, id);
        return s; 
    }

    public List<Score> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Score");
        List list = query.list();
        return list;
    }


    public List<Score> getListByPageNumberAndSize(int pageNumber, int pageSize) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Score");
        query.setFirstResult((pageNumber - 1) * pageSize); 
        query.setMaxResults(pageSize);
        List list = query.list(); 
//        session.close();
        return list;
    }

    public List getListById(String id,Boolean asc) {
        Session session = sessionFactory.getCurrentSession();
        Query query=null;
        if(asc==true)
            query = session.createNativeQuery("select score.course,score,pass,year,term from professionalPlan,student,score,batch where student.batch=batch.name and batch.professional=professionalPlan.professional and professionalPlan.course=score.course and score.stuid=student.id  and student.id=:id order by year,term desc;");
        else
            query = session.createNativeQuery("select score.course,score,pass,year,term from professionalPlan,student,score,batch where student.batch=batch.name and batch.professional=professionalPlan.professional and professionalPlan.course=score.course and score.stuid=student.id  and student.id=:id order by year desc,term asc;");
        query.setParameter("id", id);
        List list = query.getResultList();
        return list;
    }
    

    public List getListByTeacherId(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query query= session.createNativeQuery("select CoursePlan.batch,Score.stuid,Student.name sname,Course.name cname,Score.score,Score.pass from CoursePlan,Course,Score,Teacher,Student where CoursePlan.courseid=Course.id and teacherid=Teacher.id and CoursePlan.batch=Student.batch and Score.stuid=Student.id and Course.name=Score.course and CoursePlan.teacherid=:id");
        query.setParameter("id", id);
        List list = query.getResultList();
        return list;
    }
    
    public List getScoreListToTeacher(String id,String batch,String course) {
        Session session = sessionFactory.getCurrentSession();
        Query query= session.createNativeQuery("select CoursePlan.batch,Student.id,Student.name sname,Course.name cname from CoursePlan,Course,Teacher,Student where CoursePlan.courseid=Course.id and CoursePlan.teacherid=Teacher.id and CoursePlan.batch=Student.batch and teacherid=:id and Course.name=:course and CoursePlan.batch=:batch ");
        query.setParameter("id", id); 
        query.setParameter("batch", batch);
        query.setParameter("course",course);
        List list = query.getResultList();
        return list;
    }
    

    public List getStudentListToAddScore(String id,String batch,String course) {
        Session session = sessionFactory.getCurrentSession();
        Query query= session.createNativeQuery("select CoursePlan.batch,Student.id,Student.name sname,Course.name cname from CoursePlan,Course,Teacher,Student where CoursePlan.courseid=Course.id and CoursePlan.teacherid=Teacher.id and CoursePlan.batch=Student.batch and teacherid=:id and Course.name=:course and CoursePlan.batch=:batch and (Student.id,Course.name) not in(select Score.stuid,Score.course from Score)");
        query.setParameter("id", id); 
        query.setParameter("batch", batch);
        query.setParameter("course",course);
        List list = query.getResultList();
        return list;
    }
    

    public List getStudentListToExel(String id,String batch,String course) {
        Session session = sessionFactory.getCurrentSession();
        Query query= session.createNativeQuery("select CoursePlan.batch,Score.stuid,Student.name sname,Course.name cname,Score.score,Score.pass from CoursePlan,Course,Score,Teacher,Student where CoursePlan.courseid=Course.id and teacherid=Teacher.id and CoursePlan.batch=Student.batch and Score.stuid=Student.id and Course.name=Score.course and CoursePlan.teacherid=:id and Course.name=:course and CoursePlan.batch=:batch");
        query.setParameter("id", id); 
        query.setParameter("batch", batch);
        query.setParameter("course",course);
        List list = query.getResultList();
        return list;
    }
    
}