-- drop the table if it already exists
DROP TABLE IF EXISTS attribute;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS list;

-- this is the table for lists
CREATE TABLE list (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE item (
    id INT NOT NULL AUTO_INCREMENT,
    list_id INT NOT NULL,
    name VARCHAR(120) NOT NULL,
    ordernumber INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE attribute (
    id INT NOT NULL AUTO_INCREMENT,
    item_id INT NOT NULL,
    ordernumber INT NOT NULL,
    label VARCHAR(120) NOT NULL,
    type VARCHAR(120) NOT NULL,
    value VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)    
);

INSERT INTO list (id, name) VALUES (1, "Brandy's Favorite Restaurants");
INSERT INTO list (id, name) VALUES (2, "Sandra's Favorite Restaurants");
INSERT INTO list (id, name) VALUES (3, "Duncan's Favorite Restaurants");

INSERT INTO item (id, list_id, name, ordernumber) VALUES (11, 1, 'Blue Bird Diner', 1);
INSERT INTO item (id, list_id, name, ordernumber) VALUES (12, 1, 'Takanami', 2);
INSERT INTO item (id, list_id, name, ordernumber) VALUES (21, 2, 'The Airliner', 1);
INSERT INTO item (id, list_id, name, ordernumber) VALUES (22, 2, 'Chipotle', 2);
INSERT INTO item (id, list_id, name, ordernumber) VALUES (31, 3, 'Pancheros', 1);
INSERT INTO item (id, list_id, name, ordernumber) VALUES (32, 3, 'Jimmy Johns', 2);
                                    
                                 
