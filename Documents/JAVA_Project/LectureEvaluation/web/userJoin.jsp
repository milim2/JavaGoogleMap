<%-- 
    Document   : index.jsp
    Created on : 19-Feb-2018, 7:59:33 PM
    Author     : irene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <form method="post" action="./userRegisterAction.jsp">
                <div class="form-group">
                    <label>User ID</label>
                    <input type="text" name="userID" class="form-control">                    
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="userPassword" class="form-control">                    
                </div>
                 <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="userEmail" class="form-control">                    
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
            </form>            
        </section>
        
        <footer class="bg-dark mt-4 p-5 text-center" style="color:#ffffff;">
            Copyright &copy; 2018 Milim Lee All rights reserved.
        </footer>    
            
        
    </body>
</html>
