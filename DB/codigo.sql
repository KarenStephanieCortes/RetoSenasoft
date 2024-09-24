CREATE DATABASE IF NOT EXISTS dbSenaSoft;

USE dbSenaSoft;

CREATE TABLE IF NOT EXISTS lab_group(
    id_lab_group INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE
); 

CREATE TABLE IF NOT EXISTS procedure_code(
    id_procedure_code INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE
); 

CREATE TABLE IF NOT EXISTS category(
    id_category INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL, 
    description TEXT NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE
); 

CREATE TABLE IF NOT EXISTS category_option(
    id_category_option INT PRIMARY KEY AUTO_INCREMENT,
    id_category INT NOT NULL,
    abbreviation CHAR(10) NOT NULL,
    name VARCHAR(50) NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE,
    FOREIGN KEY (id_category) REFERENCES category(id_category)
);

CREATE TABLE IF NOT EXISTS user(
    id_user VARCHAR(40) PRIMARY KEY,
    id_type_document INT NOT NULL,
    document VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    id_sex INT NOT NULL,
    phone_number VARCHAR(13) NOT NULL,
    direccion VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_role) REFERENCES role(id_role), 
    FOREIGN KEY (id_type_document) REFERENCES category_options(id_category_option), 
    FOREIGN Key(id_sex) REFERENCES category_options(id_category_option)
); 

CREATE TABLE IF NOT EXISTS lab_procedure(
    id_lab_procedure INT PRIMARY KEY AUTO_INCREMENT,
    id_procedure_code INT NOT NULL,
    id_lab_group INT NOT NULL,
    metodo VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_procedure_code) REFERENCES procedure_code(id_procedure_code),
    FOREIGN KEY (id_lab_group) REFERENCES lab_groups(id_lab_group)
); 

CREATE TABLE IF NOT EXISTS lab_test(
    id_lab_test INT PRIMARY KEY AUTO_INCREMENT,
    id_procedure_lab INT NOT NULL,
    code_test VARCHAR(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    id_result_type INT NOT NULL,
    unit VARCHAR(20) NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE,
    FOREIGN KEY (id_procedure_lab) REFERENCES procedure_lab(id_procedure_lab),
    FOREIGN KEY (id_result_type) REFERENCES category_options(id_category_option)
);

CREATE TABLE IF NOT EXISTS lab_options_test(
    id_options_test_lab INT PRIMARY KEY AUTO_INCREMENT,
    id_test INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    value_min_f FLOAT NOT NULL,
    value_max_f FLOAT NOT NULL,
    value_min_m FLOAT NOT NULL,
    value_max_m FLOAT NOT NULL,
    FOREIGN KEY (id_test) REFERENCES lab_test(id_lab_test)
);

CREATE TABLE IF NOT EXISTS lab_order(
    id_order_lab INT PRIMARY KEY AUTO_INCREMENT,
    id_user VARCHAR(40) NOT NULL,
    professional VARCHAR(50) NOT NULL,  
    orders INT NOT NULL,
    date_order DATE NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user(id_user), 
);

CREATE TABLE IF NOT EXISTS lab_order_result(
    id_lab_order_result INT PRIMARY KEY AUTO_INCREMENT,
    date_result TIMESTAMP NOT NULL,
    id_order INT NOT NULL,
    id_procedure INT NOT NULL,
    id_test INT NOT NULL,
    id_option_test INT NOT NULL,
    option_result ENUM('bajo', 'normal', 'alto') NOT NULL,
    number_result FLOAT NOT NULL,
    text_result TEXT NOT NULL,
    memo_result TEXT NOT NULL,
    num_processings INT NOT NULL,   
    FOREIGN KEY (id_order) REFERENCES order_lab(id_order_lab),
    FOREIGN KEY (id_procedure) REFERENCES procedure_lab(id_procedure_lab),
    FOREIGN KEY (id_test) REFERENCES lab_test(id_lab_test), 
    FOREIGN KEY (id_option_test) REFERENCES options_test_lab(id_options_test_lab)
);