USE ecommerce_db;

CREATE TABLE category (
	id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE product (
	id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL(5, 2 ) NOT NULL,
    stock VARCHAR(30) NOT NULL DEFAULT 10,
    category_id INT,
    PRIMARY KEY (id),
    CONSTRAINT fk_category FOREIGN KEY (category_id) 
      REFERENCES category (id) ON DELETE CASCADE  
    
);

CREATE TABLE tag (
	id INT NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE TABLE productTag (
	id INT NOT NULL AUTO_INCREMENT,
    product_id INT,
    tag_id INT,
    PRIMARY KEY (id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) 
      REFERENCES product (id) ON DELETE CASCADE,
      CONSTRAINT fk_tag FOREIGN KEY (tag_id) 
    REFERENCES tag (id) ON DELETE CASCADE  
     
);