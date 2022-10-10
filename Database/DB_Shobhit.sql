create database DB_Shobhit;
use DB_Shobhit;

CREATE TABLE product(	
	id int primary key,
    Title varchar(50) NOT NULL,
    Description varchar(500) NOT NULL,
    Price float NOT NULL,
    Discount float NOT NULL,
    Rating float NOT NULL,
    Stock float NOT NULL,
    Brand varchar(50) NOT NULL,
    Category varchar(50) NOT NULL,
    Thumbnail varchar(500) NOT NULL  
);


create table images(
  ID INT NOT NULL AUTO_INCREMENT primary key,  
  product_id int,
  image varchar(200),
  foreign key (product_id) references product(id)
);



INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (1,'iPhone 9','An apple mobile which is nothing like apple',549,12.96,4.69,94,'Apple','smartphones','https://dummyjson.com/image/i/products/1/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (2,'iPhone X','SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...',899,17.94,4.44,34,'Apple','smartphones','https://dummyjson.com/image/i/products/2/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (3,'Samsung Universe 9','Samsung''s new variant which goes beyond Galaxy to the Universe',1249,15.46,4.09,36,'Samsung','smartphones','https://dummyjson.com/image/i/products/3/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (4,'OPPOF19','OPPO F19 is officially announced on April 2021.',280,17.91,4.3,123,'OPPO','smartphones','https://dummyjson.com/image/i/products/4/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (5,'Huawei P30','Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.',499,10.58,4.09,32,'Huawei','smartphones','https://dummyjson.com/image/i/products/5/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (6,'MacBook Pro','MacBook Pro 2021 with mini-LED display may launch between September, November',1749,11.02,4.57,83,'APPle','laptops','https://dummyjson.com/image/i/products/6/thumbnail.png');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (7,'Samsung Galaxy Book','Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched',1499,4.15,4.25,50,'Samsung','laptops','https://dummyjson.com/image/i/products/7/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (8,'Microsoft Surface Laptop 4','Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.',1499,10.23,4.43,68,'Microsoft Surface','laptops','https://dummyjson.com/image/i/products/8/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (9,'Infinix INBOOK','Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty',1099,11.83,4.54,96,'Infinix','laptops','https://dummyjson.com/image/i/products/9/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (10,'HP Pavilion 15-DK1056WM','HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10',1099,6.18,4.43,89,'HP Pavilion','laptops','https://dummyjson.com/image/i/products/10/thumbnail.jpeg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (11,'perfume Oil','Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil',13,8.4,4.26,65,'Impression of Acqua Di Gio','fragrances','https://dummyjson.com/image/i/products/11/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (12,'Brown Perfume','Royal_Mirage Sport Brown Perfume for Men & Women - 120ml',40,15.66,4,52,'Royal_Mirage','fragrances','https://dummyjson.com/image/i/products/12/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (13,'Fog Scent Xpressio Perfume','Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men',13,8.14,4.59,61,'Fog Scent Xpressio','fragrances','https://dummyjson.com/image/i/products/13/thumbnail.webp');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (14,'Non-Alcoholic Concentrated Perfume Oil','Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil',120,15.6,4.21,114,'Al Munakh','fragrances','https://dummyjson.com/image/i/products/14/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (15,'Eau De Perfume Spray','Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality',30,10.99,4.7,105,'Lord - Al-Rehab','fragrances','https://dummyjson.com/image/i/products/15/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (16,'Hyaluronic Acid Serum','L''OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid',19,13.31,4.83,110,'L''Oreal Paris','skincare','https://dummyjson.com/image/i/products/16/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (17,'Tree Oil 30ml','Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,',12,4.09,4.52,78,'Hemani Tea','skincare','https://dummyjson.com/image/i/products/17/thumbnail.jpg');
INSERT INTO  product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (18,'Oil Free Moisturizer 100ml','Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.',40,13.1,4.56,88,'Dermive','skincare','https://dummyjson.com/image/i/products/18/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (19,'Skin Beauty Serum.','Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m',46,10.68,4.42,54,'ROREC White Rice','skincare','https://dummyjson.com/image/i/products/19/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (20,'Freckle Treatment Cream- 15gm','Fair & Clear is Pakistan''s only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects.',70,16.99,4.06,140,'Fair & Clear','skincare','https://dummyjson.com/image/i/products/20/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (21,'- Daal Masoor 500 grams','Fine quality Branded Product Keep in a cool and dry place',20,4.81,4.44,133,'Saaf & Khaas','groceries','https://dummyjson.com/image/i/products/21/thumbnail.png');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (22,'Elbow Macaroni - 400 gm','Product details of Bake Parlor Big Elbow Macaroni - 400 gm',14,15.58,4.57,146,'Bake Parlor Big','groceries','https://dummyjson.com/image/i/products/22/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (23,'Orange Essence Food Flavou','Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item',14,8.04,4.85,26,'Baking Food Items','groceries','https://dummyjson.com/image/i/products/23/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (24,'cereals muesli fruit nuts','original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji',46,16.8,4.94,113,'fauji','groceries','https://dummyjson.com/image/i/products/24/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (25,'Gulab Powder 50 Gram','Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds',70,13.58,4.87,47,'Dry Rose','groceries','https://dummyjson.com/image/i/products/25/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (26,'Plant Hanger For Home','Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf',41,17.86,4.08,131,'Boho Decor','home-decoration','https://dummyjson.com/image/i/products/26/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (27,'Flying Wooden Bird','Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm',51,15.58,4.41,17,'Flying Wooden','home-decoration','https://dummyjson.com/image/i/products/27/thumbnail.webp');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (28,'3D Embellishment Art Lamp','3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)',20,16.49,4.82,54,'LED Lights','home-decoration','https://dummyjson.com/image/i/products/28/thumbnail.jpg');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (29,'Handcraft Chinese style','Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate',60,15.34,4.44,7,'luxury palace','home-decoration','https://dummyjson.com/image/i/products/29/thumbnail.webp');
INSERT INTO product(id,Title,Description,Price,Discount,Rating,Stock,Brand,Category,Thumbnail) VALUES (30,'Key Holder','Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality',30,2.92,4.92,54,'Golden','home-decoration','https://dummyjson.com/image/i/products/30/thumbnail.jpg');



INSERT INTO images(product_id,image) VALUES (1, 'https://dummyjson.com/image/i/products/1/1.jpg');
INSERT INTO images(product_id,image) VALUES (1, 'https://dummyjson.com/image/i/products/1/2.jpg');
INSERT INTO images(product_id,image) VALUES (1, 'https://dummyjson.com/image/i/products/1/1.jpg');
INSERT INTO images(product_id,image) VALUES(1,'https://dummyjson.com/image/i/products/1/4.jpg');

INSERT INTO  images(product_id, image) VALUES (2, 'https://dummyjson.com/image/i/products/2/1.jpg');
INSERT INTO images(product_id, image) VALUES (2, 'https://dummyjson.com/image/i/products/2/2.jpg');
INSERT INTO images(product_id, image) VALUES (2, 'https://dummyjson.com/image/i/products/2/3.jpg');

INSERT INTO  images(product_id,image) VALUES (3,'https://dummyjson.com/image/i/products/3/1.jpg');

INSERT INTO images(product_id,image) VALUES (4, 'https://dummyjson.com/image/i/products/4/1.jpg');
INSERT INTO images(product_id, image) VALUES(4, 'https://dummyjson.com/image/i/products/4/2.jpg');
INSERT INTO images(product_id, image) VALUES(4, 'https://dummyjson.com/image/i/products/4/3.jpg');
INSERT INTO images(product_id, image) VALUES(4, 'https://dummyjson.com/image/i/products/4/4.jpg');

INSERT INTO images(product_id, image) VALUES(5, 'https://dummyjson.com/image/i/products/5/1.jpg');
INSERT INTO images(product_id,image) VALUES (5, 'https://dummyjson.com/image/i/products/5/2.jpg');
INSERT INTO images(product_id, image) VALUES(5, 'https://dummyjson.com/image/i/products/5/3.jpg');

INSERT INTO images(product_id,image) VALUE(6, 'https://dummyjson.com/image/i/products/6/1.png');
INSERT INTO images(product_id, image) VALUES(6, 'https://dummyjson.com/image/i/products/6/2.jpg');
INSERT INTO images(product_id, image) VALUES(6, 'https://dummyjson.com/image/i/products/6/3.png');
INSERT INTO images(product_id, image) VALUES(6, 'https://dummyjson.com/image/i/products/6/4.jpg');

INSERT INTO images(product_id,image) VALUES (7 ,'https://dummyjson.com/image/i/products/7/1.jpg');
INSERT INTO images(product_id, image) VALUES(7, 'https://dummyjson.com/image/i/products/7/2.jpg');
INSERT INTO images(product_id, image) VALUES(7, 'https://dummyjson.com/image/i/products/7/3.jpg');

INSERT INTO images(product_id, image) VALUES (8, 'https://dummyjson.com/image/i/products/8/1.jpg');
INSERT INTO images(product_id, image) VALUES(8, 'https://dummyjson.com/image/i/products/8/2.jpg');
INSERT INTO images(product_id, image) VALUES(8, 'https://dummyjson.com/image/i/products/8/3.jpg');
INSERT INTO images(product_id, image) VALUES(8, 'https://dummyjson.com/image/i/products/8/4.jpg');

INSERT INTO images(product_id,image) VALUES (9, 'https://dummyjson.com/image/i/products/9/1.jpg');
INSERT INTO images(product_id, image) VALUES(9, 'https://dummyjson.com/image/i/products/9/2.png');
INSERT INTO images(product_id, image) VALUES(9,'https://dummyjson.com/image/i/products/9/3.png');
INSERT INTO images(product_id, image) VALUES(9, 'https://dummyjson.com/image/i/products/9/4.jpg');

INSERT INTO images(product_id, image) VALUES (10, 'https://dummyjson.com/image/i/products/10/1.jpg');
INSERT INTO images(product_id, image) VALUES (10, 'https://dummyjson.com/image/i/products/10/2.jpg');
INSERT INTO images(product_id, image) VALUES (10, 'https://dummyjson.com/image/i/products/10/3.jpg');

INSERT INTO images(product_id, image) VALUES (11, 'https://dummyjson.com/image/i/products/11/1.jpg');
INSERT INTO images(product_id, image) VALUES (11, 'https://dummyjson.com/image/i/products/11/2.jpg');
INSERT INTO images(product_id, image) VALUES (11, 'https://dummyjson.com/image/i/products/11/3.jpg');

INSERT INTO images(product_id,image) VALUES (12, 'https://dummyjson.com/image/i/products/12/1.jpg');
INSERT INTO images(product_id,image) VALUES (12, 'https://dummyjson.com/image/i/products/12/2.jpg');
INSERT INTO images(product_id,image) VALUES (12, 'https://dummyjson.com/image/i/products/12/3.png');
INSERT INTO images(product_id, image) VALUES (12, 'https://dummyjson.com/image/i/products/12/4.jpg');


INSERT INTO images(product_id,image)  VALUES (13, 'https://dummyjson.com/image/i/products/13/1.jpg');
 INSERT INTO images(product_id,image)  VALUES (13, 'https://dummyjson.com/image/i/products/13/2.png');
INSERT INTO images(product_id,image)  VALUES (13, 'https://dummyjson.com/image/i/products/13/3.jpg');
INSERT INTO images(product_id,image)  VALUES (13, 'https://dummyjson.com/image/i/products/13/4.jpg');
														
INSERT INTO images(product_id, image) VALUES (14, 'https://dummyjson.com/image/i/products/14/1.jpg');
INSERT INTO images(product_id, image) VALUES(14, 'https://dummyjson.com/image/i/products/14/2.jpg');
INSERT INTO images(product_id, image) VALUES(14, 'https://dummyjson.com/image/i/products/14/3.jpg');

INSERT INTO images(product_id,image) VALUES (15, 'https://dummyjson.com/image/i/products/15/1.jpg');
INSERT INTO images(product_id,image) VALUES (15, 'https://dummyjson.com/image/i/products/15/2.jpg');
INSERT INTO images(product_id, image)  VALUES(15, 'https://dummyjson.com/image/i/products/15/3.jpg');
INSERT INTO images(product_id, image) VALUES(15,'https://dummyjson.com/image/i/products/15/4.jpg');

INSERT INTO images(product_id,image) VALUES (16,'https://dummyjson.com/image/i/products/16/1.png');
INSERT INTO images(product_id, image) VALUES(16, 'https://dummyjson.com/image/i/products/16/2.webp');
INSERT INTO images(product_id, image) VALUES(16, 'https://dummyjson.com/image/i/products/16/3.jpg');
INSERT INTO images(product_id, image) VALUES(16, 'https://dummyjson.com/image/i/products/16/4.jpg');

INSERT INTO images(product_id,image) VALUES (17, 'https://dummyjson.com/image/i/products/17/1.jpg');
INSERT INTO images(product_id,image) VALUES (17, 'https://dummyjson.com/image/i/products/17/2.jpg');
INSERT INTO images(product_id,image) VALUES (17, 'https://dummyjson.com/image/i/products/17/3.jpg');

INSERT INTO images(product_id,image) VALUES (18, 'https://dummyjson.com/image/i/products/18/1.jpg');
INSERT INTO images(product_id,image) VALUES (18, 'https://dummyjson.com/image/i/products/18/2.jpg');
INSERT INTO images(product_id,image) VALUES (18, 'https://dummyjson.com/image/i/products/18/3.jpg');
INSERT INTO  images(product_id,image) VALUES (18, 'https://dummyjson.com/image/i/products/18/4.jpg');


INSERT INTO images(product_id,image) VALUES (19, 'https://dummyjson.com/image/i/products/19/1.jpg');
INSERT INTO images(product_id,image) VALUES (19, 'https://dummyjson.com/image/i/products/19/2.jpg');
INSERT INTO images(product_id,image) VALUES (19, 'https://dummyjson.com/image/i/products/19/3.png');


INSERT INTO images(product_id,image) VALUES (20,'https://dummyjson.com/image/i/products/20/1.jpg');
INSERT INTO images(product_id,image) VALUES (20, 'https://dummyjson.com/image/i/products/20/2.jpg');
INSERT INTO images(product_id,image) VALUES (20, 'https://dummyjson.com/image/i/products/20/3.jpg');
INSERT INTO images(product_id,image) VALUES (20, 'https://dummyjson.com/image/i/products/20/4.jpg');
INSERT INTO images(product_id,image) VALUES (20, 'https://dummyjson.com/image/i/products/20/thumbnail.jpg');

INSERT INTO images(product_id,image) VALUES (21, 'https://dummyjson.com/image/i/products/21/1.png');
INSERT INTO images(product_id,image) VALUES (21,'https://dummyjson.com/image/i/products/21/2.jpg');
INSERT INTO images(product_id,image) VALUES (21, 'https://dummyjson.com/image/i/products/21/3.jpg');


INSERT INTO images(product_id,image) VALUES (22, 'https://dummyjson.com/image/i/products/22/1.jpg');
INSERT INTO images(product_id,image) VALUES (22,'https://dummyjson.com/image/i/products/22/2.jpg');
INSERT INTO images(product_id,image) VALUES (22, 'https://dummyjson.com/image/i/products/22/3.jpg');

INSERT INTO images(product_id,image) VALUES (23, 'https://dummyjson.com/image/i/products/23/1.jpg');
INSERT INTO images(product_id, image) VALUES(23, 'https://dummyjson.com/image/i/products/23/2.jpg');
INSERT INTO images(product_id, image) VALUES(23, 'https://dummyjson.com/image/i/products/23/3.jpg');
INSERT INTO images(product_id, image) VALUES(23, 'https://dummyjson.com/image/i/products/23/4.jpg');


INSERT INTO images(product_id,image) VALUES (24,'https://dummyjson.com/image/i/products/24/1.jpg');
INSERT INTO images(product_id, image) VALUES(24, 'https://dummyjson.com/image/i/products/24/2.jpg');
INSERT INTO images(product_id, image) VALUES(24, 'https://dummyjson.com/image/i/products/24/3.jpg');
INSERT INTO images(product_id, image) VALUES(24,'https://dummyjson.com/image/i/products/24/4.jpg');



INSERT INTO images(product_id,image) VALUES (25, 'https://dummyjson.com/image/i/products/25/1.png');
INSERT INTO images(product_id,image) VALUES (25, 'https://dummyjson.com/image/i/products/25/2.jpg');
INSERT INTO images(product_id, image) VALUES(25, 'https://dummyjson.com/image/i/products/25/3.png');
INSERT INTO images(product_id, image) VALUES(25, 'https://dummyjson.com/image/i/products/25/4.jpg');


INSERT INTO images(product_id,image) VALUES (26, 'https://dummyjson.com/image/i/products/26/1.jpg');
INSERT INTO images(product_id,image) VALUES (26,'https://dummyjson.com/image/i/products/26/2.jpg');
INSERT INTO images(product_id,image) VALUES (26,'https://dummyjson.com/image/i/products/26/3.jpg');
INSERT INTO images(product_id,image) VALUES (26,'https://dummyjson.com/image/i/products/26/4.jpg');
INSERT INTO images(product_id,image) VALUES (26,'https://dummyjson.com/image/i/products/26/5.jpg');


INSERT INTO images(product_id,image) VALUES (27, 'https://dummyjson.com/image/i/products/27/1.jpg');
INSERT INTO images(product_id,image) VALUES (27,'https://dummyjson.com/image/i/products/27/2.jpg');
INSERT INTO images(product_id,image) VALUES (27,'https://dummyjson.com/image/i/products/27/3.jpg');
INSERT INTO images(product_id,image) VALUES (27,'https://dummyjson.com/image/i/products/27/4.jpg');


INSERT INTO images(product_id,image) VALUES (28, 'https://dummyjson.com/image/i/products/28/1.jpg');
INSERT INTO images(product_id,image) VALUES (28,'https://dummyjson.com/image/i/products/28/2.jpg');
INSERT INTO images(product_id,image) VALUES (28,'https://dummyjson.com/image/i/products/28/3.png');
INSERT INTO images(product_id,image) VALUES (28,'https://dummyjson.com/image/i/products/28/4.jpg');


INSERT INTO images(product_id,image)  VALUES (29, 'https://dummyjson.com/image/i/products/29/1.jpg');
INSERT INTO images(product_id,image) VALUES (29,'https://dummyjson.com/image/i/products/29/2.jpg');
INSERT INTO images(product_id,image) VALUES (29,'https://dummyjson.com/image/i/products/29/3.webp');
INSERT INTO images(product_id,image) VALUES (29,'https://dummyjson.com/image/i/products/29/4.webp');

INSERT INTO images(product_id,image) VALUES (30, 'https://dummyjson.com/image/i/products/30/1.jpg');
INSERT INTO images(product_id,image) VALUES (30,'https://dummyjson.com/image/i/products/30/2.jpg');
INSERT INTO images(product_id,image) VALUES (30,'https://dummyjson.com/image/i/products/30/3.jpg');


/*DML Operation*/
select p.*, img.image from product p inner join images img on p.id=img.product_id  where p.category in ("smartphones", "laptops") and p.brand in ("Apple", "Samsung"); 
select p.*, img.image from product p inner join images img on p.id=img.product_id  where  p.brand in ("Apple", "Samsung");

/*Selecting array of images*/
select img.product_id, json_arrayagg(img.image) as images from images img inner join product p on img.product_id=p.id group by  img.product_id limit 0,10;
