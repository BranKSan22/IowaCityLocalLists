DROP TABLE IF EXISTS account;

/* This is a very simple table for a mysql-php example */
CREATE TABLE account (
    id INT NOT NULL AUTO_INCREMENT,
    hashedpass VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    propic VARCHAR(255), /*figure out how to autoload a "blank" profile pic if the user decides to not use one of their own*/
    PRIMARY KEY (ID)
);
