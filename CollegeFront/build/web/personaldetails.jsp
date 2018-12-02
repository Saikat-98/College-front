<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String Username=(String)session.getAttribute("Username");
session.setAttribute("Username",Username);%>
<!DOCTYPE html>
<html>
<head>
<title>Personal Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/personal-style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
</head>
<body onload="dis()">
    <script>
        function dis()
        {
            document.getElementById('name').disabled=true;
        }
    </script>
	<div class="main-w3layouts wrapper">
            <h1>Personal Details</h1><br>
            <center><h1 id="h" style="font-weight: bold;">WELCOME <%out.println(Username);%></h1></center>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="PersonalDetailsServlet" method="post" >
                                    <input class="text" type="text" name="Username" id="name" value="<%=Username%>"><br>
					<input class="text" type="text" name="Fname" placeholder="Your Father's Name" required=""><br>
					<input class="text" type="text" name="Mname" placeholder="Your Mother's Name" required=""><br>
					<input class="text" type="text" name="Foccupation" placeholder="Your Father's Occupation" required=""><br>
                                        <input class="text" type="text" name="Moccupation" placeholder="Your Mother's Occupation" required=""><br>
					<input class="text" type="text" name="Fmobilenumber" placeholder="Your Father's Mobile Number" required=""><br>
                                        <input class="text" type="text" name="Mmobilenumber" placeholder="Your Mother's Mobile Number" required=""><br>
					<input class="text" type="text" name="income" placeholder="Yearly income" required=""><br>
					<input class="text" type="text" name="grade1" placeholder="Your 10th Grade/CGPA" required=""><br>
					<input class="text" type="text" name="grade2" placeholder="Your 12th Grade/CGPA" required=""><br>
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I conform to above entered credentials</span><br>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="SUBMIT">
				</form>
			</div>
		</div>
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
</body>
</html>
