-- At system account

create user admin identified by 1111;

GRANT CREATE SESSION TO admin;
GRANT CREATE DATABASE LINK TO admin;
GRANT CREATE MATERIALIZED VIEW TO admin;
GRANT CREATE PROCEDURE TO admin;
GRANT CREATE PUBLIC SYNONYM TO admin;
GRANT CREATE ROLE TO admin;
GRANT CREATE SEQUENCE TO admin;
GRANT CREATE SYNONYM TO admin;
GRANT CREATE TABLE TO admin;
GRANT DROP ANY TABLE TO admin;
GRANT CREATE TRIGGER TO admin;
GRANT CREATE TYPE TO admin;
GRANT CREATE VIEW TO admin;
GRANT RESOURCE TO admin;

--- test table
CREATE TABLE TEST(
	test VARCHAR2(10)
);
INSERT INTO TEST VALUES(123);

SELECT * FROM TEST;
