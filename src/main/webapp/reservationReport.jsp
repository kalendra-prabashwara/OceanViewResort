<%@ page import="java.util.List" %>
<%@ page import="com.oceanview.model.Reservation" %>

<%
List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Report | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/report.css">
</head>
<body>

    <header class="page-header">
        <h1>Reservation Report</h1>
    </header>

    <div class="report-container">
        <div class="report-card">
            
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Reservation Number</th>
                        <th>Guest Name</th>
                        <th>Room Type</th>
                        <th>Check In</th>
                        <th>Check Out</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(Reservation r : reservations) { %>
                    <tr>
                        <td><%= r.getReservationNumber() %></td>
                        <td><%= r.getGuestName() %></td>
                        <td><%= r.getRoomType() %></td>
                        <td><%= r.getCheckIn() %></td>
                        <td><%= r.getCheckOut() %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>

            <a href="dashboard" class="btn-back">Back to Dashboard</a>

        </div>
    </div>

</body>
</html>