<%@page import="dao.RecruiterDao" %>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
RecruiterDao rd = new RecruiterDao();
int i = rd.recruiterLogin(email,password);
if(i>0)
{
    session.setAttribute("email", email);
%>
<script>alert("Login Successfully..!")</script>
<jsp:include page="recruiter_home.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while Login ..!")</script>
<jsp:include page="index.jsp"></jsp:include>
<%}%>