<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Index</title>
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
/* End */

.style5 {
	font-size: xx-large;
	color: #FFFFFF;
}
body {
	background-color: #0066CC;
	background-image: url(images/bb.jpg);
}
.style6 {
	color: #FFFFFF;
	font-weight: bold;
}
.style7 {color: #FFFFFF}
</style>
	<script language="JavaScript">
function validation()
{
var a = document.form.username.value;
var b = document.form.password.value;
if(a=="")
{
alert("Enter Your UserName");
document.form.username.focus();
return false;
}
if(b=="")
{
alert("Enter the password");
document.form.password.focus();
return false;
}
}
</script>
</head>
<body>
<div id="Container">
<div><img src="images/mona2.jpg" width="621" height="159" /><span class="style5" style="position:absolute; left:668px; top:38px; height: 92px; width: 693px;">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud
</span></div>
<div style="position:absolute; left:30px; top:20px"></div>

<div style="position:absolute; left:250px; top:60px"></div>
 <div id="submenu">
    <div class="clsSubmenu_left">
      <div class="clsSubmenu_right">
        <div class="clsSubmenu_center">
          <ul class="clsClearfix">
            <li><a class="current" href="index.jsp">Homepage</a></li>
            <li><a href="admin.jsp">Data Owner </a></li>
            <li><a href="user.jsp">UserLogin</a></li>
            <li><a href="#">Group Manager </a></li>
            <li><a href="#"></a></li>
            
          </ul>
        </div>
      </div>
    </div>
  </div>
  
  <!--CONTENT -->
  <div id="Content">
    
<div style="position:absolute; left:921px; top:280px; width: 677px;">
  <div class="sidebarmenu">
    <form id="form1" name="form1" method="post" action="">
      <label>
        <input type="image" name="imageField" src="images/cam6.jpg" />
        </label>
    </form>
</div> 
</div>

 <div style="position:absolute; left:240px; top:250px"> 
      <h1 class="style7"><font size="4"> <a href="admin.jsp" class="style7">Data Owner </a> Login</font></h1>
			<br><br><br>
<fieldset style="border: 2px #3399FF solid;">
      <legend class="style6"><font size="4">Login</font></legend>


<table width="366" align="center">
 <form action="adminlog.jsp" method="post" name="form" onsubmit="return validation();">
<tr align="center">
            <td width="163" height="46" class="paragraping"><span class="style7"><font size="3">UserName</font></span></td>
<td width="191" class="fielditem"><input type="text"  name="username"></td>
</tr>


<tr align="center">
            <td width="163" height="51" class="paragraping"><span class="style7"><font size="3">Password</font></span></td>
<td width="191" class="fielditem"><input type="password"  name="password"></td>
</tr>
<tr align="center">
<td></td>
<td><input type="submit" name="B1" class="button" value="Login">
<input type="reset" name="reset" class="button" value="Clear"></td>
</tr>
</form>
</table>
</fieldset>
  
  </div>
  </div>                                
                     
       

<!--FOOTER--> 

  
<!--END OF FOOTER--> 
</div>
</body>
</html>
