package com.oceanview.dao;

import com.oceanview.model.Reservation;
import com.oceanview.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ReservationDAO {

    public boolean addReservation(Reservation reservation) {

        try {

            Connection conn = DBConnection.getInstance().getConnection();

            String sql = "INSERT INTO reservations (reservation_number, guest_name, address, contact_number, room_type, check_in, check_out) VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setString(1, reservation.getReservationNumber());
            stmt.setString(2, reservation.getGuestName());
            stmt.setString(3, reservation.getAddress());
            stmt.setString(4, reservation.getContactNumber());
            stmt.setString(5, reservation.getRoomType());
            stmt.setDate(6, reservation.getCheckIn());
            stmt.setDate(7, reservation.getCheckOut());

            int rows = stmt.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}