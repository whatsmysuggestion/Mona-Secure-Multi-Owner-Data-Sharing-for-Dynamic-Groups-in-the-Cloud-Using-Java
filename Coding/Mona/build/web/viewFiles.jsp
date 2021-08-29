<%@ page import="java.util.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
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
.style6 {font-size: 16px}
.style7 {font-size: xx-large;
	color: #FFFFFF;
}
body {
	background-color: #0066CC;
	background-image: url(images/bb.jpg);
}
.style8 {
	color: #FFFFFF;
	font-weight: bold;
}
.style9 {color: #FFFFFF}
.style10 {font-size: 16px; color: #FFFFFF; }
</style>
<script language="JavaScript">
function validation()
{
var a = document.form.id.value;
var b = document.form.name.value;
var b1 = document.form.pass.value;
var c = document.form.email.value;
var d= document.form.phone.value;

if(a=="")
{
alert("Enter Your Id");
document.form.id.focus();
return false;
}
if(b=="")
{
alert("Enter the Name");
document.form.name.focus();
return false;
}
if(b1=="")
{
alert("Enter the Password");
document.form.pass.focus();
return false;
}
if(c=="")
{
alert("Enter the emailid");
document.form.email.focus();
return false;
}
if (c.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}
if (c.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}	
if(d=="")
{
alert("Enter the phoneno");
document.form.phone.focus();
return false;
}
if(isNaN(d))
    {
        alert("Please enter the Correct Phone number");
			document.form.phone.focus();
        return false;
    }
if(e=="")
{
alert("Enter the designation");
document.form.designation.focus();
return false;
}
}
</script>
</head>

<body>

<div id="Container">
<div>
  <div>
    <div>
      <div><img src="images/mona2.jpg" width="621" height="159" /><span class="style7" style="position:absolute; left:668px; top:38px; height: 92px; width: 693px;">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud </span></div>
    </div>
  </div>
</div>
<div style="position:absolute; left:30px; top:20px"></div>

<div style="position:absolute; left:250px; top:60px"></div>
 <div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
            <li><a class="current" href="index.html">Homepage</a></li>
            <li><a href="admin.jsp">Data Owner </a></li>
            <li><a href="user.jsp">UserLogin</a></li>
			<li><a href="ttp.jsp">Group Manager</a><a href="user.jsp"></a></li>
          </ul>
        </div>
      </div>
    </div>
</div>
 <!--CONTENT -->
<div id="Content">
    <div class="sidebarmenu">
	<div style="position:absolute; left:1130px; top:350px; width: 347px;">
<ul id="sidebarmenu1">
         
        <li><a href="index.jsp">HomePage</a></li>
        <li><a href="admin.jsp"></a></li>
        <li><a href="user.jsp">UserLogin</a></li>
		 <li><a href="user.jsp"></a></li>
        <li><a href="creategroup.jsp">Registration</a></li>
        <li><a href="adminpage.jsp">Back</a></li>
      </ul>

</div>
<div style="position:absolute; left:750px; top:280px"> </div>

 </div>
    <p>&nbsp;</p>
    <table>
      <tr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;nbsp&nbsp;&amp;nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Download File&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <td width="1090"></th>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%
File f = new File("C:/UploadedFiles");
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
            String name=files[i].getName();
            String path=files[i].getPath();
%>
          </td>
      </tr>
      <tr>
        <td align="left" valign="top"><form action="decoy" method="post" id="frm">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="name" type="text" id="name" value="<%=name%>" size="100"/>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input name="path" type="text" id="path" value="<%=path%>" style="visibility:hidden" size="3" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input name="Download" type="submit" value="Download" />
            </p>
        </form></td>
      </tr>
      <%
        }
%>
    </table>
    <p><br>
        <br>
      
      <!--FOOTER--> 
      </p>
    <div id="footer">
    
  </div>
<!--END OF FOOTER--> 
</div>
</body>
</html>
