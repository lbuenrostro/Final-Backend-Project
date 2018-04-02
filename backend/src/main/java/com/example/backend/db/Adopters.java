//package com.example.backend.db;
//
//import com.example.backend.core.adopters;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//
//import java.sql.*;
//import java.util.*;
//
//public class Adopters {
//    //    GETS THE CONNECTION
//    private static Connection connect() {
//        try {
//            return DriverManager.getConnection(
//                    "jdbc:postgresql:Main", "basecamp", "pgpass");
//        }
//        catch (Exception e) {
//            e.printStackTrace();
//            System.err.println(e.getClass().getName()+": "+e.getMessage());
//            System.exit(0);
//            return null;
//        }
//    }
//
//    //    GETTING ALL THE ADOPTERS
//    public static List<adopters> all() {
//        try{
//            Connection c = connect();
//            PreparedStatement st = c.prepareStatement("SELECT * FROM adopters;");
//            ResultSet rs = st.executeQuery();
//            ArrayList<adopters> alladopters = new ArrayList<adopters>();
//            while (rs.next()) {
//                String adopterName = rs.getString("adopterName");
//                final boolean add= alladopters.add(new adopters(
//                        rs.getString("username"),
//                        rs.getString("email"),
//                        rs.getString("password"),
//                        rs.getString("sessionKey")
//                ));
//            }
//            return alladopters;
//        }
//        catch (Exception e) {
//            e.printStackTrace();
//            System.err.println(e.getClass().getName() + ": " + e.getMessage());
//            System.exit(0);
//            return null;
//        }
//
//    }
//}
