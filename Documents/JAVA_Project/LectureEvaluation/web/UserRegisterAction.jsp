<%-- 
    Document   : UserRegisterAction
    Created on : 31-Mar-2018, 4:24:10 PM
    Author     : irene
    Certify
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import="util.SHA256"%>
<%@ page import="javaio.PrinWriter"%>
<%
    request.setCharacterEncoding(UTF-8);
    String userID = null;
    String userPassword = null;
    String userEmail = null;
    
    if(request.getParameter("userID")!= null)
        userID = request.getParameter("userID");
    
    if(request.getParameter("userPassword")!= null)
        userPassword = request.getParameter("userPassword");

    if(request.getParameter("userEmail")!= null)
        userEmail = request.getParameter("userEmail");
    
    if(userID == null || userPassword == null || userEmail == null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Please make sure input the information');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    }
            
    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(new UserDTO(userID, userPassword, userEmail, SHA256.getSHA()));
    if(result == -1){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Already exist ID');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    } else {
        // login
        session.setAttribute("userID", userID);
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("(location.href = 'emailSendAction.jsp'");
        script.println("</script>");
        script.close();
        return;
    }
    
%>    
