
package dao;

import dto.AppliedVacancy;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import myconn.GetConnection;

public class AppliedVacancyDao
{
     public List<AppliedVacancy> getRecruiterList(String email) throws SQLException
{
  List<AppliedVacancy> list=new ArrayList<>();
  Connection con=GetConnection.getConnect();
  String query="select * from appliedvacancy where recruiteremail=?";
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
     public int updateStatus(int id) throws SQLException
    {
         int i=0;
         Connection con = GetConnection.getConnect();
         String query = "update appliedvacancy set status =? where id =?";
         PreparedStatement ps = con.prepareStatement(query);
         ps.setString(1,"Short Listed" );
         ps.setInt(2, id);
         i =ps.executeUpdate();
         con.close();
         return i;
    }
}
