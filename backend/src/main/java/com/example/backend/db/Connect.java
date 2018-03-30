package com.example.backend.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
    public static Connection getDB() throws SQLException {
        return DriverManager.getConnection(
                "jdbc:postgresql:puppies", "basecamp", "pgpass");
    }
}
