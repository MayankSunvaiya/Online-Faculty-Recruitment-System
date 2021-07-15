
package dto;
import java.io.Serializable;
public class Candidate implements Serializable
{
    private String fname,lname,email,password,gender,date,address,mobile,qualification,percentage,experience,status;

    public Candidate() {
    }

    public Candidate(String fname, String lname, String email, String password, String gender, String date, String address, String mobile, String qualification, String percentage, String experience, String status) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.date = date;
        this.address = address;
        this.mobile = mobile;
        this.qualification = qualification;
        this.percentage = percentage;
        this.experience = experience;
        this.status = status;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getPercentage() {
        return percentage;
    }

    public void setPercentage(String percentage) {
        this.percentage = percentage;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
