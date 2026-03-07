package com.oceanview.dao;

import com.oceanview.model.Reservation;
import com.oceanview.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.List;
import java.util.ArrayList;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

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


    public List<Reservation> getAllReservations() {

        List<Reservation> list = new ArrayList<>();

        String sql = "SELECT * FROM reservations";

        try {

            Connection conn = DBConnection.getInstance().getConnection();

            try (PreparedStatement stmt = conn.prepareStatement(sql);
                 ResultSet rs = stmt.executeQuery()) {

                while (rs.next()) {

                    Reservation r = new Reservation();

                    r.setReservationNumber(rs.getString("reservation_number"));
                    r.setGuestName(rs.getString("guest_name"));
                    r.setRoomType(rs.getString("room_type"));
                    r.setCheckIn(rs.getDate("check_in"));
                    r.setCheckOut(rs.getDate("check_out"));

                    list.add(r);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }


    public int getReservationCount() {

        int count = 0;

        try {

            Connection conn = DBConnection.getInstance().getConnection();

            String sql = "SELECT COUNT(*) FROM reservations";
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                count = rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }


    public long getTotalRevenue() {

        long revenue = 0;

        try {

            Connection conn = DBConnection.getInstance().getConnection();

            String sql = "SELECT room_type, check_in, check_out FROM reservations";
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                String roomType = rs.getString("room_type");

                LocalDate checkIn = rs.getDate("check_in").toLocalDate();
                LocalDate checkOut = rs.getDate("check_out").toLocalDate();

                long nights = ChronoUnit.DAYS.between(checkIn, checkOut);

                int price = 0;

                if (roomType.equals("Standard"))
                    price = 100;
                else if (roomType.equals("Deluxe"))
                    price = 150;
                else if (roomType.equals("Suite"))
                    price = 250;

                revenue += nights * price;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return revenue;
    }

}