package dao;
import java.sql.*;
import dto.Recruiter;
import myconn.GetConnection;

public class RecruiterDao 
{
    public int recruiterLogin(String email,String password) throws SQLException
 {
     int i = 0;
     Connection con = GetConnection.getConnect();
     String query = "select * from recruiterdemo where email=? and password = ?";
     PreparedStatement ps = con.prepareStatement(query);
     ps.setString(1, email);
     ps.setString(2, password);
     
     ResultSet rs = ps.executeQuery();
     if(rs.next())
        i=1;
     con.close();
     return i;
 }
    public int addRecruiter(Recruiter obj) throws SQLException
    {
        Connection con = GetConnection.getConnect();
        String query = "insert into recruiterdemo(name,recruiter,email,password,contact,address,status) values(?,?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, obj.getName());
        ps.setString(2, obj.getRecruiter());
        ps.setString(3, obj.getEmail());
        ps.setString(4, obj.getPassword());
        ps.setString(5, obj.getContact());
        ps.setString(6, obj.getAddress());
        ps.setString(7, "inactive");
        int i = ps.executeUpdate();
        return i;
    }
    public Recruiter getTypeName(String email) throws SQLException
    {
        Recruiter r = new Recruiter();
        Connection con = GetConnection.getConnect();
        String query = "select name,recruiter from recruiterdemo where email = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        if(rs.next())
        {
            r.setName(rs.getString(1));
            r.setRecruiter(rs.getString(2));
        }
        return r;
    }
}
