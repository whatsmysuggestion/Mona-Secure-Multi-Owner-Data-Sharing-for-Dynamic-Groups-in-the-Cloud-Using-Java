<%@ page import="java.sql.*" import="databaseconnection.*"%>
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
	

</script>
</head>
<body>
<div id="Container">
<div><img src="images/bb.png" width="1200" height="182"></div>

<div style="position:absolute; left:30px; top:20px"><img src="images/1.png" width="200" height="141"> </div>


<div style="position:absolute; left:250px; top:60px"><font size="6">Ranking Model Adaptation for Domain-Specific Search</font></div>
 <div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
           <li><a class="current" href="index.jsp">Homepage</a></li>
            <li><a href="admin.jsp">AdminLogin</a></li>
            <li><a href="user.jsp">UserLogin</a></li>
            <li><a href="viewgraph.jsp">Back</a></li>
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
  <h1><font size="4">Admin View Graphical Representation</font></h1>
  <br><br>
 <table width="500" height="199" background="images/12.gif">

<% 
int s=0;
int i=0;
	Connection con = null,con1 = null;
	Statement st = null,st1 = null;
	ResultSet rs = null,rs1 = null;
	String title=null,types=null,count =null;
   String ty=request.getParameter("title");

String cnt=null,cnt1=null;
	try{
		con=databasecon.getconnection();
		st=con.createStatement();
		String sql="select * from upload where title='"+ty+"'";
		rs=st.executeQuery(sql);
			
		 while(rs.next())
		
       {
	     
		cnt=rs.getString("count");
			 
	    i=Integer.parseInt(cnt);
		
		
		s=s+i;
		
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	   try{
	   		con1=databasecon.getconnection();
		st1=con1.createStatement();
		
		String sql1="select * from upload where title='"+ty+"'";
		rs1=st1.executeQuery(sql1);
			
		 while(rs1.next())
		
       {
	    types=rs1.getString("types");           
		cnt1=rs1.getString("count");
		int cnt2=Integer.parseInt(cnt1);
	     
		int d=cnt2*s/100*10;

	%>
		<tr><td width="339" align="left"><img src="images/green.png" width="<%=d%>" height="15">&nbsp;&nbsp;&nbsp;&nbsp;<%=types%>(<%=cnt1%>)</td></tr>
		
	
		
	<%
		
		
		 }
	    
	 }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
	   
	    
%>

</table>
         

 </div>
  </div>                                
                     
       

<!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
</body>
</html>
