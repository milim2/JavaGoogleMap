<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import="util.SHA256"%>
<%@ page import="java.io.PrintWriter"%>
<%
    request.setCharacterEncoding("UTF-8");
    String userID = null;
    String userPassword = null;
    String userEmail = null;
    if(request.getParameter("userID") != null){
        userID = request.getParameter("userID");
    }
    if(request.getParameter("userPassword") != null){
        userID = request.getParameter("userPassword");
    }
    if(request.getParameter("userEmail") != null){
        userID = request.getParameter("userEmail");
    }
    if(userID == null || userPassword == null || userEmail == null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('invalid input type');");
            script.println("history.back();");
                script.println("</script>");
                script.close();
                return;
    }
    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(new UserDTO(userID, userPassword, userEmail, SHA256.getSHA256(userEmail)));

    if(result == -1){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Already exists.');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    } else{
        session.setAttribute("userID", userID)
        PrintWriter script = reponse.getWriter();
        script.println("<script>");
        script.println("location.href = 'emailSendAction.jsp'");
        script.println("</script>");
        script.close();
        return;
        
    }
    %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    
</body>
</html>