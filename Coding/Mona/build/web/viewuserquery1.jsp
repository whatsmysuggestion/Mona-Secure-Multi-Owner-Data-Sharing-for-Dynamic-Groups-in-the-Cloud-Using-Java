<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<script language="javascript">
function editRecord(){
   
    window.location.href="viewuserreg1.jsp/"; 
  }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>CAM: Cloud-Assisted Privacy Preserving Mobile Health  Monitoring</title>
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

.style5 {font-size: xx-large}
.style6 {font-size: 24px}
.style9 {font-size: 16px; }
.style10 {font-size: xx-large;
	color: #FFFFFF;
}
body {
	background-image: url(images/bb.jpg);
	background-color: #0066CC;
}
</style>
</head>
<body>
<div id="Container">
<div><img src="images/mona2.jpg" width="619" height="156" /><span class="style10" style="position:absolute; left:668px; top:38px; height: 92px; width: 693px;">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud </span></div>

<div style="position:absolute; left:30px; top:20px"></div>

<div style="position:absolute; left:250px; top:60px"></div>
 <div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
           <li><a class="current" href="index.jsp">Homepage</a></li>
            <li><a href="admin.jsp">AdminLogin</a></li>
            <li><a href="user.jsp">UserLogin</a></li>
            <li><a href="#">TTP</a></li>
            <li><a href="#"></a></li>
            
          </ul>
        </div>
      </div>
    </div>
</div>
  
  <!--CONTENT -->
  <div id="Content">
    <div class="sidebarmenu">
	<div style="position:absolute; left:1151px; top:351px; width: 581px;">
<ul id="sidebarmenu1">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="46" height="28">
    <param name="movie" value="text1.swf" />
    <param name="quality" value="high" />
    <embed src="text1.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="46" height="28" ></embed>
  </object>
      </ul>

</div>

 <div style="position:absolute; left:251px; top:272px; width: 797px; height: 305px;"> 
  <h1><a href="viewuserreg.jsp" class="style6">View User Query </a></h1>
  <br><br>
 <fieldset style="border: 2px #3399FF solid;">
       <legend><font color="#3399FF" size="4"><strong>View</strong></font></legend>
<table width="796" height="105">
  <tr bgcolor="#3399FF"> 
          <td width="180" height="42" bgcolor="#3399FF"><div align="center" class="style9">Id</div></td>
          <td width="177" height="42"><div align="center" class="style9">Name</div></td>
		  <td width="177" height="42"><div align="center" class="style9">Path</div></td>
		  <td width="242" height="42"><div align="center" class="style9">Date</div></td>
		  <td width="242" height="42"><div align="center" class="style9">Secretkey</div></td>
        </tr>
 

<% 


	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	String email = request.getParameter("email");
	session.setAttribute("email",email);
	String id=null,name=null, eemail=null,phone=null,date =null,a=null,v=null;
   
	try{
		Class.forName("com.mysql.jdbc.Driver"); 
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mona","root","root");
		st=con.createStatement();
		String sql="select * from userquery where secretkey='pending'";
		rs=st.executeQuery(sql);
			
		 while(rs.next())
		
       {
	          a=rs.getString(1);
			  id=rs.getString(2);
	    	name=rs.getString(3);
			
		   eemail=rs.getString(4);
		   phone=rs.getString(5);
		   
		 %>

	<tr>
	<td height="42"><font size="3"> <%=a%></font></td>
	      <td height="42"><font size="3"> <%=id%></font></td>
	<td height="42"><font size="3"> <%=v%></font></td>
	
	<td height="42"><font size="3"> <%=eemail%></font></td>
	<td height="42"><font size="3"><%=phone%></font></td>
	  <form id="form1" name="form1" method="post" action="searchresult1.jsp">
	    <label>
	    <td height="42"><font size="3">  <input type="submit" name="Submit" id="<%=a%>" value="Generate Secret Key"/>
	      </label>
		  <label>
	      <input type="hidden" name="id" value="<%=a%>" />
	      </label>
	    </form>
	  </td>
	</tr>
	
   
  

  <%
	   }
	  
	%>
	<%
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    
%>
</table>
    <a href="#"></a>
 </fieldset>          
 </div>
  </div>                                
                     
       

<!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
</body>
</html>
