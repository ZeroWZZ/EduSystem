package com.qdu.service;

import com.qdu.dao.CoursePlanDAO;
import com.qdu.dao.CoursePlanDAO;
import com.qdu.pojo.CoursePlan;
import java.util.List;
import javax.annotation.Resource;
import javax.transaction.TransactionScoped;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CoursePlanService{
 
    @Resource
    private CoursePlanDAO coursePlandao;
    
    @Transactional
    public CoursePlan getCoursePlanById(int id) {
        return coursePlandao.getOneById(id);
    }
    
    @Transactional
    public List getCoursePlanByTeacherId(String id){
        return coursePlandao.getCoursePlanByTeacherId(id);
    }
    @Transactional
    public List getBatchByTeacherId(String id){
        return coursePlandao.getBatchByTeacherId(id);
    }
    @Transactional
    public List getCourseByTeacherId(String id){
        return coursePlandao.getCourseByTeacherId(id);
    }
    
    @Transactional
    public List getCoursePlanList() {
        return coursePlandao.getAll();
    }

    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addCoursePlan(CoursePlan coursePlan) {
         coursePlandao.insert(coursePlan);
    }
    
    @Transactional
    public void updateCoursePlan(CoursePlan coursePlan) {
        coursePlandao.update(coursePlan);
    }
    
    @Transactional
    public void deleteCoursePlan(int id) { 
        coursePlandao.deleteById(id);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return coursePlandao.getListByPageNumberAndSize(pageNumber, pageSize);
    }
    
}
