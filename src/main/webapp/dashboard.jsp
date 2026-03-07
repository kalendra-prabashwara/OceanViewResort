<%@ page import="java.lang.*" %>

<%
int totalRooms = (Integer) request.getAttribute("totalRooms");
int availableRooms = (Integer) request.getAttribute("availableRooms");
long revenue = (Long) request.getAttribute("revenue");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Ocean View Resort</title>
    <link rel="stylesheet" type="text/css" href="css/dashboard.css">
</head>

<body>

    <header class="page-header">
        <h1>Ocean View Resort</h1>
        <p>Management Dashboard</p>
    </header>

    <div class="dashboard-container">

        <div class="stats-grid">
            
            <div class="stat-card">
                <div class="stat-icon blue">R</div>
                <div class="stat-info">
                    <h4>Total Rooms</h4>
                    <h2><%= totalRooms %></h2>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon green">A</div>
                <div class="stat-info">
                    <h4>Available Rooms</h4>
                    <h2><%= availableRooms %></h2>
                </div>
            </div>

            <div class="stat-card">
                <div class="stat-icon orange">$</div>
                <div class="stat-info">
                    <h4>Total Revenue</h4>
                    <h2>$<%= revenue %></h2>
                </div>
            </div>

        </div>

        <div class="actions-grid">
            
            <a href="addReservation.jsp" class="action-btn btn-add">
                <span class="btn-icon">+</span>
                <span class="btn-text">Add Reservation</span>
            </a>

            <a href="searchReservation.jsp" class="action-btn btn-search">
                <span class="btn-icon">S</span>
                <span class="btn-text">Search Reservation</span>
            </a>

            <a href="billSearch.jsp" class="action-btn btn-bill">
                <span class="btn-icon">B</span>
                <span class="btn-text">Generate Bill</span>
            </a>

            <a href="reservationReport" class="action-btn btn-report">
                <span class="btn-icon">V</span>
                <span class="btn-text">View All Reservations</span>
            </a>

            <a href="help.jsp" class="action-btn btn-help">
                <span class="btn-icon">H</span>
                <span class="btn-text">Help</span>
            </a>

            <a href="login.jsp" class="action-btn btn-logout">
                <span class="btn-icon">L</span>
                <span class="btn-text">Logout</span>
            </a>

        </div>

    </div>

</body>
</html>