<%-- 
    Document   : UserRegisterAction
    Created on : 31-Mar-2018, 4:24:10 PM
    Author     : irene
    Certify
--%>


<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import="util.SHA256"%>
<%@ page import="util.Gmail"%>
<%@ page import="java.io.PrintWriter"%>
<%
    UserDAO userDAO = new UserDAO();
    String userID = null;
    if(session.getAttribute("userID") != null){
        userID = (String) session.getAttribute("userID");
    }
    if(userID == null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Please Login');");
        script.println("location.href = 'userLogin.jsp'");
        script.println("</script>");
        script.close();
        return;
    }
    
    boolean emailChecked = userDAO.getUserEmailChecked(userID);
    if(emailChecked == true){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Already signed');");
        script.println("location.href = 'index.jsp'");
        script.println("</script>");
        script.close();
        return;
    }    
    
    
    String host = "http://localhost:8080/LectureEvaluation/";
    String from = "milimlee0@gmail.com";
    String to = userDAO.getUserEmail(userID);
    String subject = "You must verify your email.";
    String content = "Click this link to verify your email address on Lecture Evaluation." +
            "<a href='" + host + "emailCheckAction.jsp?code=" + new SHA256().getSHA256(to) + "'>Authenticate your email</a>";
    
    Properties p = new Properties();
    p.put("mail.smtp.user", from);
    p.put("mail.smtp.host", "smtp.googlemail.com");
    p.put("mail.smtp.port", "465");
    p.put("mail.smtp.starttls.enable", "true");
    p.put("mail.smtp.auth", "true");
    p.put("mail.smtp.debug", "true");
    p.put("mail.smtp.socketFactory.port", "465");
    p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    p.put("mail.smtp.socketFactory.fallback", "false");
    
    // sending email
    try{
        Authenticator auth = new Gmail();
        Session ses = Session.getInstance(p, auth);
        ses.setDebug(true);
        MimeMessage msg = new MimeMessage(ses);
        msg.setSubject(subject);
        Address fromAddr = new InternetAddress(from);
        msg.setFrom(fromAddr);
        Address toAddr = new InternetAddress(to);
        msg.addRecipient(Message.RecipientType.TO, toAddr);
        msg.setContent(content, "text/html;charset=UTF8");
        Transport.send(msg);        
    } catch(Exception e) {
        e.printStackTrace();
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Error occurred');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    }    
%>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content=""width="device-width, initial-scale=1, shrink-to-fit=no"
        <title>Lecture Evaluation Site for Sheridan Students</title>
        <!-- Adding Bootstrap CSS -->
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <!-- Adding custom CSS -->
        <link rel="stylesheet" href="./css/custom.css">
        <!-- Adding J-query Java Script -->
        <script src="./js/jquery.min.js"></script>
        <!-- Adding popper Java Script -->
        <script src="./js/popper.js"></script>
        <!-- Adding Bootstrap Java Script -->
        <script src="./js/bootstrap.min.js"></script>
                
    </head>
    <body>
        
        <nav class="navbar navbar-extend-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.jsp">Lecture Evaluation</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Main</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">>
                            Membership
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdown">
                            <a class="dropdown-item" href="userLogin.jsp">Login</a>
                            <a class="dropdown-item" href="userJoin.jsp">Sign up</a>
                            <a class="dropdown-item" href="userLogout.jsp">Logout</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>             
        </nav>
        
        <section class="container mt-3" style="max-width: 560px;">
            <div class="alert alert-success mt-4" role="alert">
                We sent a confirmation link to your email address.Please log in to your email account and find the email we have just sent you. 
            </div>
        </section>                                
        <footer class="bg-dark mt-4 p-5 text-center" style="color:#ffffff;">
            Copyright &copy; 2018 Milim Lee All rights reserved.
        </footer>         
    </body>
</html>

