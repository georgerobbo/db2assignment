INSERT

INSERT INTO staff(staff_id, date_of_birth, firstname, surname, salary, team_id)
VALUES(120376, '22-DEC-1992', 'ALEX', 'RICHARD', '23,500', 000317)
	address_varray_type(
	address_type(street, city, country))

STAFF
INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120376, '22-DEC-1992', 'ALEX', 'RICHARD', '20,000', 000317, '41 SOUTHQMPTON ROAD');

INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120259, '09-MAY-1994', 'VICTORIA', 'SPENCER', '25,000', 000317, '209 ROCKY ROAD');

INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120588, '14-AUG-1992', 'RYAN', 'FELIX', '22,500', 000217, '67 FLEET STREET');

INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120725, '28-JUNE-1990', 'KEVIN', 'TURNER', '19,000', 000217, '8 APSLEY AVENUE');

INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120177, '3-APR-1991', 'HARRY', 'KANE', '26,000', 000279, '1881 WHITE HART LANE');


TEAMS
INSERT INTO teams (team_id, department)
VALUES ( 000317, 'STEWARD');

INSERT INTO teams (team_id, department)
VALUES ( 000217, 'OPERATION TEAM');

INSERT INTO teams (team_id, department)
VALUES ( 000279, 'TALENT BOOKER');



FESTIVALS
INSERT INTO festivals (festival_id, description, start_date, end_date, act, activity, capacity, social_media_available)
VALUES (010, 'TEXT01', '23-AUG-2019', '23-AUG-2019', 'DRAKE', 'MEET AND GREET', 50,000,
social_media_varray_type(
			social_media_type('Facebook', 'Drake meet and greet'),
			social_media_type('Twitter', '@meetdrake')

);

INSERT INTO festivals (festival_id, description, start_date, end_date, act, activity, capacity,)
VALUES (020, 'TEXT02', '7-MAY-2019', '7-MAY-2019', 'SCLUB7', 'CBBC LAND', 30,000,
social_media_varray_type(
			social_media_type('Facebook', 'CBBC Land'),
			social_media_type('Twitter', '@CBBCland')
);

INSERT INTO festivals (festival_id, description, start_date, end_date, act, activity, capacity,)
VALUES (030, 'TEXT03', '15-OCT-2019', '15-OCT-2019', 'TAKE THAT', 'MEET AND GREET', 60,000,
social_media_varray_type(
			social_media_type('Facebook', 'Take That'),
			social_media_type('Twitter', '@TakeThat')
);


TICKETS
INSERT INTO tickets (ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES (191550, '65.00', 'ADULT', '23-AUG-2019', 010 );

INSERT INTO tickets (ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES (192660, '25.00', 'CHILD', '7-MAY-2019', 020 );

INSERT INTO tickets (ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES (193770, '43.00', 'ADULT', '15-OCT-2019', 030 );

INSERT INTO tickets (ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES (192680, '35.00', 'ADULT', '15-OCT-2019', 020 );

INSERT INTO tickets (ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES (191530, '40.00', 'CHILD', '23-AUG-2019', 010 );


FESTIVAL_STAFF
INSERT INTO festival_staff (event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES (11, 120725, 010, '23-AUG-2019', '17:00', '24:00');

INSERT INTO festival_staff (event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES (22, 120259, 020, '7-MAY-2019', '10:30', '17:00');

INSERT INTO festival_staff (event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES (33, 120177, 030, '15-OCT-2019', '12:00', '23:30');

INSERT INTO festival_staff (event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES (11, 120376, 010, '23-AUG-2019', '17:00', '24:00');

INSERT INTO festival_staff (event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES (22, 120588, 020, '7-MAY-2019', '9:45', '18:30');
