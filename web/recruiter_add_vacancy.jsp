<%@include file="recruiter_header.jsp" %>
<%@page import="dao.RecruiterDao" %>
<%@page import="dto.Recruiter" %>

<div id="page">
		<div id="">
			<div class="contentbg">
				<div class="post">
        <%
        String email = (String)session.getAttribute("email");
        %> 
					<h2 class="title">Add Vacancy Form</h2>
					<div class="entry">
                                            
    <form action="recruiter_add_vacancy_db.jsp">
           <p style="font-size:18px;">Post</p>
            <select style="font-size:18px;height:30px; width:500px;" required name="post">
             <option value="">Select Post</option>
             <option value="Assistant Professor">Assistant Professor</option>
             <option value="Associate Professor">Associate Professor</option>
             <option value="Principal">Principal</option>
             <option value="Mathematics Teacher">Mathematics Teacher</option>
             <option value="Primary Teacher">Primary Teacher</option>
            
            </select>
     
           <p style="font-size:18px;">Subjects</p>
            <select required style="font-size:18px;height:30px; width:500px;" name="subject">
             <option value="">Select Subject</option>
             <option value="IT Subjects">IT Subjects</option>
             <option value="CS Subjects">CS Subjects</option>
             <option value="EC">EC</option>
             <option value="Mathematics">Mathematics</option>
             <option value="All Subjects">All Subjects</option>
             <option value="Others">Others</option>
  
            </select>
    
    <p style="font-size:18px;">Enter Location</p> 

    <input required style="font-size:18px;height:30px; width:500px;" type="text" name="location" placeholder="Enter Location">
         
            <p style="font-size:18px;">Criteria</p>
            <select required style="font-size:18px;height:30px; width:500px;" name="criteria">
             <option value="">Select Qualification</option>
             <option value="B.com">B.com</option>
             <option value="BCA">BCA</option>
             <option value="BE">BE</option>
             <option value="MCA">MCA</option>
             <option value="MBA">MBA</option>
            
            </select>
     
    
    <p style="font-size:18px;">Enter Number of Vacancy</p> 

    <input min="0" required style="font-size:18px;height:30px; width:500px;" type="number" name="vacancy" placeholder="Enter No. of Vacancy">
 <p style="font-size:18px;">Enter Salary</p> 

    <input required style="font-size:18px;height:30px; width:500px;" type="text" name="salary" placeholder="Enter Salary">
    <p style="font-size:18px;">Enter Advertising Date</p>
    <input required style="font-size:18px;height:30px; width:500px;" type="date" name="advdate">
    
    <p style="font-size:18px;">Enter Last Date to Apply</p>
    <input required style="font-size:18px;height:30px; width:500px;" type="date" name="lastdate">
    
<p style="font-size:18px;">Recruiter Email</p> 

    <input readonly value="<%=email %>" style="font-size:18px;height:30px; width:500px;" required type="email" name="email"  placeholder="Enter Email">
    
<%
RecruiterDao rd = new RecruiterDao();
 Recruiter rt = rd.getTypeName(email);
%>    
    
<p style="font-size:18px;">Recruiter Type</p> 
    
<input readonly value="<%=rt.getRecruiter() %>" style="font-size:18px;height:30px; width:500px;" required type="text" name="recruiter" placeholder="Enter Recruiter Type">
   
<p style="font-size:18px;">Recruiter Name</p> 
 <input readonly value="<%=rt.getName() %>" style="font-size:18px;height:30px; width:500px;" required type="text" name="recruitername"  placeholder="Enter Recruiter Name">
    
            <br>
            <input style="font-size:18px;height:30px; width:500px;" type="submit" value="Add Vacancy">
           
            
           </form>                                           
                                                                              
                                        
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