package com.example.backend.controllers;
import java.util.List;

import com.example.backend.core.adopters;
import com.example.backend.db.Adopters;
import org.springframework.web.bind.annotation.*;

public class adoptersController {
    @CrossOrigin()
    @GetMapping("/puppies")
    public List<adopters> all() {
        return Adopters.all();
    }

}






