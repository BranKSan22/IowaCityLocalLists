--Follower Table--

--Drop the table if it already exists--
DROP TABLE IF EXISTS follow;

--Create the table--
CREATE TABLE follow(
    userid INT NOT NULL AUTO_INCREMENT,
    followid VARCHAR(100) NOT NULL,
    PRIMARY KEY (userid, followid),
    KEY FK_FOLLOWID_2 (followid),
    CONSTRAINT FK_FOLLOWID_1 FOREIGN KEY (userid) REFERENCES account (id),
    CONSTRAINT FK_FOLLOWID_2 FOREIGN KEY (followid) REFERENCES account (id)
);
