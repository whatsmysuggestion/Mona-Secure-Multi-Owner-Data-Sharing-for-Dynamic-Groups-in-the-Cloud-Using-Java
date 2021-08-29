<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Connection con = null;
Statement st = null;
Statement st1 = null;
ResultSet rs1 = null;
//int n=0;

String a = request.getParameter("titles");
String b = request.getParameter("minvalue");
String c = request.getParameter("maxvalue");
String d = request.getParameter("description");
String n = request.getParameter("n");

java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);     
     String strDateNew1 = sdf1.format(now);

try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ranking","root","root");


/*st1=con.createStatement();
		String sql1="select max(id) from medicaldetails";
		
		rs1=st.executeQuery(sql1);
		if(rs1.next())
		{
		if(rs1.getInt(1)==0)
		n=1;
		else
		n=rs1.getInt(1)+1;
		
		}*/
st=con.createStatement();
st.executeUpdate("insert into medicaldetails(id,titles,minvalue,maxvalue,description) values('"+n+"','"+a+"','"+b+"','"+c+"','"+d+"')");
response.sendRedirect("adminpage.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
