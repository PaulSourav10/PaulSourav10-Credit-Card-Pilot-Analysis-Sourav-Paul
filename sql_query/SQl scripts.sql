create database code_basics_ch_8;
create table dim_customer
(
customer_id varchar(100) not null,
age_group varchar (50),
city varchar (255),
occupation varchar (255),
gender varchar (10),
marital_status varchar (50),
avg_income BIGINT

);

drop table fact_spends;


CREATE TABLE fact_spends
(
customer_id varchar (100),
month varchar(15),
category varchar (255),
payment_type varchar (255),
spend bigint

);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/fact_spends.csv'
INTO TABLE fact_spends
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;