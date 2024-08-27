<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
	<link rel="stylesheet" href="CSS/Stylelog.css">
</head>
<body>
   <header>
        <h1>Big Think</h1>
        <nav>
            <ul>
                <li class="active"><a href="index.html">Home<span class="underline"></span></a></li>
                  <li><a data-scroll="reservation"  href="Reservation.jsp" class="active">Reservations</a></li>
                 <li> <a data-scroll="Menu"  href="menu.jsp" class="active">Menu</a></li>
                  <li> <a data-scroll="Features"  href="#Features" class="active">Features</a></li>
                  <li><a data-scroll="shop"  href="cart.html" class="active">Shop</a></li>
                 <li> <a data-scroll="Contact"  href="#contact" class="active">Contact</a></li>
            </ul>
        </nav>
    </header>
    <div class="login-container">
        <h1>Login</h1>
                <form action="log" method="post" >
            
            <label for="uname"> USERNAME :</label>
			<input type="text" name="uname" placeholder="uname" required> 
			<label for="password"> PASSWORD :</label>
	        <input type="password" name="password" placeholder="Password" required>
	       <input type="submit" value="Login">
        </form>
        <input type="hidden" id="state" value=<%=request.getAttribute("status") %>>
	 </div>
	  <script>
			if(status.value=="sucess"){
			alert("login is sucessfull..");
			}
			else if(status.value=="failed")
			alert("login failed ...");
	 </script>
</body>
</html>
