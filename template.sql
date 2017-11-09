--Table for all the different tables the user can pick from when generating a new list--

--Drop the table if it already exists--
DROP TABLE IF EXISTS templates;
DROP TABLE IF EXISTS template_attributes;

--Create the templates table--
CREATE TABLE templates(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
);

--Create the template attributes table--
CREATE TABLE template_attributes(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
    CONSTRAINT FK_NAME FOREIGN KEY (name) REFERENCES templates (name)
);
