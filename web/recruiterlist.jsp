<%@page import="java.util.*"%>
<%@include file="index_header.jsp" %>
<%@page import="dao.AdminDao" %>
<%@page import="dto.Recruiter" %>
<div id="page">
		<div id="">
			<div class="contentbg">
				<div class="post">
        <%
        String email = (String)session.getAttribute("email");
        %> 
					<h2 class="title">Recruiter List</h2>
					<div class="entry">
<table border="1" cellpadding="10" cellspacing="5">
    <thead>
        <tr>
            <th>Recruiter Name</th>
            <th>type</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <%
            AdminDao ad = new AdminDao();
           List<Recruiter> list =  ad.getRecruiterList();
           for(Recruiter rt : list)
           {
        %>
        <tr>
            <td><%=rt.getName() %></td>
            <td><%=rt.getRecruiter()%></td>
            <td><%=rt.getEmail()%></td>
            <td><%=rt.getContact()%></td>
            <td><%=rt.getAddress()%></td>
            <td><a href="adminapproverecruiter.jsp?email=<%=rt.getEmail() %>"><%=rt.getStatus()%></a></td>
            
        </tr>
        <%}%>
    </tbody>
    <tfoot>
            <th>Recruiter Name</th>
            <th>type</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Status</th>
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