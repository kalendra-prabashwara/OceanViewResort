<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculate Bill | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/calculate.css">
</head>
<body>

    <header class="page-header">
        <h1>Calculate Reservation Bill</h1>
    </header>

    <div class="calculate-container">
        <div class="calculate-card">
            
            <form action="calculateBill" method="post">
                
                <div class="form-group">
                    <label class="form-label">Enter Reservation Number</label>
                    <input type="text" name="reservationNumber" class="form-input" placeholder="Enter reservation number" required>
                </div>

                <button type="submit" class="btn-calculate">Calculate Bill</button>
                
                <a href="dashboard" class="btn-cancel">Cancel</a>

            </form>

        </div>
    </div>

</body>
</html>