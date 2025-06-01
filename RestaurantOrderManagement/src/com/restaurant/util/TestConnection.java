package com.restaurant.util;

import java.sql.Connection;

public class TestConnection {
    public static void main(String[] args) {
        try (Connection conn = DBUtil.getConnection()) {
            if (conn != null) {
                System.out.println("✅ Connected to database successfully.");
            } else {
                System.out.println("❌ Failed to connect to database.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
