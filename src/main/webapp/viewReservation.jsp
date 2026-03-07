<%@ page import="com.oceanview.model.Reservation" %>

<%
Reservation r = (Reservation) request.getAttribute("reservation");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Details | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/details.css">
</head>
<body>

    <header class="page-header">
        <h1>Reservation Details</h1>
    </header>

    <div class="details-container">
        <div class="details-card">
            
            <% if(r != null) { %>
            
            <div class="detail-row">
                <span class="detail-label">Reservation Number</span>
                <span class="detail-value"><%= r.getReservationNumber() %></span>
            </div>
            
            <div class="detail-row">
                <span class="detail-label">Guest Name</span>
                <span class="detail-value"><%= r.getGuestName() %></span>
            </div>
            
            <div class="detail-row">
                <span class="detail-label">Address</span>
                <span class="detail-value"><%= r.getAddress() %></span>
            </div>
            
            <div class="detail-row">
                <span class="detail-label">Contact</span>
                <span class="detail-value"><%= r.getContactNumber() %></span>
            </div>
            
            <div class="detail-row">
                <span class="detail-label">Room Type</span>
                <span class="detail-value"><%= r.getRoomType() %></span>
            </div>
            
            <div class="detail-row">
                <span class="detail-label">Check In</span>
                <span class="detail-value"><%= r.getCheckIn() %></span>
            </div>
            
            <div class="detail-row">
                <span class="detail-label">Check Out</span>
                <span class="detail-value"><%= r.getCheckOut() %></span>
            </div>
            
            <a href="dashboard" class="btn-back">Back to Dashboard</a>
            
            <% } else { %>
            
            <div class="not-found">
                <p>Reservation not found.</p>
            </div>
            
            <a href="searchReservation.jsp" class="btn-back">Search Again</a>
            
            <% } %>

        </div>
    </div>

</body>
</html>