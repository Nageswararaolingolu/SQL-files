-- DDL
# ddl


# Create : Database/Tables
create Database PDA_90;
use PDA_90;

create table EMP
(
ID mediumint,
EMP_NAME VARCHAR(50),
PHN_NUM INT,
CITY varchar(30)
);
# ID, NAME, PHNNUM, CITY
# ROWS : RECORDS, COLUMNS : FIELDS ATTRIBUTES

SHOW TABLES;
DESC EMP;