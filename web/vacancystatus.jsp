<%@include file="candidate_header.jsp" %>

<%@page import="dto.AppliedVacancy"%>
<%@page import="java.util.*"%>
<%@page import="dao.CandidateDao" %>
        <div id="page">
		<div id="">
			<div class="contentbg">
				<div class="post">
	<%
            String email = (String)session.getAttribute("email");
        %>
                                    <h2 class="title">Vacancy Status</h2>
					<div class="entry">
<table border="1" cellpadding="5" cellspacing="1">
    <thead>
        <tr>
            <th>Id</th>
            <th>Vacancy<br>Id</th>
            <th>Candidate Email</th>
            <th>Recruiter Email</th>
            <th>Post</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <%
            CandidateDao cd = new CandidateDao();
            List<AppliedVacancy> list = cd.getCandidateList(email);
            for(AppliedVacancy av : list)
            {
        %>
        <tr>
            <td><%=av.getId() %></td>
            <td><%=av.getVid() %></td>
            <td><%=av.getCandidateemail() %></td>
            <td><%=av.getRecruiteremail() %></td>
            <td><%=av.getPost() %></td>
            <td><%=av.getStatus() %></td>
        </tr>
        <%}%>
    </tbody>
    <tfoot>
        <tr>
            <th>Id</th>
            <th>Vacancy<br>Id</th>
            <th>Candidate Email</th>
            <th>Recruiter Email</th>
            <th>Post</th>
            <th>Status</th>
        </tr>
    </tfoot>
</table>
                                        </div>
				</div>
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
		<!-- end #content -->
		
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
    <p>All Rights Reserved | Designed By Advance Java Batch &trade; | 2021</p>
</div>
<!-- end #footer -->
</body>
</html>
