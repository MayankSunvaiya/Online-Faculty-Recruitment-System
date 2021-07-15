<%@page import="dao.VacancyDao" %>
<%@page import="dto.Vacancy" %>
<%
int vid = Integer.parseInt(request.getParameter("vid"));
String candidateemail = (String)session.getAttribute("email");

VacancyDao vd = new VacancyDao();
Vacancy v = vd.getData(vid);

String post = v.getPost();
String email = v.getEmail();        
String status = "Received";

int i = vd.appliedVacancy(vid,candidateemail,email,post,status);
if(i>0)
{
%>
<script>alert("Successfully applied...!!");</script>
<jsp:include page="candidate_home.jsp"></jsp:include>  
<%}else{%>        
<script>alert("Error while applying...!!");</script>
<jsp:include page="candidate_home.jsp"></jsp:include>  
<%}%>