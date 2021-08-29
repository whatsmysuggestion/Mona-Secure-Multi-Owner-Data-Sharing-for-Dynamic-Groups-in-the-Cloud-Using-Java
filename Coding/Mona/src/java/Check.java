

import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.net.ssl.*; 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
   public class Check extends HttpServlet {
    String username="";
    String eid="";
    String uname="";
    String path="";
    String replace="Null";
    String secretkey="Null";
    String host = "smtp.gmail.com";
    String subject = "Secret Key";
    String email="email";
    String mailid="";
	//String department="";
    Connection con=null;
    Statement st=null;
    Statement st1=null;
    Statement st2=null;
    ResultSet rs=null;
    //ResultSet rs1=null;
    ResultSet rs2=null;
    RequestDispatcher rd=null;
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        System.out.println("Started");
        String to = req.getParameter("to");
        String from="anandm.squaresoft@gmail.com";  // write your email address means from email address.
        //String from="YourEmailAddress";
        //username = req.getParameter("username");
        String messageText = req.getParameter("body");
        boolean sessionDebug = true;
        // Create some properties and get the default Session.
        //System.setProperty("smtp.protocols", "SSLv3");
        System.out.println("Pass 1");
        uname = req.getParameter("name").toString();
        path=req.getParameter("path");
        
       
	//	department=req.getParameter("department");
	  // HttpSession sn = req.getSession(true);
          // username=sn.getAttribute("eid").toString();
	   //sn.setAttribute("eid",username);
           //HttpSession sn = request.getSession(true);
           System.out.println(username);
           System.out.println("Pass 2");
        //sn.setAttribute("dpm",department);
		RequestDispatcher rd = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
            st = con.createStatement();
            rs = st.executeQuery("select * from storage where uname='"+uname+"'");
            System.out.println("Pass 3");
            if(rs.next()) {
                try {
                 Random generator = new Random();
                int r = generator.nextInt(9999);
            String s12 = "9a3"+r+"d8k";
            //sn.setAttribute("secretkey", s12);
            System.out.println(s12);
           // int add=st.executeUpdate("insert into userlogin values('"+secretkey+"')");
                System.out.println("Pass 4");
             // department=rs.getString(3);
                st1=con.createStatement();
                System.out.println("Pass 5");
                int val=st1.executeUpdate("update userlogin set passid='"+s12+"' where userid='"+username+"'"); 
                System.out.println("Pass 6");
                if(val!=0)
                {
                   /* st2=con.createStatement();
                    System.out.println("Pass 7");
                    rs2=st2.executeQuery("select * from userlogin where userid='"+uname+"'");
                    System.out.println("Pass 8");
                    if(rs2.next())
                    {
                    mailid=rs2.getString(email).toString();
                    System.out.println("Pass 9");
                    System.out.println(mailid);
                    }*/
                System.out.println("Pass 10");
                rd=req.getRequestDispatcher("mail.jsp");
                }
                }
                catch(Exception e3)
         {
            System.out.println("Exception : "+e3.toString());
        }
                //	sn.setAttribute("dpm",department);
            } else 
                {
                    System.out.println("Pass 11");
                rd=req.getRequestDispatcher("download.jsp?f="+path+"");               
	        }
	        rd.forward(req,res);
        }
        catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
    }
}