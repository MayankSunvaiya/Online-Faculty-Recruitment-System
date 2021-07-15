<%@page import="dao.CandidateDao" %>
<jsp:useBean id="obj" class="dto.Candidate"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
                 
<%
    CandidateDao cd = new CandidateDao();
  int i =  cd.addCandidate(obj);
 if(i==2)
 {
%>  
<script>alert("Email Id already exists... Please try with anathor email id");</script>
<jsp:include page="index.jsp"></jsp:include>
<%}else if(i>0){%>
<script>alert("Candidate added successfully");</script>
<jsp:include page="candidate_login.jsp"></jsp:include>    
<%}else{%>
<script>alert("Erroroccured while adding candidate");</script>
<jsp:include page="index.jsp"></jsp:include>
<%}%>
