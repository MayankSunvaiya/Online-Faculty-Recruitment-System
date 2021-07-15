package dao;
import dto.Vacancy;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import myconn.GetConnection;
public class VacancyDao 
{
   public int addVacancy(Vacancy obj) throws SQLException
    {
        int i=0;
        Connection con = GetConnection.getConnect();
        String query = "insert into vacancy(post,subject,location,criteria,vacancy,salary,advdate,lastdate,email,recruiter,recruitername) values(?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, obj.getPost());
        ps.setString(2, obj.getSubject());
        ps.setString(3, obj.getLocation());
        ps.setString(4, obj.getCriteria());
        ps.setString(5, obj.getVacancy());
        ps.setString(6, obj.getSalary());
        ps.setString(7, obj.getAdvdate());
        ps.setString(8, obj.getLastdate());
        ps.setString(9, obj.getEmail());
        ps.setString(10, obj.getRecruiter());
        ps.setString(11, obj.getRecruitername());
        
        i = ps.executeUpdate();
        con.close();
        return i;
    }
   public List<Vacancy> getVacancyList() throws SQLException
{
    List<Vacancy> list = new ArrayList<>();
    Connection con = GetConnection.getConnect();
    String query = "select * from vacancy";
    PreparedStatement ps = con.prepareStatement(query);
    ResultSet rs = ps.executeQuery();
    while(rs.next())
    {
        Vacancy v = new Vacancy();
        v.setVid(rs.getInt(1));
        v.setPost(rs.getString(2));
        v.setSubject(rs.getString(3));
        v.setLocation(rs.getString(4));
        v.setCriteria(rs.getString(5));
        v.setVacancy(rs.getString(6));
        v.setSalary(rs.getString(7));
        v.setAdvdate(rs.getString(8));
        v.setLastdate(rs.getString(9));
        v.setEmail(rs.getString(10));
        v.setRecruiter(rs.getString(11));
        v.setRecruitername(rs.getString(12));
        
        list.add(v);
    }
    return list;
}
   
public Vacancy getData(int vid) throws  SQLException
{
 Vacancy r=new Vacancy();
 Connection con=GetConnection.getConnect();
 String query="select email,post from vacancy where vid=?";
 PreparedStatement ps=con.prepareStatement(query);
 ps.setInt(1,vid);
 
 ResultSet rs=ps.executeQuery();
 if(rs.next())
 {
  r.setEmail(rs.getString(1));
  r.setPost(rs.getString(2));
 }
 return r;
}
    
public int appliedVacancy(int vid,String candidateemail,String email,String post,String status) throws SQLException
 {
  int i=0;
  Connection con=GetConnection.getConnect();
  String query="insert into appliedvacancy(vid,candidateemail,recruiteremail,post,status) values(?,?,?,?,?)";
  PreparedStatement ps=con.prepareStatement(query);
  ps.setInt(1,vid);
  ps.setString(2,candidateemail);
  ps.setString(3,email);
  ps.setString(4,post);
  ps.setString(5,status);
 
  i=ps.executeUpdate();
  con.close();
  return i;
 }

}
