package com.example.backend.controllers;
import com.example.backend.db.AdopterRecords;
import com.example.backend.core.Adopter;
import com.example.backend.core.Login;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.Random;

@RestController
public class LoginController {
    @Value("${app.salt}")
    private String salt;
    @CrossOrigin()
    @PostMapping("/Login/")
    public Adopter login(@RequestBody Login isUser) throws SQLException {
        System.out.println(isUser);
        System.out.println(isUser.username);
        String hashedPassword = BCrypt.hashpw(isUser.password, salt);
        System.out.println(isUser.password);
        String alphabet = "abcdefghijklmnopqrstuvwxyz";
        String sessionKey = "";
        Random random = new Random();
        int randomLen = 12 + random.nextInt(9);
        for (int i = 0; i < randomLen; i++) {
            char c = alphabet.charAt(random.nextInt(26));
            sessionKey += c;
        }
        Adopter newAdopter = AdopterRecords.AdopterLogin(isUser.username, hashedPassword, sessionKey);
        System.out.println(newAdopter);
        if (newAdopter != null) {
            System.out.print("login works!");
            return newAdopter;
        } else {
            System.out.println("Json is incorrect");
            return null;
        }
    }
}
