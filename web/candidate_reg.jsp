<%@include file="index_header.jsp" %>

	<div id="page">
		<div id="">
			<div class="contentbg">
				<div class="post">
					<h2 class="title">Candidate Registration Form</h2>
					<div class="entry">
    <form action="candidate_reg_db.jsp">
<p style="font-size : 16px;">Enter First Name</p>
            <input style="height:30px; width:300px;" required type="text" name="fname" placeholder="Enter First Name">

<p style="font-size : 16px;">Enter Last Name</p>
            <input style="height:30px; width:300px;" required type="text" name="lname" placeholder="Enter Last Name">

<p style="font-size : 16px;">Enter Email</p>
            <input style="height:30px; width:300px;" required type="email" name="email" placeholder="Enter Email">
           
<p style="font-size : 16px;">Enter Password</p>
            <input style="height:30px; width:300px;" required type="password" name="password" placeholder="Enter Password">
          
<p style="font-size : 16px;">Select Gender
            <input checked type="radio" id="male" value="male" name="gender">Male
            <input type="radio" id="female" value="female" name="gender">Female
</p>

<p style="font-size : 16px;">Enter DOB</p>
            <input style="height:30px; width:300px;" required type="date" name="date">
  
<p style="font-size : 16px;">Enter Address</p>
            <input style="height:30px; width:300px;" required type="text" name="address" placeholder="Enter Address">
           
<p style="font-size : 16px;">Enter Mobile Number</p>
            <input style="height:30px; width:300px;" required type="text" name="mobile" placeholder="Enter Contact">
           
           
<p style="font-size : 16px;">Select Highest Qualification</p>
            <select style="height:30px; width:300px;" required name="qualification">
             <option value="">Select Qualification</option>
             <option value="B.com">B.com</option>
             <option value="BCA">BCA</option>
             <option value="BE">BE</option>
             <option value="MCA">MCA</option>
             <option value="MBA">MBA</option>
            
            </select>
           
<p style="font-size : 16px;">Enter Percentage</p>
            <input style="height:30px; width:300px;" required type="number" min="0" max="100"  name="percentage" placeholder="Enter Percentage">
 
<p style="font-size : 16px;">Enter Experience</p>
            <select style="height:30px; width:300px;" required name="experience">
             <option value="">Experience</option>
             <option value="Fresher">Fresher</option>
             <option value="1 year">1 year</option>
             <option value="2 year">2 year</option>
             <option value="3 year">3 year</option>
             <option value="4+ year">4+ year</option>
            
            </select>
           
            
            <br>
            <input style="height:30px; width:300px;" type="submit" value="Register">
           
            
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
