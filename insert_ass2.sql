--INSERT

--ADDRESSES

INSERT INTO addresses
	(street, city, country)
VALUES
	('41 SOUTHAMPTON ROAD', 'NORTHAMPTON', 'ENGLAND');
INSERT INTO addresses
	(street, city, country)
VALUES
	('209 ROCKY ROAD', 'LONDON', 'ENGLAND');
INSERT INTO addresses
	(street, city, country)
VALUES
	('67 FLEET STREET', 'LONDON', 'ENGLAND');
INSERT INTO addresses
	(street, city, country)
VALUES
	('8 APSLEY AVENUE', 'CHESNUT', 'ENGLAND');
INSERT INTO addresses
	(street, city, country)
VALUES
	('1881 WHITE HART LANE', 'LONDON', 'ENGLAND');


--STAFF

INSERT INTO staff
	(staff_id, date_of_birth, firstname, surname, salary, team_id)
VALUES
	(120376, '22-DEC-1992', 'ALEX', 'RICHARD', '23,500', 000317);

UPDATE staff SET address = 
(select ref(a)
FROM addresses a
WHERE a.street='41 SOUTHAMPTON ROAD')
WHERE staff= 120376;

INSERT INTO staff
	(staff_id, date_of_birth, firstname, surname, salary, team_id)
VALUES
	(120259, '09-MAY-1994', 'VICTORIA', 'SPENCER', '23,500', 000317);

UPDATE staff SET address = 
(select ref(a)
FROM addresses a
WHERE a.street='209 ROCKY ROAD')
WHERE staff= 120259;

INSERT INTO staff
	(staff_id, date_of_birth, firstname, surname, salary, team_id)
VALUES
	(120588, '14-AUG-1992', 'RYAN', 'FELIX', '23,500', 000217);

UPDATE staff SET address = 
(select ref(a)
FROM addresses a
WHERE a.street='67 FLEET STREET')
WHERE staff= 120588;

INSERT INTO staff
	(staff_id, date_of_birth, firstname, surname, salary, team_id)
VALUES
	(120725, '28-JUNE-1990', 'KEVIN', 'TURNER', '23,500', 000217);

UPDATE staff SET address = 
(select ref(a)
FROM addresses a
WHERE a.street='8 APSLEY AVENUE')
WHERE staff= 120725;

INSERT INTO staff
	(staff_id, date_of_birth, firstname, surname, salary, team_id)
VALUES
	(120177, '3-APR-1991', 'HARRY', 'KANE', '23,500', 000279);

UPDATE staff SET address = 
(select ref(a)
FROM addresses a
WHERE a.street='1881 WHITE HART LANE')
WHERE staff= 120177;



--TEAMS
INSERT INTO teams
	(team_id, department)
VALUES
	( 000317, 'STEWARD');

INSERT INTO teams
	(team_id, department)
VALUES
	( 000217, 'OPERATION TEAM');

INSERT INTO teams
	(team_id, department)
VALUES
	( 000279, 'TALENT BOOKER');



--FESTIVALS
INSERT INTO festivals
	(festival_id, description, start_date, end_date, act, activity, capacity, social_media_available)
VALUES
	(010, 'TEXT01', '23-AUG-2019', '23-AUG-2019', 'DRAKE', 'MEET AND GREET', 50, 000,
		social_media_varray_type(
			social_media_type('Facebook', 'Drake meet and greet'),
			social_media_type('Twitter', '@meetdrake')));


INSERT INTO festivals
	(festival_id, description, start_date, end_date, act, activity, capacity, social_media_available)
VALUES
	(020, 'TEXT02', '7-MAY-2019', '7-MAY-2019', 'SCLUB7', 'CBBC LAND', 30, 000
social_media_varray_type
(
			social_media_type
('Facebook', 'CBBC LAND'),
			social_media_type
('Twitter', '@SCLUB7'));


INSERT INTO festivals
	(festival_id, description, start_date, end_date, act, activity, capacity, social_media_available)
VALUES
	(030, 'TEXT03', '15-OCT-2019', '15-OCT-2019', 'TAKE THAT', 'MEET AND GREET', 60, 000
social_media_varray_type
(
			social_media_type
('Facebook', 'TAKE THAT meet and greet'),
			social_media_type
('Twitter', '@TAKETHAT'));


--TICKETS
INSERT INTO tickets
	(ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES
	(191550, '65.00', 'ADULT', '23-AUG-2019', 010 );

INSERT INTO tickets
	(ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES
	(192660, '25.00', 'CHILD', '7-MAY-2019', 020 );

INSERT INTO tickets
	(ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES
	(193770, '43.00', 'ADULT', '15-OCT-2019', 030 );

INSERT INTO tickets
	(ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES
	(192680, '35.00', 'ADULT', '15-OCT-2019', 020 );

INSERT INTO tickets
	(ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES
	(191530, '40.00', 'CHILD', '23-AUG-2019', 010 );


--FESTIVAL_STAFF
INSERT INTO festival_staff
	(event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES
	(11, 120725, 010, '23-AUG-2019', '17:00', '24:00');

INSERT INTO festival_staff
	(event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES
	(22, 120259, 020, '7-MAY-2019', '10:30', '17:00');

INSERT INTO festival_staff
	(event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES
	(33, 120177, 030, '15-OCT-2019', '12:00', '23:30');

INSERT INTO festival_staff
	(event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES
	(11, 120376, 010, '23-AUG-2019', '17:00', '24:00');

INSERT INTO festival_staff
	(event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES
	(22, 120588, 020, '7-MAY-2019', '9:45', '18:30');
