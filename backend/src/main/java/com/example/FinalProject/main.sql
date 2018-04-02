CREATE TABLE adopters (
    ID SERIAL PRIMARY KEY,
    adopterName text,
    username text,
    email text,
    password text,
    sessionKey text
);


--CREATE TABLE Admin (
--    adopterName_id SERIAL Primary key,
--    adopterName text,
--    password text
--);

CREATE TABLE puppy_records (
    ID SERIAL PRIMARY KEY,
    breed text,
    gender text,
    age text,
    price int
);

--CREATE TABLE puppyCart (
--    ID SERIAL PRIMARY KEY,
--    adopterName INTEGER REFERENCES adopters(id),
--    breed INTEGER REFERENCES puppy_records(id)
--);

INSERT INTO puppy_records (breed, gender, age, price) VALUES
    ('German Shepherd', 'Male', '4 months', 325),
    ('Labrador Retriever', 'Female', '3 months', 800),
    ('Rottweiler', 'Male', '6 months', 850),
    ('Pit Bull', 'Male', '4 months', 800),
    ('Golden Retriever', 'Male', '6 months', 500),
    ('Beagle', 'Female', '5 months', 200),
    ('Bulldog', 'Male', '6 months', 800),
    ('Great Dane', 'Male', '3 months', 600),
    ('Poodle', 'Female', '5 months', 900),
    ('Doberman', 'Male', '3 months', 900),
    ('Dachshund', 'Female', '4 months', 200),
    ('Siberian Husky', 'Female', '6 months', 600),
    ('Chihuahua', 'Male', '8 months', 400),
    ('Boxer', 'Male', '5 months', 750),
    ('Pug', 'Male', '2 months', 300),
    ('English Mastiff', 'Female', '7 months', 600),
    ('Chow Chow', 'Female', '4 months', 900),
    ('Border Collie', 'Male', '6 months', 800),
    ('Yorkshire Terrier', 'Female', '4 months', 900),
    ('Shih Tzu', 'Female', '7 months', 500),
    ('Pomeranina', 'Female', '6 months', 500),
    ('Cavalier King Charles Spaniel', 'Male', '5 months', 900),
    ('St. Bernard', 'Male', '7 months', 600),
    ('Basset Hound', 'Female', '4 months', 600),
    ('Alaskan Malamute', 'Male', '5 months', 900),
    ('Pekingese', 'Female', '8 months', 750),
    ('French Bulldog', 'Male', '5 months', 800),
    ('Bichon Frise', 'Male', '4 months', 500),
    ('Great Pyrenees', 'Male', '6 months', 900),
    ('Bernese Mountain Dog', 'Male', '4 months', 800);

    

    








