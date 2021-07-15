
package dao;

import dto.AppliedVacancy;
import dto.Candidate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import myconn.GetConnection;

public class CandidateDao 
{
       public int candidateLogin(String email,String password) throws SQLException
 {
     int i = 0;
     Connection con = GetConnection.getConnect();
     String query = "select * from candidate where email=? and password = ?";
     PreparedStatement ps = con.prepareStatement(query);
     ps.setString(1, email);
     ps.setString(2, password);
     
     ResultSet rs = ps.executeQuery();
     if(rs.next())
        i=1;
     con.close();
     return i;
 }
     public int addCandidate(Candidate obj) 
    {
        int i=0;
        Connection con = GetConnection.getConnect();
        String query = "insert into candidate(fname,lname,email,password,gender,date,address,mobile,qualification,percentage,experience,status) values(?,?,?,?,?,?,?,?,?,?,?,?)";
       try
       {
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, obj.getFname());
        ps.setString(2, obj.getLname());
        ps.setString(3, obj.getEmail());
        ps.setString(4, obj.getPassword());
        ps.setString(5, obj.getGender());
        ps.setString(6, obj.getDate());
        ps.setString(7, obj.getAddress());
        ps.setString(8, obj.getMobile());
        ps.setString(9, obj.getQualification());
        ps.setString(10, obj.getPercentage());
        ps.setString(11, obj.getExperience());
        ps.setString(12, "active");

        i = ps.executeUpdate();
        con.close();
       }
       catch(Exception e)
       {
		System.out.println("Exception : "+e);
           i=2;
       }
       return i;
    }
     
   public List<AppliedVacancy> getCandidateList(String email) throws SQLException
{
  List<AppliedVacancy> list=new ArrayList<>();
  Connection con=GetConnection.getConnect();
  String query="select * from appliedvacancy where candidateemail=?";
  PreparedStatement ps=con.prepareStatement(query);
  ps.setString(1,email);
  ResultSet rs=ps.executeQuery();
  while(rs.next())
  {
    AppliedVacancy rt=new AppliedVacancy();
    rt.setId(rs.getInt(1));
    rt.setVid(rs.getInt(2));
    rt.setCandidateemail(rs.getString(3));
    rt.setRecruiteremail(rs.getString(4));
    rt.setPost(rs.getString(5));
    rt.setStatus(rs.getString(6));
    list.add(rt);
  }
  return list;
}
}
