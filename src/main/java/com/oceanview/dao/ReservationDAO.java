package com.oceanview.dao;

import com.oceanview.model.Reservation;
import com.oceanview.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReservationDAO {

    public boolean addReservation(Reservation reservation) {

        String sql = "INSERT INTO reservations (reservation_number, guest_name, address, contact_number, room_type, check_in, check_out) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {

            Connection conn = DBConnection.getInstance().getConnection();

            try (PreparedStatement stmt = conn.prepareStatement(sql)) {

                stmt.setString(1, reservation.getReservationNumber());
                stmt.setString(2, reservation.getGuestName());
                stmt.setString(3, reservation.getAddress());
                stmt.setString(4, reservation.getContactNumber());
                stmt.setString(5, reservation.getRoomType());
                stmt.setDate(6, reservation.getCheckIn());
                stmt.setDate(7, reservation.getCheckOut());

                int rows = stmt.executeUpdate();
                return rows > 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }


    public Reservation getReservation(String reservationNumber) {

        String sql = "SELECT * FROM reservations WHERE reservation_number = ?";
        Reservation reservation = null;

        try {

            Connection conn = DBConnection.getInstance().getConnection();

            try (PreparedStatement stmt = conn.prepareStatement(sql)) {

                stmt.setString(1, reservationNumber);

                try (ResultSet rs = stmt.executeQuery()) {

                    if (rs.next()) {

                        reservation = new Reservation();

                        reservation.setReservationNumber(rs.getString("reservation_number"));
                        reservation.setGuestName(rs.getString("guest_name"));
                        reservation.setAddress(rs.getString("address"));
                        reservation.setContactNumber(rs.getString("contact_number"));
                        reservation.setRoomType(rs.getString("room_type"));
                        reservation.setCheckIn(rs.getDate("check_in"));
                        reservation.setCheckOut(rs.getDate("check_out"));
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return reservation;
    }
}