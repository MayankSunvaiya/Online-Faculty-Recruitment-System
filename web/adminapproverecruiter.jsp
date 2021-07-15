<%@page import="dao.AdminDao"%>
<%
    String email = request.getParameter("email");
    AdminDao ad = new AdminDao();
   int i =  ad.approveRecruiter(email);
   if(i>0)
   {
%>
<script>alert("Recruiter Approved Successfully..!!")</script>
<jsp:include page="recruiterlist.jsp"></jsp:include>
<%}else{%>
<script>alert("Error While Approving Recruiter..!!")</script>
<jsp:include page="recruiterlist.jsp"></jsp:include>
<%}%>