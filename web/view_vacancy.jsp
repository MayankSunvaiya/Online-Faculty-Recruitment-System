<%@page import="java.util.*"%>
<%@include file="candidate_header.jsp" %>
<%@page import="dao.VacancyDao" %>
<%@page import="dto.Vacancy" %>
<div id="page">
		<div id="">
			<div class="contentbg">
				<div class="post">
        <%
        String email = (String)session.getAttribute("email");
        %> 
					<h2 class="title">Vacancy List</h2>
					<div class="entry">
<table border="1" cellpadding="5" cellspacing="1">
    <thead>
        <tr>
            <th>Vacancy<br>Id</th>
            <th>Post</th>
            <th>Subject</th>
            <th>Location</th>
            <th>Criteria</th>
            <th>Vacancy</th>
            <th>Salary</th>
            <th>Adv date</th>
            <th>Last date</th>
            <th>Email</th>
            <th>RecruiterType</th>
            <th>RecruiterName</th>
            <th>Apply</th>
            

        </tr>
    </thead>
    <tbody>
        <%
            VacancyDao ad = new VacancyDao();
           List<Vacancy> list =  ad.getVacancyList();
           for(Vacancy rt : list)
           {
        %>
        <tr>
            <td><%=rt.getVid() %></td>
            <td><%=rt.getPost() %></td>
            <td><%=rt.getSubject() %></td>
            <td><%=rt.getLocation() %></td>
            <td><%=rt.getCriteria() %></td>
            <td><%=rt.getVacancy() %></td>
            <td><%=rt.getSalary() %></td>
            <td><%=rt.getAdvdate() %></td>
            <td><%=rt.getLastdate() %></td>
            <td><%=rt.getEmail() %></td>
            <td><%=rt.getRecruiter() %></td>
            <td><%=rt.getRecruitername() %></td>
            <td><a href="candidate_apply_vacancy.jsp?vid=<%=rt.getVid() %>">Apply</a></td>
        </tr>
        <%}%>
    </tbody>
    <tfoot>
             <th>Vacancy<br>Id</th>
            <th>Post</th>
            <th>Subject</th>
            <th>Location</th>
            <th>Criteria</th>
            <th>Vacancy</th>
            <th>Salary</th>
            <th>Adv date</th>
            <th>Last date</th>
            <th>Email</th>
            <th>RecruiterType</th>
            <th>RecruiterName</th>
            <th>Apply</th>
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