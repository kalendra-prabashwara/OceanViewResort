package com.oceanview.controller;

import com.oceanview.dao.ReservationDAO;
import com.oceanview.model.Reservation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/reservationReport")
public class ReservationReportServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ReservationDAO dao = new ReservationDAO();

        List<Reservation> reservations = dao.getAllReservations();

        request.setAttribute("reservations", reservations);

        request.getRequestDispatcher("reservationReport.jsp").forward(request, response);
    }
}