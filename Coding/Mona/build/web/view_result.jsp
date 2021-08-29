
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ranking Model Adaptation for Domain-Specific Search</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<style type="text/css">

.sidebarmenu ul{
margin: 0;
padding: 0;
list-style-type: none;
font: bold 13px Verdana;
width: 180px; /* Main Menu Item widths */
border-bottom: 1px solid #ccc;
}
 
.sidebarmenu ul li{
position: relative;
}

/* Top level menu links style */
.sidebarmenu ul li a{
display: block;
overflow: auto; /*force hasLayout in IE7 */
color: white;
text-decoration: none;
padding: 6px;
border-bottom: 1px solid #778;
border-right: 1px solid #778;
}

.sidebarmenu ul li a:link, .sidebarmenu ul li a:visited, .sidebarmenu ul li a:active{
background-color: #3399FF; /*background of tabs (default state)*/
}

.sidebarmenu ul li a:visited{
color: white;
}

.sidebarmenu ul li a:hover{
background-color: black;
}

/*Sub level menu items */
.sidebarmenu ul li ul{
position: absolute;
width: 170px; /*Sub Menu Items width */
top: 0;
visibility: hidden;
}

.sidebarmenu a.subfolderstyle{
background: url(right.gif) no-repeat 97% 50%;
}

 
/* Holly Hack for IE \*/
* html .sidebarmenu ul li { float: left; height: 1%; }
* html .sidebarmenu ul li a { height: 1%; }
/* End */

</style>

</head>
<body>
<div id="Container">
<div><img src="images/bb.png" width="1200" height="182"></div>
<div style="position:absolute; left:30px; top:20px"><img src="images/1.png" width="208" height="141"> </div>
<div style="position:absolute; left:250px; top:60px"><font size="6">Ranking Model Adaptation for Domain-Specific Search</font></div>
 <div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
            <li><a class="current" href="index.jsp">Homepage</a></li>
            <li><a href="admin.jsp">AdminLogin</a></li>
            <li><a href="user.jsp">UserLogin</a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            
          </ul>
        </div>
      </div>
    </div>
  </div>
  
  <!--CONTENT -->
  <div id="Content">
    <div class="sidebarmenu">
	<div style="position:absolute; left:800px; top:350px; width: 677px;">
<ul id="sidebarmenu1">
        <li><a href="index.jsp">HomePage</a></li>
        <li><a href="admin.jsp">Adminlogin</a></li>
        <li><a href="user.jsp">UserLogin</a></li>
        <li><a href="register.jsp">Registration</a></li>

        <li><a href="userpage.jsp">DomainSearch</a> 
      </ul>

</div>

 <div style="position:absolute; left:254px; top:269px; width: 318px; height: 148px;"> 
 
  <br><br><br>

 <table width="318" height="110">
 <%
 
	String a=request.getQueryString();
 %>

    <tr>
	<td width="82" height="50"><font size="+2"><%=a%>:</font></td>
	</tr>
	<tr></tr>
	<tr></tr>    
	<tr></tr>
	<form name="f">
	<%
	Connection con = null;
   Statement st=null;
    ResultSet rs1=null;
	int count=0;
String tit = null,typ = null;
	
	try{
		con=databasecon.getconnection();
		st = con.createStatement();
		
		String sql="select * from upload where title='"+a+"' order by count DESC";
		rs1=st.executeQuery(sql);
		while(rs1.next())
		{
		typ=rs1.getString("types");
		count=rs1.getInt("count");
		%>
		
		<tr>
		<td height="29"></td>
		<td width="224" bgcolor="#3399FF"><font size="+1"><a href="view_result1.jsp?<%=typ%>"><%=typ%></a></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<%=count%>)</td>
		
		</tr>
		<%
		
		}
		}
		catch(Exception e1)
		{
		out.println(e1.getMessage());
		}
		
	%>
	
	
	
	</form>
	
	
	
	</table>



  
 </div>
  </div>                                
                     
       

<!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
</body>
</html>
