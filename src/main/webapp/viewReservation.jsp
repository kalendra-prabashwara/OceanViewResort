<%@ page import="com.oceanview.model.Reservation" %>

<%
Reservation r = (Reservation) request.getAttribute("reservation");
%>

<h2>Reservation Details</h2>

<% if(r != null) { %>

Reservation Number: <%= r.getReservationNumber() %> <br>
Guest Name: <%= r.getGuestName() %> <br>
Address: <%= r.getAddress() %> <br>
Contact: <%= r.getContactNumber() %> <br>
Room Type: <%= r.getRoomType() %> <br>
Check In: <%= r.getCheckIn() %> <br>
Check Out: <%= r.getCheckOut() %> <br>

<% } else { %>

Reservation not found.

<% } %>