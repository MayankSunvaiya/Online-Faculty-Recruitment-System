<%@page import="dao.AppliedVacancyDao"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    AppliedVacancyDao ad = new  AppliedVacancyDao();
   int i = ad.updateStatus(id);
   if(i>0)
   {
%>
<script>alert("Status updated successfully..!!");</script>
<jsp:include page="candidatelist.jsp"></jsp:include>
<%}else{%>
<script>alert("Error occured while updating status..!!!")</script>
<jsp:include page="candidatelist.jsp"></jsp:include>
<%}%>