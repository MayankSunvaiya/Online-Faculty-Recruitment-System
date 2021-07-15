<%@include file="admin_header.jsp" %>
	<div id="page">
		<div id="">
			<div class="contentbg">
				<div class="post">
        <%
        String email = (String)session.getAttribute("email");
        %> 
					<h2 class="title">Welcome ,<%=email %></h2>
					<div class="entry">
						<p>This is <strong>Commercial</strong>, a free, fully standards-compliant CSS template designed by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.  The picture in this template is from <a href="http://fotogrph.com/">Fotogrph</a>.The gallery slider and popup gallery used in this template is powered by <a href="http://n33.co/">Poptrox</a> and <a href="http://n33.co/">Slidertron</a>. Dropdown menu is powered by <a href="http://n33.co/">Dropotron</a>. This free template is released under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so you?re pretty much free to do whatever you want with it (even use it commercially) provided you give us credit for it. Have fun :)</p>
						<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum ipsum. Proin imperdiet est. Phasellus dapibus semper urna. Pellentesque ornare, orci in felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.</p>
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
