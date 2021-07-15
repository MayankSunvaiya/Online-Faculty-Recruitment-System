<%@page import="dao.CandidateDao" %>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
CandidateDao rd = new CandidateDao();
int i = rd.candidateLogin(email,password);
if(i>0)
{
    session.setAttribute("email", email);
%>
<script>alert("Login Successfully..!")</script>
<jsp:include page="candidate_home.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while Login ..!")</script>
<jsp:include page="index.jsp"></jsp:include>
<%}%>