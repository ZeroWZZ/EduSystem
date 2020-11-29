package com.qdu.pojo;

public class CoursePlan  implements java.io.Serializable {
     private Integer id;
     private String courseid;
     private String batch;
     private String teacherid;

    public CoursePlan() {
    }
    public CoursePlan(Integer id) {
        this.id = id;
    }
    public CoursePlan(Integer id, String courseid, String batch, String teacherid) {
       this.id = id;
       this.courseid = courseid;
       this.batch = batch;
       this.teacherid = teacherid;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getCourseid() {
        return this.courseid;
    }
    
    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }
    public String getBatch() {
        return this.batch;
    }
    
    public void setBatch(String batch) {
        this.batch = batch;
    }
    public String getTeacherid() {
        return this.teacherid;
    }
    
    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid;
    }
}


