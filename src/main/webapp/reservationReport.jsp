<%@ page import="java.util.List" %>
<%@ page import="com.oceanview.model.Reservation" %>

<%
List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations");
%>

<h2>Reservation Report</h2>

<table border="1">

<tr>
<th>Reservation Number</th>
<th>Guest Name</th>
<th>Room Type</th>
<th>Check In</th>
<th>Check Out</th>
</tr>

<% for(Reservation r : reservations) { %>

<tr>
<td><%= r.getReservationNumber() %></td>
<td><%= r.getGuestName() %></td>
<td><%= r.getRoomType() %></td>
<td><%= r.getCheckIn() %></td>
<td><%= r.getCheckOut() %></td>
</tr>

<% } %>

</table>