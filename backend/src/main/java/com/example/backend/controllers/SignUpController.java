package com.example.backend.controllers;

import com.example.backend.Signup;
import com.example.backend.core.Adopter;
import com.example.backend.AdopterRecords;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Value;
import org.mindrot.jbcrypt.BCrypt;
import java.util.Random;


@RestController
public class SignUpController {
    @Value("${app.salt}")
    private String salt;

    @CrossOrigin()
    @PostMapping("/SignUp")
    public Adopter signUp(@RequestBody Signup newAdopt) {
        System.out.println("Username: " + newAdopt.username);
        String hashedPassword = BCrypt.hashpw(newAdopt.password, salt);
        String alphabet= "abcdefghijklmnopqrstuvwxyz";
        String sessionKey = "";
        Random random = new Random();
        int randomLen = 12+random.nextInt(9);
        for (int i = 0; i < randomLen; i++) {
            char c = alphabet.charAt(random.nextInt(26));
            sessionKey +=c;
        }
        Adopter newAdopter = AdopterRecords.insertAdopter(newAdopt.adopterName, newAdopt.username
                ,newAdopt.email, newAdopt.password, sessionKey);
        if (newAdopter != null) {
            return newAdopter;
        } else {
            System.out.println("not working!!");
            return null;
        }
    }
}
