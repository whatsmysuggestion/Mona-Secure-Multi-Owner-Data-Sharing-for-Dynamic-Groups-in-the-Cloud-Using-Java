
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>CAM: Cloud-Assisted Privacy Preserving Mobile Health Monitoring</title>
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
.style6 {font-size: xx-large;
	color: #FFFFFF;
}
body {
	background-color: #0066CC;
	background-image: url(images/bb.jpg);
}
.style7 {color: #FFFFFF}
</style>
	<script language="JavaScript">
function validation()
{
var a = document.form.email.value;
var b = document.form.pass.value;
if(a=="")
{
alert("Enter Your UserID");
document.form.email.focus();
return false;
}
if(b=="")
{
alert("Enter the password");
document.form.pass.focus();
return false;
}
}
</script>
</head>
<body>
<div id="Container">
  <div>
    <div>
      <div><img src="images/mona2.jpg" width="621" height="159" /><span class="style6" style="position:absolute; left:668px; top:38px; height: 92px; width: 693px;">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud </span></div>
    </div>
  </div>
  <div style="position:absolute; left:30px; top:20px"></div>

<div style="position:absolute; left:639px; top:59px"></div>
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
         <li><a href="index.jsp">HomePage</a></li>
        <li><a href="admin.jsp">Adminlogin</a></li>
        <li><a href="user.jsp">UserLogin</a></li>
      
      </ul>
</div>
</div>

 <div class="style7" style="position:absolute; left:240px; top:250px"> 
      <h1><font size="4">UserLogin</font></h1>
			<br><br><br>
<fieldset style="border: 2px #3399FF solid;">
      <legend><font size="4"><strong>Login</strong></font></legend>


<table width="366" align="center">
 <form action="userlogin.jsp" method="post" name="form" onsubmit="return validation();">
<tr align="center">
            <td width="163" height="46" class="paragraping"><font size="3">UserId</font></td>
<td width="191" class="fielditem"><input type="text"  name="email"></td>
</tr>


<tr align="center">
            <td width="163" height="51" class="paragraping"><font size="3">Password</font></td>
<td width="191" class="fielditem"><input type="password"  name="pass"></td>
</tr>
<tr align="center">
<td></td>
<td><input type="submit" name="B1" class="button" value="Login">
<input type="reset" name="reset" class="button" value="Clear"></td>
</tr>
</form>
</table>
</fieldset>
<br><br>

  </div>
  </div>                                
                     
       

<!--FOOTER--> 

  
<!--END OF FOOTER--> 
</div>
</body>
</html>
