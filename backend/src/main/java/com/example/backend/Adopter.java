package com.example.backend.core;

public class Adopter {
    public Integer id;
    public String adopterName;
    public String username;
    public String email;
    public String password;
    public String sessionKey;

    public Adopter(Integer id, String adopterName, String username, String email, String password, String sessionKey) {
        this.id = id;
        this.adopterName = adopterName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.sessionKey = sessionKey;
    }
}
