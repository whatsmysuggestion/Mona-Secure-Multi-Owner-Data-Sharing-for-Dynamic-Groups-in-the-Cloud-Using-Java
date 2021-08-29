<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Connection con = null;
Statement st = null;
ResultSet rs = null;

String a = request.getParameter("id");
//String f = request.getParameter("username");
//String g = request.getParameter("age");
//String h = request.getParameter("gender");
//String b = request.getParameter("name");
//String c = request.getParameter("pass");
//String d = request.getParameter("email");
//String e = request.getParameter("phone");

java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mona","root","root");
st=con.createStatement();
st.executeUpdate("Delete from groupmanager where id='"+a+"'");
response.sendRedirect("deletegroup.jsp?Message=success");

%>

<%
}
catch(Exception ex)
{
	out.println(ex);
}
%>
