<%@page import="dao.AdminDao" %> %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

 AdminDao ad = new AdminDao();
 int i = ad.adminlogin(email, password);
 if(i>0)
 {
   session.setAttribute("email",email);
%>
<script>alert("Admin Login Successfully...!!")</script>
<jsp:include page="adminhome.jsp"></jsp:include>
<%}else{%>

<script>alert("Error While Login")</script>
<jsp:include page="admin_login.jsp"></jsp:include>

<%}%>