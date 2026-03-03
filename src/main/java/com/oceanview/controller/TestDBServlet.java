package com.oceanview.controller;

import com.oceanview.util.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

@WebServlet("/testdb")
public class TestDBServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Connection conn = DBConnection.getInstance().getConnection();
            if (conn != null) {
                out.println("<h2>Database Connected Successfully!</h2>");
            }
        } catch (Exception e) {
            out.println("<h2>Database Connection Failed!</h2>");
            e.printStackTrace();
        }
    }
}