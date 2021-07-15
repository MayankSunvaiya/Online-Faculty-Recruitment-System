
package dto;
import java.io.Serializable;

public class AppliedVacancy implements Serializable
{
    private int id,vid;
    private String candidateemail,recruiteremail,post,status;

    public AppliedVacancy() {
    }

    public AppliedVacancy(int id, int vid, String candidateemail, String recruiteremail, String post, String status) {
        this.id = id;
        this.vid = vid;
        this.candidateemail = candidateemail;
        this.recruiteremail = recruiteremail;
        this.post = post;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public String getCandidateemail() {
        return candidateemail;
    }

    public void setCandidateemail(String candidateemail) {
        this.candidateemail = candidateemail;
    }

    public String getRecruiteremail() {
        return recruiteremail;
    }

    public void setRecruiteremail(String recruiteremail) {
        this.recruiteremail = recruiteremail;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
