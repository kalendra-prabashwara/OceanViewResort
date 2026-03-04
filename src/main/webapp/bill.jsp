<%@ page import="com.oceanview.model.Reservation" %>

<%
Reservation r = (Reservation) request.getAttribute("reservation");
long nights = (Long) request.getAttribute("nights");
long total = (Long) request.getAttribute("total");
%>

<h2>Reservation Bill</h2>

Reservation Number: <%= r.getReservationNumber() %> <br>
Guest Name: <%= r.getGuestName() %> <br>
Room Type: <%= r.getRoomType() %> <br>

Number of Nights: <%= nights %> <br>

Total Bill: $<%= total %>

<br><br>

<button onclick="window.print()">Print Bill</button>