
DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;


CREATE TABLE products (
	item_id INTEGER(12) AUTO_INCREMENT NOT NULL,
	product_name VARCHAR(100) NOT NULL,
	department_name VARCHAR(20) NOT NULL,
	price DECIMAL(10,2) NOT NULL,
	stock_quantity INTEGER(12) NOT NULL,
	PRIMARY KEY (item_id)
);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES  ('DJI - Mavic Pro Quadcopter with Remote Controller - Gray - Larger Front', "Drone", 999.99, 15),	
        ('DJI - Spark Quadcopter - White - Larger Front', "Drone", 499.99, 23),	
        ('DJI - Mavic Pro Quadcopter Fly More Combo - Gray - Larger Front', "Drone", 1299.99, 45),	
        ('DJI - Spark Fly More Combo Quadcopter - Alpine White - Larger Front', "Drone", 699.99, 72),	
        ('DJI - Phantom 4 Pro Quadcopter - White - Larger Front', "Drone", 1499.99, 3),	
        ('GoPro - Karma Quadcopter with HERO5 Black - Black/White - Larger Front', "Drone", 1099.99, 82),	
        ('DJI - Phantom 3 Standard Quadcopter - White - Larger Front', "Drone", 499.99, 12),	
        ('DJI - Phantom 4 Advanced Quadcopter - White - Larger Front', "Drone", 1199.99, 67),	
        ('Parrot - Bebop 2 Quadcopter with Skycontroller 2 and Cockpit FPV Glasses - White - Larger Front', "Drone", 499.99, 32),	
        ('Autel Robotics - X-Star Premium Quadcopter with Remote Controller - Orange - Larger Front', "Drone", 799.99, 15),	
        ('DJI - Phantom 4 Pro+ Quadcopter - White - Larger Front', "Drone", 1799.99, 8),	
        ('YUNEEC - Typhoon 4K Quadcopter - Black - Larger Front', "Drone", 720.99, 3),	
        ('DJI - Phantom 4 Quadcopter - White - Larger Front', "Drone", 999.99, 12),	
        ('YUNEEC - Breeze Quadcopter - White - Larger Front', "Drone", 393.99, 7),	
        ('Dromida - KODO HD Drone with Remote Controller - Black/Silver/Yellow - Larger Front', "Drone", 59.99, 25),	
        ('YUNEEC - Typhoon H Hexacopter Pro with Intel® RealSense™ Technology - Gun Metal Gray - Larger Front', "Drone", 1511.99, 16),	
        ('Wingsland - S6 Quadcopter - Orange - Angle', "Drone", 399.99, 21),	
        ('Rova - Selfie Drone - Black - Larger Front', "Drone", 205.99, 8),	
        ('Canon - EOS Rebel T6 DSLR Camera with EF-S 18-55mm IS II and EF 75-300mm III lens - Larger Front', "Camera", 499.99, 45),	
        ('Canon - EOS Rebel T6i DSLR Camera with EF-S 18-55mm IS STM Lens - Black - Larger Front', "Camera", 699.99, 21),	
        ('Nikon - D3400 DSLR Camera with AF-P DX 18-55mm G VR and 70-300mm G ED Lenses - Black - Larger Front', "Camera", 599.99, 11),	
        ('Canon - EOS 80D DSLR Camera with 18-135mm IS USM Lens - Black - Larger Front', "Camera", 1399.99, 2),	
        ('Nikon - D5300 DSLR Camera with 18-55mm VR Lens - Black - Larger Front', "Camera", 524.99, 56),	
        ('Nikon - D5600 DSLR Camera with AF-P DX NIKKOR 18-55mm f/3.5-5.6G VR Lens - Larger Front', "Camera", 799.99, 23),	
        ('Nikon - D3400 DSLR Camera with AF-P DX 18-55mm G VR and 70-300mm G ED Lenses - Red - Larger Front', "Camera", 599.99, 11),	
        ('Nikon - D3400 DSLR Camera with AF-P DX NIKKOR 18-55mm f/3.5-5.6G VR Lens - Black - Larger Front', "Camera", 496.99, 34),	
        ('Nikon - D7500 DSLR Camera (Body Only) - Larger Front', "Camera", 1249.99, 21),	
        ('Canon - EOS Rebel T6 DSLR Camera with EF-S 18-55mm f/3.5-5.6 IS II Lens - Larger Front', "Camera", 449.99, 8),	
        ('Apple - Iphone XS', "Phone", 999.99, 25),	
        ('Apple - Iphone XS MAX', "Phone", 1099.99, 25),	
        ('Samsung - S10', "Phone", 999.99, 15);	

