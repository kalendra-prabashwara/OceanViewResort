package com.oceanview.controller;

import com.oceanview.dao.ReservationDAO;
import com.oceanview.model.Reservation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.time.temporal.ChronoUnit;
import java.time.LocalDate;

@WebServlet("/calculateBill")
public class BillServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String reservationNumber = request.getParameter("reservationNumber");

        ReservationDAO dao = new ReservationDAO();
        Reservation reservation = dao.getReservation(reservationNumber);

        if(reservation != null) {

            LocalDate checkIn = reservation.getCheckIn().toLocalDate();
            LocalDate checkOut = reservation.getCheckOut().toLocalDate();

            long nights = ChronoUnit.DAYS.between(checkIn, checkOut);

            int price = 0;

            switch(reservation.getRoomType()) {

                case "Standard":
                    price = 100;
                    break;

                case "Deluxe":
                    price = 150;
                    break;

                case "Suite":
                    price = 250;
                    break;
            }

            long total = nights * price;

            request.setAttribute("reservation", reservation);
            request.setAttribute("nights", nights);
            request.setAttribute("total", total);

            request.getRequestDispatcher("bill.jsp").forward(request, response);

        } else {

            response.getWriter().println("Reservation not found");

        }
    }
}