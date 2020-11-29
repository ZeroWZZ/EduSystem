package com.qdu.pojo;

public class Student  implements java.io.Serializable {
     private String id;
     private String name;
     private String password;
     private String gender;
     private String batch;

    public Student() {
    }

    public Student(String id) {
        this.id = id;
    }
    
    public Student(String id, String name, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
    }
    public Student(String id, String name, String password, String gender, String batch) {
       this.id = id;
       this.name = name;
       this.password = password;
       this.gender = gender;
       this.batch = batch;
    }
   
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getBatch() {
        return this.batch;
    }
    
    public void setBatch(String batch) {
        this.batch = batch;
    }

}

