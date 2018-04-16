package com.example.backend.controllers;
import com.example.backend.db.AdopterRecords;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LogOutController {
    @CrossOrigin
    @PostMapping("/logout/{username}")
    public Boolean logOut(@PathVariable String username){
        return (AdopterRecords.UpdateSessionKey(username));
    }
}