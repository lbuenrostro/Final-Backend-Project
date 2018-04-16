package com.example.backend.db;
        import com.example.backend.core.puppy_records;
        import java.sql.*;
        import java.util.*;

public class Puppies_recordsRepository {
    //    GETS THE CONNECTION
    private static Connection connect() {
        try {
            return DriverManager.getConnection(
                    "jdbc:postgresql:puppies", "basecamp", "pgpass");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
            return null;
        }
    }

    //    GETTING ALL THE PUPPY_RECORDS
    public static List<puppy_records> all() {
        try {
            Connection c = connect();
            PreparedStatement st = c.prepareStatement("SELECT * FROM puppy_records;");
            ResultSet rs = st.executeQuery();
            ArrayList<puppy_records> all_puppies = new ArrayList<puppy_records>();
            while (rs.next()) {
                all_puppies.add(new puppy_records(
                        rs.getInt("id"),
                        rs.getString("puppy_img_url"),
                        rs.getString("breed"),
                        rs.getString("gender"),
                        rs.getString("age"),
                        rs.getInt("price")
                ));
            }
            return all_puppies;
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
            return null;
        }

    }

    public static puppy_records SellPuppy(Integer id, String puppy_img_url, String breed, String gender, String age, Integer price) {
        try {
            Connection con = Connect.getDB();
            PreparedStatement statement = con.prepareStatement(
                    "INSERT INTO puppy_records (id, puppy_img_url, breed, gender, age, price) VALUES (?, ?, ?, ?, ?) RETURNING *");
            statement.setInt(1, id);
            statement.setString(2, puppy_img_url);
            statement.setString(3, breed);
            statement.setString(4, gender);
            statement.setString(5, age);
            statement.setInt(6, price);
            ResultSet result = statement.executeQuery();
            result.next();
            return new puppy_records(result.getInt("id"), result.getString("puppy_img_url"), result.getString("breed"),
                    result.getString("gender"), result.getString("age"), result.getInt("price"));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public static boolean deletePuppy(Integer id) {
        try {
            Connection con = Connect.getDB();
            PreparedStatement preparedStatement = con.prepareStatement(
                    "DELETE FROM puppy_records WHERE id = ?"
            );
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
}





