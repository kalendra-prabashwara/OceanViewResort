<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Reservation | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/add-reservation.css">
</head>
<body>

    <header class="page-header">
        <h1>Add New Reservation</h1>
    </header>

    <div class="form-container">
        <div class="reservation-card">
            
            <h2 class="card-title">Reservation Details</h2>
            
            <form action="addReservation" method="post">
                
                <div class="form-group">
                    <label class="form-label">Reservation Number</label>
                    <input type="text" name="reservationNumber" class="form-input" placeholder="Enter reservation number">
                </div>

                <div class="form-group">
                    <label class="form-label">Guest Name</label>
                    <input type="text" name="guestName" class="form-input" placeholder="Enter guest full name">
                </div>

                <div class="form-group">
                    <label class="form-label">Address</label>
                    <input type="text" name="address" class="form-input" placeholder="Enter guest address">
                </div>

                <div class="form-group">
                    <label class="form-label">Contact Number</label>
                    <input type="text" name="contactNumber" class="form-input" placeholder="Enter phone number">
                </div>

                <div class="form-group">
                    <label class="form-label">Room Type</label>
                    <select name="roomType" class="form-select">
                        <option value="" disabled selected>Select room type</option>
                        <option>Standard</option>
                        <option>Deluxe</option>
                        <option>Suite</option>
                    </select>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Check In</label>
                        <input type="date" name="checkIn" class="form-input">
                    </div>

                    <div class="form-group">
                        <label class="form-label">Check Out</label>
                        <input type="date" name="checkOut" class="form-input">
                    </div>
                </div>

                <button type="submit" class="btn-submit">Add Reservation</button>
                
                <a href="dashboard" class="btn-cancel">Cancel</a>

            </form>
        </div>
    </div>

</body>
</html>