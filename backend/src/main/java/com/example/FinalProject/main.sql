CREATE TABLE adopters (
    ID SERIAL PRIMARY KEY,
    adopterName text,
    username text,
    email text,
    password text,
    sessionKey text
);

CREATE TABLE puppy_records (
    ID SERIAL PRIMARY KEY,
    puppy_img_url text,
    breed text,
    gender text,
    age text,
    price int
)

INSERT INTO puppy_records (puppy_img_url, breed, gender, age, price) VALUES
    ('http://cdn1-www.dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/thumbs/thumbs_pupporch-9.jpg', 'German Shepherd', 'Male', '3 months', 325),
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2016/07/Yellow-Labrador-Puppies-for-Sale-600x600.jpg', 'Labrador Retriever', 'Female', '2 months', 800),
    ('https://www.wikihow.com/images/9/98/User-Completed-Image-Care-for-a-Rottweiler-Puppy-2017.12.01-14.48.19.0.jpg', 'Rottweiler', 'Male', '2 months', 850),
    ('https://s-media-cache-ak0.pinimg.com/originals/2c/98/60/2c98600ffb0b3b61d19626620eab4851.jpg', 'Pit Bull', 'Male', '4 months', 800),
    ('https://i.ebayimg.com/images/g/xTEAAOSwblZZJ51c/s-l300.jpg', 'Golden Retriever', 'Male', '4 months', 500),
    ('http://www.ryanbeagleshome.com/assets/images/beagle-puppy-680x453.png', 'Beagle', 'Female', '2 months', 200),
    ('https://pbs.twimg.com/media/C4sK_AoWcAA2ONB.jpg', 'Bulldog', 'Male', '6 months', 800),
    ('https://vetstreet-brightspot.s3.amazonaws.com/be/5f/5893e9c74668837998f9bfad01da/great-dane-AP-1MN8SV-645sm8513.jpg', 'Great Dane', 'Male', '5 months', 600),
    ('https://i.pinimg.com/originals/af/6e/b3/af6eb39b2c64e1b51ce433c558eb5fb7.jpg', 'Poodle', 'Female', '2 months', 900),
    ('https://lh3.googleusercontent.com/6z3pxFoD1jaWQr7fzQsLQzqvjLyW4XY-OWUsxk3xCvQ3CxjTEGY2tea0zWGiyKvB-ajtR2LZZZBDffxmqNKXYd3NPAYHog1gfh4peI9qrYFKAQsuMa1YX3BXJppUG1_vnvpGWWTCckm8BbvboPqthZ3tdQYZKaltOWmwYU5uwAIHfBqYe4oWBd7wfSPJ_4tDqELEagAomy5XA4hhLahd10fHm0lFaxCRvygzs1P_-JlH1R0UjUhn8LPeRqbp-u7Lz7Ytog5j2l0Or7zAo81yPooPaRATPOWToE6LmQFpZdZHR06f5jINcfyd6GrQC1WYLfTo114Y0oa39mc2YFY796n4Pa_y5VxZCmTDO75btYj2tv3el_afSwkEXVG5YsDH80XKclad1DVzf1LecFs_N4lk2CiXMxWSl-r1v1eeAVHSJ5BSb2mWrVLIJbbBP_h3cY3xlnWMrHKG48gnwruyweKEcwtU2SND546JyzuZ6-UXF4vLMBVEIZTQuFj2EVf5DwBaFA_69KG8y7YBUEtM5OUdgNgx8bDBLNnl8KvWYUmM7w_IWoGuVVG9qqmQyob2rSCZ1L7eUccXSFK2LZbIvqec3XYBiOfMITQkA_z0xQ8=w800-h500-no', 'Doberman', 'Male', '2 months', 900),
    ('https://i1.wallbox.ru/wallpapers/main/201317/280b974707a51fe.jpg', 'Dachshund', 'Female', '3 months', 200),
    ('https://i.ytimg.com/vi/zoyVpwMc8H4/maxresdefault.jpg', 'Siberian Husky', 'Female', '2 months', 600),
    ('https://cmeimg-a.akamaihd.net/640/photos.demandstudios.com/getty/article/94/30/156461622.jpg', 'Chihuahua', 'Male', '2 months', 400),
    ('https://www.urbandogcoffee.com/wp-content/uploads/2018/03/boxer-pup-1024x721.jpg', 'Boxer', 'Male', '4 months', 750),
    ('http://pugfanclub.org/wp-content/uploads/2014/01/cute-animals-dog-pug-puppy-playing-biting-toy-pics.jpg', 'Pug', 'Male', '2 months', 300),
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2016/07/English-Mastiff-Puppies-For-Sale-600x600.jpg', 'English Mastiff', 'Female', '4 months', 600),
    ('http://1857el3tlg4r2uc4w82vmnbh.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Chow-Chow-8.jpg', 'Chow Chow', 'Female', '3 months', 900),
    ('http://blogs.uoregon.edu/yusugeog181/files/2014/05/Border-Collie-3-1fmzvjb.jpg', 'Border Collie', 'Male', '3 months', 800),
    ('https://petkey.blob.core.windows.net/resource/images/1080000/1081000/1081690_800W.jpg', 'Yorkshire Terrier', 'Female', '2 months', 900),
    ('https://www.newdoggy.com/wp-content/uploads/2017/05/shih-tzu-puppy-for-sale-Ting-01-600x600.jpg', 'Shih Tzu', 'Male', '3 months', 500),
    ('https://www.pets4homes.co.uk/images/breeds/92/5632b91896a2ee9f6658d42451b788ce.jpg', 'Pomeranina', 'Female', '2 months', 500),
    ('https://static.wixstatic.com/media/7a420b_bf06103a6a87455fa8b6dd8fe6dcce54~mv2_d_5293_3718_s_4_2.jpg/v1/fill/w_630,h_443,al_c,q_80,usm_0.66_1.00_0.01/7a420b_bf06103a6a87455fa8b6dd8fe6dcce54~mv2_d_5293_3718_s_4_2.webp', 'Cavalier King Charles Spaniel', 'Female', '3 months', 900),
    ('https://upload.wikimedia.org/wikipedia/commons/7/71/St._Bernard_puppy.jpg', 'St. Bernard', 'Male', '3 months', 600),
    ('https://www.petclassifieds.us/user_images/4541590.jpg', 'Basset Hound', 'Female', '4 months', 600),
    ('http://1.bp.blogspot.com/-cyvDiUIP-g8/VNe_aaLsegI/AAAAAAAAw2A/AUXG-mw-5eM/s1600/Orange5.JPG', 'Alaskan Malamute', 'Male', '2 months', 900),
    ('https://5.imimg.com/data5/VO/XK/GLADMIN-3425158/pekingese-puppies-500x500.png', 'Pekingese', 'Female', '4 months', 750),
    ('https://5.imimg.com/data5/AI/DE/MY-51581820/french-bulldog-puppies-500x500.jpg', 'French Bulldog', 'Male', '2 months', 800),
    ('https://www.pets4homes.co.uk/images/classifieds/2014/01/17/532527/large/beautiful-bichon-puppies-52d927be4e234.JPG', 'Bichon Frise', 'Male', '3 months', 500),
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2016/07/Great-Pyrenees-Mix-Puppies-For-Sale-600x600.jpg', 'Great Pyrenees', 'Male', '4 months', 900),
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2017/06/Miniature-Bernese-Mountain-Dog-600x600.jpg', 'Bernese Mountain Dog', 'Male', '4 months', 800)

    

    



--CREATE TABLE manager(
--    id Serial Primary key,
--    firstName text,
--    lastName text,
--    username text,
--    password_hash text,
--    email text,
--    sessionKey text
--);

--CREATE TABLE puppyCart (
--    ID SERIAL PRIMARY KEY,
--    adopterName INTEGER REFERENCES adopters(id),
--    breed INTEGER REFERENCES puppy_records(id)
--);






