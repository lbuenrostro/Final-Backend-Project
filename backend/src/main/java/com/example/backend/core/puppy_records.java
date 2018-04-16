package com.example.backend.core;

public class puppy_records {
    public Integer id;
    public String puppy_img_url;
    public String breed;
    public String gender;
    public String age;
    public Integer price;

    public puppy_records() {}

    public puppy_records(Integer id, String puppy_img_url, String breed, String gender, String age, Integer price) {
        this.id = id;
        this.puppy_img_url = puppy_img_url;
        this.breed = breed;
        this.gender = gender;
        this.age = age;
        this.price = price;
    }
}
