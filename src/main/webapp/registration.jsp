<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
    	body {
            background-image: url("https://images.pexels.com/photos/590477/pexels-photo-590477.jpeg");
           
            background-repeat: no-repeat;
            background-size: 210vh 100vh;
          }
        body {
            font-family: Arial, sans-serif;
            background-color: skyblue;
            display: flex;
            text-color:red;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            /* background-color:  moccasin; */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-color:red;
        }
        h2 {
            text-align: center;
           
            margin-bottom: 20px;
        }
        input[type="text"], input[type="email"], input[type="password"] ,input[type="phone"]{
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top:20px;
            margin-left:10px;
            background-color:green;
            border: none;
            border-radius: 3px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Sign Up</h2>
        <form action="reg" method="post">
            <label for="first-name">First Name</label>
            <input type="text" id="first-name" name="firstname" required>

            <label for="last-name">Last Name</label>
            <input type="text" id="last-name" name="lastname" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            
               <label for="phone">Phone</label>
             <input type="phone" id="phone" name="phone" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            

            <input type="submit"><!--  value="Register" --> 
              <button type="submit" onclick="handleregister()" value="submit"></button>
              
        </form>
        <input type="hidden" id="state" value=<%=request.getAttribute("status") %>>
  
        <p>I have already Account</p>
         <a href="login.jsp">log in here</a>
    </div>
      <script>
        function handleregister() {
            console.log('Register called');
            alert('Registration sucessfully...');
            // Here, you can add additional functionality, such as redirecting to a booking form or sending the booking details to a server.
        }
   </script>
    
  </body>
</html>
    