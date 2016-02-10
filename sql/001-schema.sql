-- Example of an SQL script
CREATE TABLE Test (
    id integer,
    PRIMARY KEY(id)
);

INSERT INTO Test VALUES (1);
INSERT INTO Test VALUES (2);
INSERT INTO Test VALUES (3);

CREATE TABLE Countries (
    name TEXT,
    capital TEXT,
    population INT,
    currency TEXT,
    PRIMARY KEY (name)
);

INSERT INTO Countries VALUES ('Sweden','Stockholm',10000000,'SEK');
INSERT INTO Countries VALUES ('Norway','Oslo',4500000,'NOK');

SELECT * FROM Countries;
