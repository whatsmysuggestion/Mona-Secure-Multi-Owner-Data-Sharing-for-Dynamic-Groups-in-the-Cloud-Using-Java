

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
.style6 {font-size: xx-large;
	color: #FFFFFF;
}
body {
	background-color: #0066CC;
	background-image: url(images/bb.jpg);
}
.style8 {
	font-size: 36px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
</style>
<script language="JavaScript">
function validation()
{
var a = document.form.query.value;


if(a=="")
{
alert("Enter Your Query");
document.form.query.focus();
return false;
}


	

}
</script>
</head>
<body>
<div id="Container">
<div>
  <form id="form1" name="form1" method="post" action="">
    <label><img src="images/mona2.jpg" width="619" height="156" /></label>
    <span class="style6" style="position:absolute; left:668px; top:38px; height: 92px; width: 693px;">Mona: Secure Multi-Owner Data Sharing for Dynamic Groups in the Cloud </span>
  </form>
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
            <li><a href="ttp.jsp">Group Manager</a><a href="#"></a></li>
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
        <li><a href="user.jsp">UserLogin</a></li>
        <li><a href="viewFiles1.jsp">View Cloud Data </a></li>
        
		
         <form id="form2" name="form2" method="post" action="viewuserquery.jsp">
		   <input type="hidden" name="email" value="<%=session.getAttribute("email")%>" />
           <label></label>
         </form>
</ul>

</div>

 <div style="position:absolute; left:114px; top:313px; width: 511px; height: 366px;"> 
 <h1>&nbsp;</h1>
 <br><br>
 <table width="549" height="293" border="0">
   <tr>
     <td height="48"><div align="left"><span class="style8">Cloud User</span> </div></td>
   </tr>
   <tr>
     <td height="237"><table width="472" height="236" border="0">
       <tr>
         <td width="222"><img src="images/mona7.jpg" width="222" height="223" /></td>
         <td width="252"><img src="images/mona8.jpg" width="236" height="228" /></td>
       </tr>
     </table></td>
   </tr>
 </table>
 <br>
  <h1>&nbsp;</h1>
  <br><br>
 </div>
  </div>                                
                     
       

<!--FOOTER--> 

<!--END OF FOOTER--> 
</div>
</body>
</html>
