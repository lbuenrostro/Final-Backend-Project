package com.example.backend.db;
import com.example.backend.core.puppy_records;
import java.sql.*;
import java.util.*;

public class Puppies_records {
    //    GETS THE CONNECTION
    private static Connection connect() {
        try {
            return DriverManager.getConnection(
                    "jdbc:postgresql:puppies", "basecamp", "pgpass");
        }
        catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
            return null;
        }
    }

//    GETTING ALL THE PUPPY_RECORDS
    public static List<puppy_records> all() {
        try{
            Connection c = connect();
            PreparedStatement st = c.prepareStatement("SELECT * FROM puppy_records;");
            ResultSet rs = st.executeQuery();
            ArrayList<puppy_records> allpuppy_records = new ArrayList<puppy_records>();
            while (rs.next()) {
//                String breed = rs.getString("breed");
                allpuppy_records.add(new puppy_records(
                        rs.getString("breed"),
                        rs.getString("gender"),
                        rs.getString("age"),
                        rs.getInt("price")
                ));
            }
            return allpuppy_records;
        }
        catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
            return null;
        }

    }
}




