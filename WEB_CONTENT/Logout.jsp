<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
		
		 	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
			if(session.getAttribute("email_id")==null)
			{
				response.sendRedirect("sign-in.jsp");
			}
			session =request.getSession();
			session.removeAttribute("email_id");
			session.removeAttribute("username");
			session.removeAttribute("str");
			session.invalidate();
			response.sendRedirect("sign-in.jsp");
		%>
</body>
</html>