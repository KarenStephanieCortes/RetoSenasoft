CREATE DATABASE IF NOT EXISTS dbSenaSoft;

CREATE TABLE IF NOT EXISTS category(
    id_category INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL, 
    description TEXT NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE
); 

CREATE TABLE IF NOT EXISTS category_options(
    id_category_option INT PRIMARY KEY AUTO_INCREMENT,
    id_category INT NOT NULL,
    abbreviation CHAR(10) NOT NULL,
    name VARCHAR(50) NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE,
    FOREIGN KEY (id_category) REFERENCES category(id_category)
);

CREATE TABLE IF NOT EXISTS eps(
    id_eps INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    codigo VARCHAR(15) NOT NULL,
    nit VARCHAR(20) NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT TRUE
); 

CREATE TABLE IF NOT EXISTS nevels_eps(
    id_nevel INT PRIMARY KEY AUTO_INCREMENT,
    id_eps INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_eps) REFERENCES eps(id_eps)
); 

CREATE TABLE IF NOT EXISTS role(
    id_rol INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE,
);

CREATE TABLE IF NOT EXISTS user(
    id_user VARCHAR(40) PRIMARY KEY,
    id_role INT NOT NULL,
    id_type_document INT NOT NULL,
    document VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    id_sex INT NOT NULL,
    phone_number VARCHAR(13) NOT NULL,
    FOREIGN KEY (id_rol) REFERENCES rol(id_rol), 
    FOREIGN KEY (id_type_document) REFERENCES category_options(id_category_option), 
    FOREIGN Key(id_sex) REFERENCES category_options(id_category_option)
); 

CREATE TABLE IF NOT EXISTS professional(
    id_professional INT PRIMARY KEY, 
    id_user VARCHAR(40) NOT NULL,
    code_professional VARCHAR(20) NOT NULL,
    register VARCHAR(20) NOT NULL,
    type INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user(id_user), 
    FOREIGN KEY (type) REFERENCES category_options(id_category_option)
);

CREATE TABLE user_affiliation(
    id_user_affiliation INT PRIMARY KEY AUTO_INCREMENT,
    id_user VARCHAR(40) NOT NULL UNIQUE,
    historia VARCHAR(20) NOT NULL,
    id_regime INT NOT NULL,
    id_nevel INT NOT NULL,
    id_eps INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user(id_user), 
    FOREIGN KEY (id_regime) REFERENCES category_options(id_category_option),
    FOREIGN KEY (id_nevel) REFERENCES nevels_eps(id_nevel), 
    FOREIGN KEY (id_eps) REFERENCES eps(id_eps),
);

CREATE TABLE IF NOT EXISTS procedure_code(
    
)