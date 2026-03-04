package com.oceanview.controller;

import com.oceanview.dao.ReservationDAO;
import com.oceanview.model.Reservation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/addReservation")
public class AddReservationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String reservationNumber = request.getParameter("reservationNumber");
        String guestName = request.getParameter("guestName");
        String address = request.getParameter("address");
        String contactNumber = request.getParameter("contactNumber");
        String roomType = request.getParameter("roomType");

        Date checkIn = Date.valueOf(request.getParameter("checkIn"));
        Date checkOut = Date.valueOf(request.getParameter("checkOut"));

        Reservation reservation = new Reservation();

        reservation.setReservationNumber(reservationNumber);
        reservation.setGuestName(guestName);
        reservation.setAddress(address);
        reservation.setContactNumber(contactNumber);
        reservation.setRoomType(roomType);
        reservation.setCheckIn(checkIn);
        reservation.setCheckOut(checkOut);

        ReservationDAO dao = new ReservationDAO();

        if (dao.addReservation(reservation)) {
            response.sendRedirect("dashboard.jsp");
        } else {
            response.getWriter().println("Error adding reservation");
        }
    }
}