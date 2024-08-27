<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Reservation</title>
    <link rel="stylesheet"  href="CSS/styleReserv.css">
</head>
<body>
    <div class="container"  >
        <h1>Table Reservation</h1>
        <form action="reservation" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" required><br><br>

            <label for="reserv_date">Reservation Date:</label>
            <input type="date" id="reserv_date" name="reserv_date" required><br><br>

            <label for="reserv_time">Reservation Time:</label>
            <input type="time" id="reserv_time" name="reserv_time" required><br><br>

            <label for="guests">Number of Guests:</label>
            <input type="number" id="guests" name="guests" required><br><br>

            <input type="submit" value="Reserve">
        </form>
    </div>
</body>
</html>