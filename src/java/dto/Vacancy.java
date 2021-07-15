package dto;
import java.io.Serializable;

public class Vacancy implements Serializable
{
    private int vid;
    private String post,subject,location,criteria,vacancy,salary,advdate,lastdate,email,recruiter,recruitername;

    public Vacancy() {
    }

    public Vacancy(int vid, String post, String subject, String location, String criteria, String vacancy, String salary, String advdate, String lastdate, String email, String recruiter, String recruitername) {
        this.vid = vid;
        this.post = post;
        this.subject = subject;
        this.location = location;
        this.criteria = criteria;
        this.vacancy = vacancy;
        this.salary = salary;
        this.advdate = advdate;
        this.lastdate = lastdate;
        this.email = email;
        this.recruiter = recruiter;
        this.recruitername = recruitername;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCriteria() {
        return criteria;
    }

    public void setCriteria(String criteria) {
        this.criteria = criteria;
    }

    public String getVacancy() {
        return vacancy;
    }

    public void setVacancy(String vacancy) {
        this.vacancy = vacancy;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getAdvdate() {
        return advdate;
    }

    public void setAdvdate(String advdate) {
        this.advdate = advdate;
    }

    public String getLastdate() {
        return lastdate;
    }

    public void setLastdate(String lastdate) {
        this.lastdate = lastdate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRecruiter() {
        return recruiter;
    }

    public void setRecruiter(String recruiter) {
        this.recruiter = recruiter;
    }

    public String getRecruitername() {
        return recruitername;
    }

    public void setRecruitername(String recruitername) {
        this.recruitername = recruitername;
    }
    
}
