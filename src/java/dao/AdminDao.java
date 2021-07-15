package dao;
import dto.Recruiter;
import  java.util.*;
import java.sql.*;
import myconn.GetConnection;
public class AdminDao 
{
 public int adminlogin(String email,String password) throws SQLException
 {
     int i = 0;
     Connection con = GetConnection.getConnect();
     String query = "select * from admin where email=? and password = ?";
     PreparedStatement ps = con.prepareStatement(query);
     ps.setString(1, email);
     ps.setString(2, password);
     
     ResultSet rs = ps.executeQuery();
     if(rs.next())
        i=1;
     con.close();
     return i;
 }
 public List<Recruiter> getRecruiterList() throws SQLException
 {
     ArrayList<Recruiter> list = new ArrayList<>();
     Connection con = GetConnection.getConnect();
     String query = "select * from recruiterdemo";
     PreparedStatement ps = con.prepareStatement(query);
      ResultSet rs =  ps.executeQuery();
      while(rs.next())
      {
          Recruiter rt = new Recruiter();
          rt.setName(rs.getString(1));
          rt.setRecruiter(rs.getString(2));
          rt.setEmail(rs.getString(3));
          rt.setPassword(rs.getString(4));
          rt.setContact(rs.getString(5));
          rt.setAddress(rs.getString(6));
          rt.setStatus(rs.getString(7));
          
          list.add(rt);
      }
      return list;
    }
    
    public int approveRecruiter(String email) throws SQLException
    {
        int i = 0;
        Connection con = GetConnection.getConnect();
        String query = "update recruiterdemo set status = ? where email = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, "active");
        ps.setString(2, email);
        i = ps.executeUpdate();
        con.close();
        return i ;
    }
} 
