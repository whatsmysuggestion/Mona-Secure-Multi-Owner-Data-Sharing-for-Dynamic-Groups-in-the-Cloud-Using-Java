<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
Statement st = null;
ResultSet rs = null;
String email = request.getParameter("email");
String pass = request.getParameter("pass");
//HttpSession session = request.getSession(true);
session.setAttribute("email",email);
session.setAttribute("pass",pass);
	   //sn.setAttribute("username",username);
try{
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mona","root","root");
	st = con.createStatement();
	String qry ="select * from groupmanager where  username='"+email+"' AND pass='"+pass+"'"; 
	rs = st.executeQuery(qry);
	if(rs.next())
	{	
	response.sendRedirect("ttppage.jsp");
	
	}
	else{
		out.println("Enter correct username, password");		
	}
	con.close();
	st.close();
}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>


