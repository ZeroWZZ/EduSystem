package com.qdu.service;
import com.qdu.dao.StudentDAO;
import com.qdu.pojo.Student;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory; 
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
//事务的使用可以在dao层，也可以在Service层，建议在Service。@Transactional:该注解用于指定事务，
//可以用在类之前，如果用在类前，说明该类中的所有方法使用该事务。也可以用在方法前，说明事务使用在该方法中
@Service
public class StudentService{
 
    @Autowired
    private StudentDAO dao;
    
    @Transactional
    public Student getStudentById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional
    public List getStudentList() {
        return dao.getAll();
    }
    
    @Transactional
    public List getStudentListByBatchName(String batchName) {
        return dao.getListByBatchName(batchName);
    }
    
    @Transactional
    public List getStudentListByBatchNameAndPage(String batchName,int pageNumber, int pageSize) {
        return dao.getListByBatchNameAndPage(batchName,pageNumber, pageSize);
    }

    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addStudent(Student student) {
         dao.insert(student);
    }
    
    @Transactional
    public void updateStudent(Student student) {
        dao.update(student);
    }
    
    @Transactional
    public void deleteStudent(String id) {
        dao.deleteById(id);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return dao.getListByPageNumberAndSize(pageNumber, pageSize);
    }

    @Transactional
    public Student validateLogin(String stuId, String stuPSD) {
        Student s=dao.getOneById(stuId);
        if(s!=null && s.getPassword().equals(stuPSD)){
           return s;
        }else{
            return null;
        }
    }
}
