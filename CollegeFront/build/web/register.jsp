<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
       HttpSession nsession = request.getSession(false);
    if(nsession!=null) {
       String Username=(String)session.getAttribute( "Username" );
       String Email=(String)session.getAttribute( "Email" );
       session.setAttribute("Username",Username);
       session.setAttribute("Email",Email);
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>College Mania</title>
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
    <div class="bg-page py-5">
        <div class="container">
            <!-- main-heading -->
            <h2 class="main-title-w3layouts mb-2 text-center text-white">Register</h2>
            <!--// main-heading -->
            <div class="form-body-w3-agile text-center w-lg-50 w-sm-75 w-100 mx-auto mt-5">
                <form action="RegisterAdmin" method="post">
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" name="Admin-name" placeholder="Enter username" required="">
                    </div>
                    <div class="form-group">
                        <label>Email address</label>
                        <input type="email" class="form-control" name="Admin-email" placeholder="Enter email" required="">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="Admin-pass" id="password1" placeholder="Password" required="">
                    </div>
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <input type="password" class="form-control" id="password2" placeholder="Password" required="">
                    </div>
                    <div class="form-check text-center">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1" required="">
                        <label class="form-check-label" for="exampleCheck1">Agree the terms and policy</label>
                    </div>
                    <button type="submit" class="btn btn-primary error-w3l-btn mt-sm-5 mt-3 px-4">Submit</button>
                </form>
                <p class="paragraph-agileits-w3layouts mt-4">Already have account?
                    <a href="login.jsp">Login</a>
                </p>
                <h1 class="paragraph-agileits-w3layouts mt-2">
                    <a href="dashboardIndex.jsp">Back to Dashboard</a>
                </h1>
            </div>

            <!-- Copyright -->
            <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                <p>© 2018 Modernize . All Rights Reserved | Design by
                    <a href="index.html"> College Mania </a>
                </p>
            </div>
            <!--// Copyright -->
        </div>
    </div>
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- Required common Js -->
    <script src='js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->

    <!-- Js for bootstrap working-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>

</html>
<%}
else
  response.sendRedirect("index.html");
%>
