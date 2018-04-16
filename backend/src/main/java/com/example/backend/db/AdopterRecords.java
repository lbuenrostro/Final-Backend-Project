package com.example.backend.db;

import com.example.backend.core.Adopter;
import com.example.backend.db.Connect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//import com.example.backend.core.Adopter;


public class AdopterRecords {
    public static ArrayList<Adopter> allAdopters() {
        try {
            Connection conn = Connect.getDB();
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "SELECT * FROM adopters");
            ResultSet resultSet = preparedStatement.executeQuery();
            ArrayList<Adopter> allAdopters = new ArrayList<Adopter>();
            while (resultSet.next()) {
                allAdopters().add(new
                        Adopter(resultSet.getInt("id"),
                        resultSet.getString("adopterName"),
                        resultSet.getString("username"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("sessionKey")));
            }
            conn.close();
            return allAdopters;
        } catch (SQLException e) {
            return null;
        }
    }

    public static Adopter insertAdopter(String adopterName, String username, String email, String password, String sessionKey) {
        try {
            Connection conn = Connect.getDB();
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "INSERT INTO adopters (" +
                            "adopterName,username,email,password, sessionKey) " +
                            "VALUES (?,?,?,?,?)" +
                            "RETURNING *");
            preparedStatement.setString(1, adopterName);
            preparedStatement.setString(2, username);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, password);
            preparedStatement.setString(5, sessionKey);

            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            conn.close();
            return new Adopter(resultSet.getInt("id"), resultSet.getString("adopterName"), resultSet.getString("username"),
                    resultSet.getString("email"), resultSet.getString("password"), resultSet.getString("sessionKey"));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public static Adopter AdopterLogin(String username, String password, String sessionKey) throws SQLException {
        try {
            Connection conn = Connect.getDB();
            PreparedStatement preparedStatement = conn.prepareStatement("UPDATE adopters SET sessionKey = ? WHERE username = ? AND password = ? RETURNING *");
            preparedStatement.setString(1, sessionKey);
            preparedStatement.setString(2, username);
            preparedStatement.setString(3, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            conn.close();
            return new Adopter(resultSet.getInt("id"),
                    resultSet.getString("adopterName"),
                    username,
                    resultSet.getString("email"),
                    resultSet.getString("password"),
                    resultSet.getString("sessionKey"));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public static Adopter CreateNewAdopter(String adopterName, String username, String email, String password, String sessionKey) {
        try {

            Connection conn = Connect.getDB();
            PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO adopters (adopterName, username," +
                    "email, password, sessionKey) VALUES (?, ?, ?, ?, ?) RETURNING *");
            preparedStatement.setString(1, adopterName);
            preparedStatement.setString(2, username);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, password);
            preparedStatement.setString(5, sessionKey);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            return new Adopter(resultSet.getInt("id"), resultSet.getString("adopterName"),
                    resultSet.getString("username"), resultSet.getString("email"),
                    resultSet.getString("password"), resultSet.getString("sessionKey"));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }


    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static Adopter isAdopter( String sessionKey,String adopterName, String password){

        try {
            Connection conn = Connect.getDB();
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "UPDATE adopters SET sessionKey = ? WHERE adopterName = ? and password = ? returning *"
            );
            preparedStatement.setString(1,sessionKey);
            preparedStatement.setString(2,adopterName);
            preparedStatement.setString(3,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            conn.close();
            return new Adopter(resultSet.getInt("id"),
                    adopterName,
                    resultSet.getString("username"),
                    resultSet.getString("email"),
                    password,
                    sessionKey
            );

        }
        catch (SQLException e){
            return null;
        }
    }

    public static Adopter adopterById(Integer id){
        try {
            Connection conn = Connect.getDB();
            PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM adopters WHERE id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            conn.close();
            return new Adopter(resultSet.getInt("id"),
                    resultSet.getString("adopterName"),
                    resultSet.getString("username"),
                    resultSet.getString("email"),
                    resultSet.getString("password"),
                    resultSet.getString("sessionKey")
            );
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
            return null;
        }
    }

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static boolean deleteAdopter(Integer id) {
        try {
            Connection conn = Connect.getDB();
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "DELETE FROM adopters WHERE id = ?"
            );
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
            conn.close();
            return true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }


    public static Boolean UpdateSessionKey(String username){
        try {
            System.out.println("logout it works!");
            Connection conn = Connect.getDB();
            PreparedStatement preparedStatement = conn.prepareStatement(
                    "UPDATE adopters SET sessionKey = null WHERE username = ? RETURNING *");
            preparedStatement.setString(1, username);
            preparedStatement.executeQuery();
            return true;
//                    new
//                    Adopter(resultSet.getInt("id"),
//                    resultSet.getString("adopterName"),
//                    resultSet.getString("username"),
//                    resultSet.getString("email"),
//                    resultSet.getString("password"),
//                    resultSet.getString("sessionKey"));
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
            return false;
        }
    }






}
