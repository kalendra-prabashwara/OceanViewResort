package com.oceanview.controller;

import com.oceanview.dao.ReservationDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ReservationDAO dao = new ReservationDAO();

        int totalRooms = 48;

        int reservations = dao.getReservationCount();

        int availableRooms = totalRooms - reservations;

        long revenue = dao.getTotalRevenue();

        request.setAttribute("totalRooms", totalRooms);
        request.setAttribute("availableRooms", availableRooms);
        request.setAttribute("revenue", revenue);

        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }
}