package com.oceanview.controller;

import com.oceanview.dao.ReservationDAO;
import com.oceanview.model.Reservation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/viewReservation")
public class ViewReservationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String reservationNumber = request.getParameter("reservationNumber");

        ReservationDAO dao = new ReservationDAO();
        Reservation reservation = dao.getReservation(reservationNumber);

        request.setAttribute("reservation", reservation);

        request.getRequestDispatcher("viewReservation.jsp").forward(request, response);
    }
}