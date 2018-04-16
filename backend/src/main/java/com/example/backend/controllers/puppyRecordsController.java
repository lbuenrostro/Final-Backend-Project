package com.example.backend.controllers;

import java.util.List;
import com.example.backend.core.puppy_records;
import com.example.backend.db.Puppies_recordsRepository;
import org.springframework.web.bind.annotation.*;

@RestController
public class puppyRecordsController {
    @CrossOrigin()
    @GetMapping("/puppies/")
    public List<puppy_records> all_puppies() {
        return Puppies_recordsRepository.all();
    }

    @CrossOrigin
    @PostMapping("/Buy/{id}")
    public Boolean buying(@PathVariable Integer id){
        System.out.println(id);
        return Puppies_recordsRepository.deletePuppy(id);
    }
}
