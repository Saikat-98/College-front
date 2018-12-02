<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
       HttpSession nsession = request.getSession(false);
    if(nsession!=null) {
       String Username=(String)session.getAttribute( "Username" );
       String Email=(String)session.getAttribute( "Email" );
       session.setAttribute("Username",Username);
       session.setAttribute("Email",Email);
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/college?useSSL=false","root","saibbskat1208");
       String sql_query="select * from College_List";
       PreparedStatement pstmt=conn.prepareStatement(sql_query);
       ResultSet rs=pstmt.executeQuery();
       String sql_query1="select Grade1,Grade2 from Personaldetails where Username=?";
       PreparedStatement pstmt1=conn.prepareStatement(sql_query1);
       pstmt1.setString(1,Username);
       ResultSet rs1=pstmt1.executeQuery();
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Modernize an Admin Panel Category Bootstrap Responsive Web Template | Tables :: w3layouts</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta Tags -->

    <!-- Style-sheets -->
    <!-- Bootstrap Css -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Css -->
    <!-- Common Css -->
    <link href="css/dashboard-Style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->
    <!-- Nav Css -->
    <link rel="stylesheet" href="css/style4.css">
    <!--// Nav Css -->
    <!-- Fontawesome Css -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!--// Fontawesome Css -->
    <!--// Style-sheets -->

    <!--web-fonts-->
    <link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!--//web-fonts-->
</head>

<body>
    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h1>
                    <a href="index.html">College Mania</a>
                </h1>
                <span><img src="images/images.jpg"></span>
            </div>
            <div class="profile-bg"></div>
            <ul class="list-unstyled components">
                <li>
                    <a href="dashboardIndex.jsp">
                        <i class="fas fa-th-large"></i>
                        Dashboard
                    </a>
                </li>
                <li>
                    <a href="tables.jsp">
                        <i class="fas fa-th-large"></i>
                        Colleges
                    </a>
                </li>
                <li>
                    <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false">
                        <i class="fas fa-users"></i>
                        Admin
                        <i class="fas fa-angle-down fa-pull-right"></i>
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu3">
                        <li>
                            <a href="login.jsp">Login</a>
                        </li>
                        <li>
                            <a href="register.jsp">Register</a>
                        </li>
                        <li>
                            <a href="forgot.jsp">Forgot password</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="maps.jsp">
                        <i class="far fa-map"></i>
                        Maps
                    </a>
                </li>
            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">
            <!-- top-bar -->
            <nav class="navbar navbar-default mb-xl-5 mb-4">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                            <i class="fas fa-bars"></i>
                        </button>
                    </div>
                    <!-- Search-from -->
                    <form action="#" method="post" class="form-inline mx-auto search-form">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" required="">
                        <button class="btn btn-style my-2 my-sm-0" type="submit">Search</button>
                    </form>
                    <!--// Search-from -->
                    <ul class="top-icons-agileits-w3layouts float-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-bell"></i>
                                <span class="badge">4</span>
                            </a>
                            <div class="dropdown-menu top-grid-scroll drop-1">
                                <h3 class="sub-title-w3-agileits">User notifications</h3>
                                <a href="#" class="dropdown-item mt-3">
                                    <div class="notif-img-agileinfo">
                                        <img src="images/clone.jpg" class="img-fluid" alt="Responsive image">
                                    </div>
                                    <div class="notif-content-wthree">
                                        <p class="paragraph-agileits-w3layouts py-2">
                                            <span class="text-diff">John Doe</span> Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                        <h6>4 mins ago</h6>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <div class="notif-img-agileinfo">
                                        <img src="images/clone.jpg" class="img-fluid" alt="Responsive image">
                                    </div>
                                    <div class="notif-content-wthree">
                                        <p class="paragraph-agileits-w3layouts py-2">
                                            <span class="text-diff">Diana</span> Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                        <h6>6 mins ago</h6>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <div class="notif-img-agileinfo">
                                        <img src="images/clone.jpg" class="img-fluid" alt="Responsive image">
                                    </div>
                                    <div class="notif-content-wthree">
                                        <p class="paragraph-agileits-w3layouts py-2">
                                            <span class="text-diff">Steffie</span> Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                        <h6>12 mins ago</h6>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <div class="notif-img-agileinfo">
                                        <img src="images/clone.jpg" class="img-fluid" alt="Responsive image">
                                    </div>
                                    <div class="notif-content-wthree">
                                        <p class="paragraph-agileits-w3layouts py-2">
                                            <span class="text-diff">Jack</span> Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                        <h6>1 days ago</h6>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">view all notifications</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown mx-3">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="fas fa-spinner"></i>
                            </a>
                            <div class="dropdown-menu top-grid-scroll drop-2">
                                <h3 class="sub-title-w3-agileits">Shortcuts</h3>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fas fa-chart-pie mr-3"></i>Sed feugiat</h4>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fab fa-connectdevelop mr-3"></i>Aliquam sed</h4>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fas fa-tasks mr-3"></i>Lorem ipsum</h4>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fab fa-superpowers mr-3"></i>Cras rutrum</h4>
                                </a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-user"></i>
                            </a>
                            <div class="dropdown-menu drop-3">
                                <div class="profile d-flex mr-o">
                                    <div class="profile-l align-self-center">
                                        <img src="images/profile.jpg" class="img-fluid mb-3" alt="Responsive image">
                                    </div>
                                    <div class="profile-r align-self-center">
                                        <h3 class="sub-title-w3-agileits"><%out.println(Username);%></h3>
                                        <a href="mailto:info@example.com"><%out.println(Email);%></a>
                                    </div>
                                </div>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-user mr-3"></i>My Profile</h4>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fas fa-link mr-3"></i>Activity</h4>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-envelope mr-3"></i>Messages</h4>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-question-circle mr-3"></i>Faq</h4>
                                </a>
                                <a href="#" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-thumbs-up mr-3"></i>Support</h4>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="login.jsp">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            <!--// top-bar -->
            <!-- main-heading -->
            <h2 class="main-title-w3layouts mb-2 text-center">Colleges</h2>
            <!--// main-heading -->
            <section class="tables-section">

                <div class="outer-w3-agile mt-3">
                    <h4 class="tittle-w3-agileits mb-4">List of Colleges</h4>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col" rowspan="2" style="text-align: center;vertical-align: middle;">Serial No.</th>
                                <th scope="col" rowspan="2" style="text-align: center;vertical-align: middle;">College Name</th>
                                <th scope="col" rowspan="2" style="text-align: center;vertical-align: middle;">State</th>
                                <th scope="col" rowspan="2" style="text-align: center;vertical-align: middle;">Cutoff</th>
                                <th scope="col" colspan="2" style="text-align: center;vertical-align: middle;">Counselling Dates</th>
                                <th scope="col" rowspan="2" style="text-align: center;vertical-align: middle;">Scholarship Status</th>
                                <th scope="col" rowspan="2" style="text-align: center;vertical-align: middle;">Url</th>
                            </tr>
                            <tr>
                                <th scope="row" style="text-align: center;vertical-align: middle;">From</th>
                                <th scope="row" style="text-align: center;vertical-align: middle;">To</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                int serial=0;
                                while(rs.next())
                                {
                                    String status="";
                                    double cut=Double.parseDouble(rs.getString("Cutoff"));
                            %>
                            <tr>
                                <th scope="row" style="text-align: center;vertical-align: middle;"><%=++serial%></th>
                                <td style="text-align: center;vertical-align: middle;"><%out.println(rs.getString(2));%></td>
                                <td style="text-align: center;vertical-align: middle;"><%out.println(rs.getString(3));%></td>
                                <td style="text-align: center;vertical-align: middle;"><%out.println(rs.getString(4));%></td>
                                <td style="text-align: center;vertical-align: middle;"><%out.println(rs.getString(5));%></td>
                                <td style="text-align: center;vertical-align: middle;"><%out.println(rs.getString(6));%></td>
                                <td style="text-align: center;vertical-align: middle;">
                                    <%
                                        rs1=pstmt1.executeQuery();
                                        if(rs1.next())
                                        {
                                            double avg=(rs1.getDouble(1)+rs1.getDouble(2))/2;
                                            if(avg>=cut)
                                                status="Eligible";
                                            else
                                                status="Not eligible";
                                        }
                                        out.println(status);
                                    %>
                                </td>
                                <td style="text-align: center;vertical-align: middle;"><b><a href="http://<%=rs.getString(7)%>">View More</a></b></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </section>

            <!--// Tables content -->

            <!-- Copyright -->
            <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                <p>© 2018 Modernize . All Rights Reserved | Design by
                    <a href="index.html"> College Mania </a>
                </p>
            </div>
            <!--// Copyright -->
        </div>
    </div>


    <!-- Required common Js -->
    <script src='js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->

    <!-- Sidebar-nav Js -->
    <script>
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    <!--// Sidebar-nav Js -->

    <!-- dropdown nav -->
    <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->

    <!-- Js for bootstrap working-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>

</html>
<%}
else
  response.sendRedirect("index.html");
%>
