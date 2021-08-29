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


String c = request.getParameter("comment");
String name = request.getParameter("name");
String names = request.getParameter("names");
String id = request.getParameter("id");
String email = request.getParameter("email");
String phone = request.getParameter("phone");



java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ranking","root","root");
st=con.createStatement();
st.executeUpdate("insert into comment(id,names,email,phone,date,name,comment) values('"+id+"','"+names+"','"+email+"','"+phone+"','"+strDateNew1+"','"+name+"','"+c+"')");
response.sendRedirect("comments.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
