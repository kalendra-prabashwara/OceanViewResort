<!DOCTYPE html>
<html>
<head>
<title>Add Reservation</title>
</head>
<body>

<h2>Add Reservation</h2>

<form action="addReservation" method="post">

Reservation Number:
<input type="text" name="reservationNumber"><br><br>

Guest Name:
<input type="text" name="guestName"><br><br>

Address:
<input type="text" name="address"><br><br>

Contact Number:
<input type="text" name="contactNumber"><br><br>

Room Type:
<select name="roomType">
<option>Standard</option>
<option>Deluxe</option>
<option>Suite</option>
</select><br><br>

Check In:
<input type="date" name="checkIn"><br><br>

Check Out:
<input type="date" name="checkOut"><br><br>

<button type="submit">Add Reservation</button>

</form>

</body>
</html>