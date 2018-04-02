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
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Lecture Evaluation Site for Sheridan Students</title>
        <!-- Adding Bootstrap CSS -->
        <link rel="stylesheet" href="./css/bootstrap.css">
        <!-- Adding custom CSS -->
        <link rel="stylesheet" href="./css/custom.css">
        <!-- Adding J-query Java Script -->
        <script src="https://code.jquery-3.1.1.min.js"></script>
        <!-- Adding popper Java Script -->
        <script src="./js/popper.js"></script>
        <!-- Adding Bootstrap Java Script -->
        <script src="./js/bootstrap.min.js"></script>

    </head>
    <body>

        <nav class="navbar navbar-expand-sm navbar-light bg-light">
            <a class="navbar-brand" href="index.jsp">Lecture Evaluation</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div id="navbar" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="./index.jsp"> Main </a>
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

        <section class="container">
            <form method="get" action="./index.jsp" class="form-inline mt-3">
                <select name="lectureDivide" class="form-control mx-1 mt-2">
                    <option value="all">All</option>
                    <option value="mandatory">Mandatory course</option>
                    <option value="elective">Elective course</option>
                    <option value="others">Others</option>
                </select>
                <input type="text" name="search" class="form-control mx-1 mt-2" placeholder="search">
                <button type="submit" class="btn btn-primary mx-1 mt-2">Search</button>
                <a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">Register</a>
                <a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="#reportModal">Report</a>              
            </form> 

            <div class="card bg-light mt-3">
                <div class="card-header bg-light">
                    <div class="row">
                        <div class="col-8 text-left">WEb Development 2&nbsp;<samll>Sonia</samll></div>
                        <div class="col-4 text-right">
                            Total Grade  <span style="color: red;">D</span>
                        </div>
                    </div>                
                </div>        

                <div class="card-body">
                    <h5 class="card-title">
                        Her lecture was not good.&nbsp;<small>(2018 Jan)</small>
                    </h5>
                    <p class="card-text">She didn't teach anything, but she gave us a lit of assignment which is really hard to solve by myself.</p>
                    <div class="row">
                        <div class="col-9 text-left">
                            Grade<span style="color:red">A</span>
                            Intensity<span style="color:red">C</span>
                            Lecture<span style="color:red">D</span>
                            <span style="color:green">(recommend: 15)</span>
                        </div>
                        <div class="col-3 text-right">
                            <a onClick="retuen confirm('Like')" href="./likeAction.js?evaluationID=">Like</a>
                            <a onClick="retuen confirm('Delete')" href="./deleteAction.js?evaluationID=">Delete</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card bg-light mt-3">
                <div class="card-header bg-light">
                    <div class="row">
                        <div class="col-8 text-left">WEb Development 1&nbsp;<samll>Den Zen</samll></div>
                        <div class="col-4 text-right">
                            Total Grade  <span style="color: red;">B</span>
                        </div>
                    </div>                
                </div>

                <!-- 1st evaluation -->
                <div class="card-body">
                    <h5 class="card-title">
                        Her lecture was not good.&nbsp;<small>(2017 Sep)</small>
                    </h5>
                    <p class="card-text">He didn't teach much detailed, but he gave us practical assignments which can be a firm knowledge for us.</p>
                    <div class="row">
                        <div class="col-9 text-left">
                            Grade<span style="color:red">A</span>
                            Intensity<span style="color:red">A</span>
                            Lecture<span style="color:red">C</span>
                            <span style="color:green">(recommend: 20)</span>
                        </div>
                        <div class="col-3 text-right">
                            <a onClick="retuen confirm('Like')" href="./likeAction.js?evaluationID=">Like</a>
                            <a onClick="retuen confirm('Delete')" href="./deleteAction.js?evaluationID=">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card bg-light mt-3">
                <div class="card-header bg-light">
                    <div class="row">
                        <div class="col-8 text-left">OOP - Java 1&nbsp;<samll>Richard Yanaki</samll></div>
                        <div class="col-4 text-right">
                            Total Grade  <span style="color: red;">A</span>
                        </div>
                    </div>                
                </div>

                <!-- 1st evaluation -->
                <div class="card-body">
                    <h5 class="card-title">
                        His lecture was good.&nbsp;<small>(2017 Sep)</small>
                    </h5>
                    <p class="card-text">His teaching skill and materials were so nice. Sometimes you can feel boring, but his example code of Java 1 was really useful.
                        And He always tried to let us know the concept and share his time for each student directly.
                        His attitude to students were honest and fair. He is the best professor in Sheridan.</p>
                    <div class="row">
                        <div class="col-9 text-left">
                            Grade<span style="color:red">A</span>
                            Intensity<span style="color:red">B</span>
                            Lecture<span style="color:red">A</span>
                            <span style="color:green">(recommend: 50)</span>
                        </div>
                        <div class="col-3 text-right">
                            <a onClick="retuen confirm('Like')" href="./likeAction.js?evaluationID=">Like</a>
                            <a onClick="retuen confirm('Delete')" href="./deleteAction.js?evaluationID=">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modal">Write my evaluation</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="./evaluationRegisterAction.jsp" method="post">
                            <div class="form-row">

                                <div class="form-group col-sm-6">
                                    <label>Class Name</label>
                                    <input type="text" name="lectureName" class="form-control" maxlength="35">                                
                                </div>
                                <div class="form-group col-sm-6">
                                    <label>Professor</label>
                                    <input type="text" name="professorName" class="form-control" maxlength="35"> 
                                </div>                                
                            </div>
                            <div class="form-row">
                                <div class="form-group col-sm-4">
                                    <label>Taken Year</label>
                                    <select name="lectureYear" class="form-control">
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018" selected>2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                    </select>
                                </div>
                                <div class="form-group col-sm-4">
                                    <label>Semester</label>
                                    <select value="semesterDivide" class="form-control">
                                        <option value="Autumn" selected>Autumn</option>
                                        <option value="Winter">Winter</option>
                                        <option value="Spring">Spring</option>
                                        <option value="Summer">Summer</option>
                                    </select>
                                </div>
                                <div class="form-group col-sm-4">
                                    <label>Class type</label>
                                    <select value="lectureDivide" class="form-control">
                                        <option value="Mandatory" selected>Mandatory</option>
                                        <option value="Elective">Elective</option>
                                        <option value="Others">Others</option>                                        
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="evaluationTime" class="form-control" maxlength="50"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Contents</label>
                                <textarea name="evaluationcontents" class="form-control" maxlength="2048" style="height:180px;"></textarea>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-sm-3">
                                    <label>Total Score</label>
                                    <select name="totalScore" class="form-control">
                                        <option value="A">A</option>
                                        <option value="B" selected>B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                        <option value="E">E</option>
                                        <option value="F">F</option>
                                    </select>
                                </div>
                                <div class="form-group col-sm-3">
                                    <label>Total Score</label>
                                    <select name="totalScore" class="form-control">
                                        <option value="A">A</option>
                                        <option value="B" selected>B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                        <option value="E">E</option>
                                        <option value="F">F</option>
                                    </select>
                                </div>
                                <div class="form-group col-sm-3">
                                    <label>Your Grade</label>
                                    <select name="creditScore" class="form-control">
                                        <option value="A">A</option>
                                        <option value="B" selected>B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                        <option value="E">E</option>
                                        <option value="F">F</option>
                                    </select>
                                </div>
                                <div class="form-group col-sm-3">
                                    <label>Lecture Evaluation</label>
                                    <select name="lectureScore" class="form-control">
                                        <option value="A">A</option>
                                        <option value="B" selected>B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                        <option value="E">E</option>
                                        <option value="F">F</option>
                                    </select>
                                </div>                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modal">Report</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="./reportAction.jsp" method="post">

                            <div class="form-group">
                                <label>Report Title</label>
                                <input type="text" name="reportTitle" class="form-control" maxlength="50"/>
                            </div>
                            <div class="form-group">
                                <label>Report Contents</label>
                                <textarea name="reportContents" class="form-control" maxlength="2048" style="height:180px;"></textarea>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-danger">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Report -->
        <div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modal">Report</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="./reportAction.jsp" method="post">

                            <div class="form-group">
                                <label>Report title</label>
                                <textarea name="reportTitle" class="form-control" maxlength="50"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Contents</label>
                                <textarea name="reportcontents" class="form-control" maxlength="2048" style="height:180px;"></textarea>
                            </div>                           
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-danger">Report</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer class="bg-dark mt-4 p-5 text-center" style="color:#ffffff;">
            Copyright &copy; 2018 Milim Lee All rights reserved.
        </footer>    


    </body>
</html>
