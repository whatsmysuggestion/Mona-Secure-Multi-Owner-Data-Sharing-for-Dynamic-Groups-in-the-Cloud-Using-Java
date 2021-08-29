<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud </title>
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
background-color:#3399FF; /*background of tabs (default state)*/
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
.style7 {	font-size: xx-large;
	color: #FFFFFF;
}
body {
	background-image: url(images/bb.jpg);
	background-color: #0066CC;
}
.style8 {font-size: 36px}
</style>
<script language="JavaScript">
function validation()
{
var a = document.form.domain.value;
var b = document.form.subdomain.value;
var c = document.form.title.value;
var d = document.form.types.value;
var e= document.form.image.value;
var f= document.form.descrip.value;

if(a=="")
{
alert("Enter The domain");
document.form.domain.focus();
return false;
}
if(b=="")
{
alert("Enter the subdomain");
document.form.subdomain.focus();
return false;
}
if(c=="")
{
alert("Enter the title");
document.form.title.focus();
return false;
}
if(d=="")
{
alert("Enter the types");
document.form.types.focus();
return false;
}
if(e=="")
{
alert("select the image");
document.form.image.focus();
return false;
}

if(f=="")
{
alert("Enter the descrip");
document.form.descrip.focus();
return false;
}
}
</script>
</head>
<body>

<div id="Container">
<div>
  <div><img src="images/mona2.jpg" width="621" height="159" /><span class="style7" style="position:absolute; left:668px; top:38px; height: 92px; width: 693px;">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud </span></div>
</div>
<div style="position:absolute; left:30px; top:20px"></div>


<div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
            <li><a class="current" href="index.jsp">Homepage</a></li>
            <li><a href="admin.jsp">Data Owner </a></li>
            <li><a href="user.jsp">UserLogin</a></li>
            <li><a href="#">Group Manager</a></li>
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
        <li><a href="creategroup.jsp">Add Group Manager </a></li>
        <li><a href="deletegroup.jsp">Delete Group Manager </a></li>
        <li><a href="adddata.jsp">Add Data </a></li>
		<li></li>
        <li><a href="admin.jsp">Logout</a></li>
		<li><a href="viewuserreg.jsp"></a></li>
		<li><a href="viewgraph.jsp"></a></li>

       
      </ul>
</div>
    </div>
    <!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
<table width="693" height="299" border="0">
    <tr>
      <td width="237" height="295">&nbsp;</td>
      <td width="446"><table width="435" height="273" border="0" bordercolor="#3399FF">
        <tr>
          <td height="39"><div align="center" class="style8">Data Owner </div></td>
        </tr>
        <tr>
          <td height="196"><img src="images/mona5.jpg" width="427" height="221" /></td>
        </tr>
      </table></td>
    </tr>
</table>
</body>
</html>
