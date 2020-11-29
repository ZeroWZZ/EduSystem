package com.qdu.pojo;

public class Teacher  implements java.io.Serializable {
     private String id;
     private String name;
     private String password;
     private String gender;
     private String professional;
     private String email;

    public Teacher() {
    }

    public Teacher(String id) {
        this.id = id;
    }
    
    public Teacher(String id, String name, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
    }
    public Teacher(String id, String name, String password, String gender, String professional, String email) {
       this.id = id;
       this.name = name;
       this.password = password;
       this.gender = gender;
       this.professional = professional;
       this.email = email;
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
    public String getProfessional() {
        return this.professional;
    }
    
    public void setProfessional(String professional) {
        this.professional = professional;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

}


