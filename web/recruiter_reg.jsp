<%@include file="index_header.jsp" %>

	<div id="page">
		<div id="">
			<div class="contentbg">
				<div class="post">
					<h2 class="title">Recruiter Registration Form</h2>
					<div class="entry">
      <form action="addRecruiter.jsp">
          <p style="font-family: candara; font-size: 22px;">Enter Name</p>
            <input style="font-family: candara; font-size: 22px; width:300px; height: 30px;" required type="text" name="name" placeholder="Enter Proper Name">
           
            <p style="font-family: candara; font-size: 22px;">Recruiter Type</p>
            <select style="font-family: candara; font-size: 22px; width:300px; height: 30px;" required name="recruiter">
             <option value="">Select Recruiter</option>
             <option value="school">School</option>
             <option value="college">College</option>
             <option value="institute">Institute</option>
            </select>
           
           <p style="font-family: candara; font-size: 22px;">Enter Email</p>
            <input style="font-family: candara; font-size: 22px; width:300px; height: 30px;" required type="email" name="email" placeholder="Enter Email">
           
           <p style="font-family: candara; font-size: 22px;">Enter Password</p>
            <input style="font-family: candara; font-size: 22px; width:300px; height: 30px;" required type="password" name="password" placeholder="Enter Password">
          
            <p style="font-family: candara; font-size: 22px;">Enter Contact</p>
            <input style="font-family: candara; font-size: 22px; width:300px; height: 30px;" required type="text" name="contact" placeholder="Enter Contact">
           
  
            <p style="font-family: candara; font-size: 22px;">Enter Address</p>
            <input style="font-family: candara; font-size: 22px; width:300px; height: 30px;" required type="text" name="address" placeholder="Enter Address">
 
            <br><br>
            <input style="font-family: candara; font-size: 22px; width:310px; height: 40px;" type="submit" value="Register">
           
            
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
