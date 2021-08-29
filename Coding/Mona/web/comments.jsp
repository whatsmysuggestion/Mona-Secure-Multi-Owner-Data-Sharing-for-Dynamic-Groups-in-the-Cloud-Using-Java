


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*,javax.servlet.*,javax.servlet.http.*,java.lang.*"%>
<%@page import="java.text.SimpleDateFormat"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

.style5 {font-size: 36px}
</style>
<script language="JavaScript">
function validation()
{
var a = document.form.feedback.value;
var b = document.form.rate.value;
var c = document.form.comment.value;


if(a=="")
{
alert("Enter Your Feedback");
document.form.feedback.focus();
return false;
}
if(document.form.rate.selectedIndex==0)
{ 
alert("Please select ratings");
document.form.rate.focus();
return false;
}

if(c=="")
{
alert("Enter the Comment");
document.form.comment.focus();
return false;
}
}
</script>
</head>
<body>
<div id="Container">
<div>
  <form id="form1" name="form1" method="post" action="">
    <label><img src="images/cam9.jpg" width="621" height="159" /></label>
    <span class="style5" style="position:absolute; left:659px; top:34px; height: 92px; width: 693px;">CAM: Cloud-Assisted Privacy Preserving Mobile Health  Monitoring</span>
          </form>
</div>
<div style="position:absolute; left:30px; top:20px; height: 139px;"></div>
<div style="position:absolute; left:730px; top:320px"></div>


<div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
            <li><a class="current" href="index.jsp">Homepage</a></li>
            <li><a href="admin.jsp">AdminLogin</a></li>
            <li><a href="user.jsp">UserLogin</a></li>
            <li><a href="ttp.jsp">TTP</a></li>
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

 <div style="position:absolute; left:240px; top:280px; width: 502px; height: 305px;"> 
 <h1><font size="5">Add Your Comments Here:</font></h1>
 <br><br>
 <p>  <%
                                                       String message=request.getParameter("Message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red' size='3'><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Comments Posted Successfully !</blink></font>");
                                                       }
                                               %> 
      </p>
      <table width="469" height="247" align="center">
        <form action="commentinsert.jsp" method="post" name="form" onSubmit="return validation();">
          <% 
		 String z=request.getParameter("id");
		 String y=request.getParameter("name");
		 String x=request.getParameter("email");
		 String w=request.getParameter("phone");
	
	java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
	 %>
          <tr> 
            <td  width="179" height="46" class="paragraping"><font size="3">Date</font></td>
            <td><%=strDateNew1%></td>
          </tr>
          <tr> 
            <td width="179" height="56" class="paragraping"><font size="3">Name</font></td>
            <td width="278" class="id"><input  name="name" type="text" id="name"></td>
          </tr>
		  <tr> 
            <td width="179" height="56" class="paragraping"><font size="3">Comment</font></td>
            <td width="278" class="id"><span class="name">
              <textarea name="comment" rows="3" cols="24"></textarea>
            </span></td>
		  </tr>
          <tr> 
            <td width="179" height="84" class="paragraping">&nbsp;</td>
            <td width="278" class="name"><input type="submit" name="B1" class="button2" value="Add"></td>
          </tr>
          <tr> 
            <td height="49"></td>
            <td><label>
              <input name="id" type="hidden" id="id" value="<%=z%>">
            </label>
			<label>
              <input name="names" type="hidden" id="names" value="<%=y%>">
            </label>
			<label>
              <input name="email" type="hidden" id="email" value="<%=x%>">
            </label>
			<label>
              <input name="phone" type="hidden" id="phone" value="<%=w%>">
            </label>
			</td>
          </tr>
        </form>
      </table>
      <br>
  
  <br><br></fieldset>
    </div>
  </div>                                
                     
       

<!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
</body>
</html>
