--Assignment 

CREATE OR REPLACE TYPE address_type AS OBJECT(
street 	VARCHAR2(45),
city	VARCHAR2(45),
country VARCHAR2(45));
/

CREATE TABLE addresses OF address_type;

CREATE TABLE staff(
staff_id		NUMBER(6),
date_of_birth	DATE,
firstname		VARCHAR2(20) NOT NULL,
surname			VARCHAR2(20) NOT NULL,
salary			NUMBER(9,2),
team_id			NUMBER(6),
address			REF address_type SCOPE IS address
);	


CREATE TABLE teams(
team_id			NUMBER(6),
department		VARCHAR2(45));


CREATE TABLE festivals(
festival_id		NUMBER(6),
description		VARCHAR2(200),
start_date		DATE,
end_date		DATE,
act 			VARCHAR2(45),
activity		VARCHAR2(45),
capacity 		NUMBER(5)
);


CREATE TABLE tickets(
ticket_id		NUMBER(6),
price			NUMBER(6),
ticket_type		CHAR,
date_of_festival DATE,
festival_id		NUMBER(6));


CREATE TABLE festival_staff(
event_id		NUMBER(6),
staff_id		NUMBER(6),
festival_id		NUMBER(6),
date_of_event	DATE,
shift_start		DATE,
shift_end		DATE		
);
