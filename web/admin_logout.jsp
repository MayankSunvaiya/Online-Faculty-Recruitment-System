<%
session.setAttribute("email", null);
session.invalidate();
response.sendRedirect("admin_login.jsp");
%>