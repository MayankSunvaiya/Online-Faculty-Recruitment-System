<%@page import="dao.VacancyDao" %>
<jsp:useBean id="obj" class="dto.Vacancy"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
    
<%
 VacancyDao vd = new VacancyDao();
 int i = vd.addVacancy(obj);
 if(i>0)
 {
%>
<script>alert("Vacancy added successfully...!!");</script>
<jsp:include page="recruiter_home.jsp"></jsp:include>
<%}else{%>
<script>alert("Error while adding vacancy");</script>
<jsp:include page="recruiter_home.jsp"></jsp:include>
<%}%>