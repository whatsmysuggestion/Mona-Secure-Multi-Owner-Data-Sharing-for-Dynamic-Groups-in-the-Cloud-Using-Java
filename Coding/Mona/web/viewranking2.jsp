<%@ page import="java.sql.*" import="databaseconnection.*"%>
<% 

	
	
  String subdomain = request.getQueryString();
	session.setAttribute("subdomain",subdomain);	
	Connection con = null;
	Statement st = null;
    ResultSet rs1=null;
	String domain1=(String)session.getAttribute("domain");
		
	try{
		Class.forName("com.mysql.jdbc.Driver"); 
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ranking","root","root");
		st = con.createStatement();
		String str1="select distinct title from upload where subdomain='"+subdomain+"'";
		rs1=st.executeQuery(str1); 
				
%>
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
<script type="text/javascript">
	
function fu()
{
 

var e=document.form.title.options[document.form.title.selectedIndex].value;
window.location="http://localhost:8080/Rankmodel2/viewranking3.jsp?"+e;


}
</script>
</head>
<body>
<div id="Container">
<div><img src="images/bb.png" width="1200" height="182"></div>

<div style="position:absolute; left:30px; top:20px"><img src="images/1.png" width="212" height="141"> </div>
<div style="position:absolute; left:250px; top:60px"><font size="6">Ranking Model Adaptation for Domain-Specific Search</font></div>
 <div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
           <li><a class="current" href="index.html">Homepage</a></li>
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
             
         <li><a href="admin.jsp">AdminLogin</a></li>
        <li><a href="user.jsp">UserLogin</a></li>
        <li><a href="adminpage.jsp">Domain Upload</a></li>
		<li><a href="viewranking.jsp">ViewRanking</a></li>
        <li><a href="viewcomment.jsp">ViewUserComment</a></li>
		<li><a href="viewuserreg.jsp">ViewUserRegistration</a></li>
		<li><a href="viewgraph.jsp">ViewGraphRepresent</a></li>

      </ul>

</div>

 <div style="position:absolute; left:240px; top:280px"> 
  <h1><font size="4">AdminViewRanking</font></h1>
  <br><br>
 <fieldset style="border: 2px #3399FF solid;">
       <legend><font color="#3399FF" size="4"><strong>View</strong></font></legend>

	
		  <table width="366" align="center">
<form method="post" name="form">

<tr>
<td width="163" height="46" class="paragraping"><font size="3">DomainName</font></td>
<td width="191" class="fielditem"><input name="domain" value="<%=domain1%>">
	

</td>
</tr> 
<tr>
            <td width="101" height="46" class="paragraping"><font size="3">SubDomain</font></td>
<td width="172" class="name"><input name="subdomain" value="<%=subdomain %>">



		</td>
</tr>
<tr>
            <td width="101" height="46" class="paragraping"><font size="3">Title</font></td>
<td width="172" class="name"><select type="text"  name="title" onChange="fu()">
<option>--------Select Title-------</option>
<%
		while(rs1.next())
		{
		%>
				<option value="<%= rs1.getString("title")%>"><%= rs1.getString("title")%></option>

		<%}
				

		%>
</select></td>
</tr>
<tr>
            <td width="101" height="46" class="paragraping"><font size="3">Types</font></td>
<td width="172" class="name"><select type="text"  name="types">
<option>-------Select Types------</option>
</select></td>
</tr>


<tr>
<td height="35"></td>
<td><input type="submit" name="B1" class="button2" value="Submit">
</td>
</tr>
</form>
<%
}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
%>
</table>
      </fieldset>          
 </div>
  </div>                                
                     
       

<!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
</body>
</html>
