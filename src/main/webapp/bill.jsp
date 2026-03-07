<%@ page import="com.oceanview.model.Reservation" %>

<%
Reservation r = (Reservation) request.getAttribute("reservation");
long nights = (Long) request.getAttribute("nights");
long total = (Long) request.getAttribute("total");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Bill | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/bill.css">
</head>
<body>

    <header class="page-header">
        <h1>Reservation Bill</h1>
    </header>

    <div class="bill-container">
        <div class="bill-card">
            
            <div class="bill-section">
                <div class="bill-row">
                    <span class="bill-label">Reservation Number</span>
                    <span class="bill-value"><%= r.getReservationNumber() %></span>
                </div>
                
                <div class="bill-row">
                    <span class="bill-label">Guest Name</span>
                    <span class="bill-value"><%= r.getGuestName() %></span>
                </div>
                
                <div class="bill-row">
                    <span class="bill-label">Room Type</span>
                    <span class="bill-value"><%= r.getRoomType() %></span>
                </div>
            </div>

            <div class="bill-divider"></div>

            <div class="bill-section">
                <div class="bill-row">
                    <span class="bill-label">Number of Nights</span>
                    <span class="bill-value"><%= nights %></span>
                </div>
            </div>

            <div class="bill-divider"></div>

            <div class="bill-total">
                <span class="total-label">Total Bill</span>
                <span class="total-value">USD <%= total %></span>
            </div>

            <div class="bill-actions">
                <button onclick="window.print()" class="btn-print">Print Bill</button>
                <a href="dashboard" class="btn-back">Back to Dashboard</a>
            </div>

        </div>
    </div>

</body>
</html>