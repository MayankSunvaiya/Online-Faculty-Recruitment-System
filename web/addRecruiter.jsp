<%@page  import="dao.RecruiterDao" %>
<jsp:useBean id="obj" class="dto.Recruiter"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>

<%
RecruiterDao rd = new RecruiterDao();
int i = rd.addRecruiter(obj);
if(i>0)
{
%>
<script>alert("Recruiter added successfully")</script>
<jsp:include page="index.jsp"></jsp:include>
<%}else{%>
<script>alert("Error Occured")</script>
<jsp:include page="index.jsp"></jsp:include>
<%}%>