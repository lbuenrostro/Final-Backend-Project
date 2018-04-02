package com.example.backend.controllers;

import java.util.List;
import com.example.backend.core.puppy_records;
import com.example.backend.db.Puppies_records;
import com.example.backend.db.Puppies_records;
import org.springframework.web.bind.annotation.*;

@RestController
public class puppyRecordController {
    @CrossOrigin()
    @GetMapping("/puppies")
    public List<puppy_records> all_puppies() {
        return Puppies_records.all();
    }

}

