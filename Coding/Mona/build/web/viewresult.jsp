<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*,java.security.*,javax.crypto.*,java.security.MessageDigest"%>

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
</style>
</head>
<body>
<div id="Container">
<div><img src="images/cam9.jpg" width="621" height="159" /><span class="style5" style="position:absolute; left:659px; top:34px; height: 92px; width: 693px;">CAM: Cloud-Assisted Privacy Preserving Mobile Health  Monitoring</span></div>

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


 <div style="position:absolute; left:250px; top:390px; width: 797px; height: 305px;"> 
  <h1><a href="viewuserreg.jsp" class="style6">View User Query </a></h1>
  <br><br>
 <fieldset style="border: 2px #3399FF solid;">
       <legend><font color="#3399FF" size="4"><strong>View</strong></font></legend>
<table width="742" height="105">
  <tr bgcolor="#3399FF">
          <td width="161" height="42"><div align="center"><font size="3">Query</font></div></td> 
          <td width="211" height="42" bgcolor="#3399FF"><div align="center"><font size="3">Date</font></div></td>
          <td width="130" height="42" bgcolor="#3399FF"><div align="center"><font size="3">Name</font></div></td>
		  <td width="171" height="42"><div align="center"><font size="3">Description</font></div></td>
          <td width="45" height="42"><div align="center"></div></td>
        </tr>
 

<% 


	Connection con = null;
	Statement st,st1,st2 = null;
	ResultSet rs,rs1 = null;
	String query=request.getParameter("query");
	String value1=request.getParameter("value1");
	String username = request.getParameter("username");
	//session.setAttribute("email",email);
	String id=null,name=null, eemail=null,phone=null,date =null,email=null,phonne=null,username1=null;
   
	try{
		Class.forName("com.mysql.jdbc.Driver"); 
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ranking","root","root");
		st1=con.createStatement();
		String sql1="select * from reg where name='"+username+"'";
		rs1=st1.executeQuery(sql1);
		while(rs1.next())
		{
		username1=rs1.getString(2);
		email=rs1.getString(7);
		phonne=rs1.getString(8);
		}
		
		String algorithm="";
 
byte[] unencodedPassword = email.getBytes(); 
MessageDigest md =null;
 try { 
md = MessageDigest.getInstance("MD5"); 
}
catch (Exception e) {} md.reset();

 md.update(unencodedPassword);
 byte[]encodedPassword = md.digest();

 StringBuffer buf = new StringBuffer();

 for (int i = 0; i < encodedPassword.length; i++)
 { 
if
 (((int) encodedPassword[i] & 0xff) < 0x10)
 {
 buf.append("0"); 
}
 buf.append(Long.toString((int)encodedPassword[i] & 0xff, 16)); 
}
 String email5=buf.toString();
 
 
		st2=con.createStatement();
		st2.executeUpdate("insert into encrypt values('"+email5+"','"+email5+"','"+email5+"','"+query+"')");
		st=con.createStatement();
		String sql="select * from comment where names='"+query+"' AND minvalue='"+value1+"'";
		rs=st.executeQuery(sql);
			
		 while(rs.next())
		
       {
	          
			id=rs.getString(2);
	       name=rs.getString(5);
		   eemail=rs.getString(6);
		   phone=rs.getString(7);
		   //date=rs.getString(5);
		 %>

	<tr>
	     <td height="42"><font size="3"> <%=id%></font></td>
		  <td height="42"><font size="3"> <%=name%></font></td>
	<td height="42"><font size="3"> <%=eemail%></font></td>
	<td height="42"><font size="3"><%=phone%></font></td>
	
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
    <form id="form1" name="form1" method="post" action="">
      <label>
      <input name="username1" type="hidden" id="username1" value="<%=username1%>"/>
      <input name="phonne" type="hidden" id="phonne" value="<%=email%>"/>
      <input name="email" type="hidden" id="email" value="<%=phonne%>"/>
      </label>
    </form>
    <a href="#"></a>
 </fieldset>          
 </div>
  </div>                                
                     
       

<!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
  <table width="1142" height="134" border="0">
    <tr>
      <td width="247">&nbsp;</td>
      <td width="879">&nbsp;</td>
    </tr>
</table>
</body>
</html>