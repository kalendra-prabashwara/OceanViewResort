<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Reservation | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/search.css">
</head>
<body>

    <header class="page-header">
        <h1>Search Reservation</h1>
    </header>

    <div class="search-container">
        <div class="search-card">
            
            <form action="viewReservation" method="post">
                
                <div class="form-group">
                    <label class="form-label">Reservation Number</label>
                    <input type="text" name="reservationNumber" class="form-input" placeholder="Enter reservation number" required>
                </div>

                <button type="submit" class="btn-search">Search</button>
                
                <a href="dashboard" class="btn-cancel">Cancel</a>

            </form>

        </div>
    </div>

</body>
</html>