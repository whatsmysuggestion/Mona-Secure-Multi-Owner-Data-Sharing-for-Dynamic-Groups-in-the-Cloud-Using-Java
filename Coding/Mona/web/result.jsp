
<%@ page import="java.sql.*,databaseconnection.*,java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
	<title>CAM: Cloud-Assisted Privacy Preserving Mobile Health  Monitoring</title></head>
    <body>
	<form>
	<% 
	
     String result=request.getParameter("result");
	 
	 String[] str2 = result.split(":");

        System.out.println("Length2 :"+str2.length);

String abc=str2[0];
String abcd=str2[1];
 System.out.println("Length2 :"+abc);
 System.out.println("Length2 :"+abcd);



       // for(int i=0;i<str2.length;i++)
      //  {
         //   System.out.println("Split2 Element "+i+" :"+str2[i]);
       // }
	 
	 
	//String password=request.getParameter("password");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select *  from medicaldetails where titles='"+abc+"' AND minvalue='"+abcd+"'";
	try
	{
        con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		//session.setAttribute("username",username);
		 %>	
		<jsp:forward page="adminpage.jsp"/>
	    	<%
	             		    
	    }
	  out.println("Oop's! you are not Authenticated Person");
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>