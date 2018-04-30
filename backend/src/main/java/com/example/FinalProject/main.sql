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
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2016/07/Jug-Puppies-For-Sale-600x600.jpg', 'Pug', 'Male', '3 Months', 300),
    ('https://i.pinimg.com/originals/02/0b/6a/020b6a331372fa02c9e3f093067437fd.jpg', 'German Shepherd', 'Male', '3 Months', 325),
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2016/07/Yellow-Labrador-Puppies-for-Sale-600x600.jpg', 'Labrador Retriever', 'Female', '2 Months', 800),
    ('https://data.whicdn.com/images/126990776/original.jpg', 'Rottweiler', 'Male', '2 Months', 850),
    ('https://s-media-cache-ak0.pinimg.com/originals/2c/98/60/2c98600ffb0b3b61d19626620eab4851.jpg', 'Pit Bull', 'Male', '4 Months', 800),
    ('https://i.ebayimg.com/images/g/xTEAAOSwblZZJ51c/s-l300.jpg', 'Golden Retriever', 'Male', '4 Months', 500),
    ('http://www.ryanbeagleshome.com/assets/images/beagle-puppy-680x453.png', 'Beagle', 'Female', '2 Months', 200),
    ('https://pbs.twimg.com/media/C4sK_AoWcAA2ONB.jpg', 'Bulldog', 'Male', '5 Months', 800),
    ('https://www.dogshealthblog.com/wp-content/uploads/2016/09/blue-great-dane-puppy.jpg', 'Great Dane', 'Male', '5 Months', 600),
    ('https://i.pinimg.com/originals/af/6e/b3/af6eb39b2c64e1b51ce433c558eb5fb7.jpg', 'Poodle', 'Female', '2 Months', 900),
    ('https://lh3.googleusercontent.com/6z3pxFoD1jaWQr7fzQsLQzqvjLyW4XY-OWUsxk3xCvQ3CxjTEGY2tea0zWGiyKvB-ajtR2LZZZBDffxmqNKXYd3NPAYHog1gfh4peI9qrYFKAQsuMa1YX3BXJppUG1_vnvpGWWTCckm8BbvboPqthZ3tdQYZKaltOWmwYU5uwAIHfBqYe4oWBd7wfSPJ_4tDqELEagAomy5XA4hhLahd10fHm0lFaxCRvygzs1P_-JlH1R0UjUhn8LPeRqbp-u7Lz7Ytog5j2l0Or7zAo81yPooPaRATPOWToE6LmQFpZdZHR06f5jINcfyd6GrQC1WYLfTo114Y0oa39mc2YFY796n4Pa_y5VxZCmTDO75btYj2tv3el_afSwkEXVG5YsDH80XKclad1DVzf1LecFs_N4lk2CiXMxWSl-r1v1eeAVHSJ5BSb2mWrVLIJbbBP_h3cY3xlnWMrHKG48gnwruyweKEcwtU2SND546JyzuZ6-UXF4vLMBVEIZTQuFj2EVf5DwBaFA_69KG8y7YBUEtM5OUdgNgx8bDBLNnl8KvWYUmM7w_IWoGuVVG9qqmQyob2rSCZ1L7eUccXSFK2LZbIvqec3XYBiOfMITQkA_z0xQ8=w800-h500-no', 'Doberman', 'Male', '2 Months', 900),
    ('https://i1.wallbox.ru/wallpapers/main/201317/280b974707a51fe.jpg', 'Dachshund', 'Female', '3 Months', 200),
    ('https://www.arrowheadscoopers.com/wp-content/uploads/2017/11/puppyy11.jpg', 'Siberian Husky', 'Female', '2 Months', 600),
    ('https://www.puppieshk.com/images/anuncios/050220161454691743_2.jpg', 'Chihuahua', 'Male', '2 Months', 400),
    ('https://www.urbandogcoffee.com/wp-content/uploads/2018/03/boxer-pup-1024x721.jpg', 'Boxer', 'Male', '4 Months', 750),
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2016/07/English-Mastiff-Puppies-For-Sale-600x600.jpg', 'English Mastiff', 'Female', '4 Months', 600),
    ('http://1857el3tlg4r2uc4w82vmnbh.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/Chow-Chow-8.jpg', 'Chow Chow', 'Female', '3 Months', 900),
    ('http://blogs.uoregon.edu/yusugeog181/files/2014/05/Border-Collie-3-1fmzvjb.jpg', 'Border Collie', 'Male', '3 Months', 800),
    ('https://d1bbcn6xx8qu3z.cloudfront.net/sites/default/files/styles/product_thumbnail/public/puppy-photo/FullSizeRender-1%5B1%5D-1627922920.jpeg?itok=MjCqVAdz', 'Yorkshire Terrier', 'Female', '2 Months', 900),
    ('https://www.newdoggy.com/wp-content/uploads/2017/05/shih-tzu-puppy-for-sale-Ting-01-600x600.jpg', 'Shih Tzu', 'Male', '3 Months', 500),
    ('https://www.pets4homes.co.uk/images/breeds/92/5632b91896a2ee9f6658d42451b788ce.jpg', 'Pomeranina', 'Female', '2 Months', 500),
    ('https://static.wixstatic.com/media/7a420b_bf06103a6a87455fa8b6dd8fe6dcce54~mv2_d_5293_3718_s_4_2.jpg/v1/fill/w_630,h_443,al_c,q_80,usm_0.66_1.00_0.01/7a420b_bf06103a6a87455fa8b6dd8fe6dcce54~mv2_d_5293_3718_s_4_2.webp', 'Cavalier King Charles Spaniel', 'Female', '3 Months', 900),
    ('https://upload.wikimedia.org/wikipedia/commons/7/71/St._Bernard_puppy.jpg', 'St. Bernard', 'Male', '3 Months', 600),
    ('https://www.petclassifieds.us/user_images/4541590.jpg', 'Basset Hound', 'Female', '4 Months', 600),
    ('http://1.bp.blogspot.com/-cyvDiUIP-g8/VNe_aaLsegI/AAAAAAAAw2A/AUXG-mw-5eM/s1600/Orange5.JPG', 'Alaskan Malamute', 'Male', '2 Months', 900),
    ('https://5.imimg.com/data5/VO/XK/GLADMIN-3425158/pekingese-puppies-500x500.png', 'Pekingese', 'Female', '4 Months', 750),
    ('https://5.imimg.com/data5/AI/DE/MY-51581820/french-bulldog-puppies-500x500.jpg', 'French Bulldog', 'Male', '2 Months', 800),
    ('https://www.pets4homes.co.uk/images/classifieds/2014/01/17/532527/large/beautiful-bichon-puppies-52d927be4e234.JPG', 'Bichon Frise', 'Male', '3 Months', 500),
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2016/07/Great-Pyrenees-Mix-Puppies-For-Sale-600x600.jpg', 'Great Pyrenees', 'Male', '4 Months', 900),
    ('https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2017/06/Miniature-Bernese-Mountain-Dog-600x600.jpg', 'Bernese Mountain Dog', 'Male', '4 Months', 800),
    ('http://cdn.litlepups.net/2016/03/04/get-informed-about-the-cutest-dogs-in-the-world.png', 'Tea Cup Chihuahua', 'Male', '1 Month', 800),
    ('https://i.pinimg.com/originals/ee/e0/89/eee089f08d14e204557590cecb8029cd.jpg', 'Lilac Shar Pei', 'Male', '2 Months', 900),
    ('http://www.craigspets.com/sites/default/files/imagecache/product_full/pet-for-sale/puppies_for_sale_in_pa_abby-43_1.jpg', 'Shiba Inu', 'Male', '3 Months', 700),
    ('http://www.mille-animali.com/images/animali/puli.jpg', 'Hungarian Puli', 'Female', '4 Months', 850),
    ('http://2.bp.blogspot.com/-cR2_mkFgHP4/Tes65q9PtiI/AAAAAAAAAQc/KdGLdSxZSbU/s1600/varpu_5kk_seisoo.jpg', 'Swedish Vallhunds', 'Female', '6 Months', 850),
    ('https://www.pets4homes.co.uk/images/classifieds/2015/04/03/926302/wanted-bedling-terrier-pup-girl-8-10-weeks-old-551fccad46993.jpg', 'Bedlington Terrier', 'Female', '5 Months', 900),
    ('http://www.omy.dog/photo/D21E6701-7C10-4443-A7EB-3613EF4677B6/thumbnail', 'Finnish Spitz', 'Male', '4 Months', 900),
    ('https://i.pinimg.com/736x/ab/d8/e6/abd8e6672a37d52e4f52ebf991110d83--training-dogs-working-dogs.jpg', 'Lagotto Romangnolo', 'Female', '4 Months', 850),
    ('http://www.samoyedpuppies.co/uploads/1/1/2/9/112954455/s204302473499534831_p3_i3_w530.jpeg', 'Samoyed', 'Male', '3 Months', 800);










