--INSERT

--STAFF
INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120376, '22-DEC-1992', 'ALEX', 'RICHARD', '23,500', 000317, '41 SOUTHQMPTON ROAD');

INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120259, '09-MAY-1994', 'VICTORIA', 'SPENCER', '23,500', 000317, '209 ROCKY ROAD');

INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120588, '14-AUG-1992', 'RYAN', 'FELIX', '23,500', 000217, '67 FLEET STREET');

INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120725, '28-JUNE-1990', 'KEVIN', 'TURNER', '23,500', 000217, '8 APSLEY AVENUE');

INSERT INTO staff (staff_id, date_of_birth, firstname, surname, salary, team_id, address)
VALUES (120177, '3-APR-1991', 'HARRY', 'KANE', '23,500', 000279, '1881 WHITE HART LANE');

--TEAMS
INSERT INTO teams (team_id, department)
VALUES ( 000317, '');

INSERT INTO teams (team_id, department)
VALUES ( 000217, '');

INSERT INTO teams (team_id, department)
VALUES ( 000279, '');

INSERT INTO teams (team_id, department)
VALUES ( 'BOSTON', '');

INSERT INTO teams (team_id, department)
VALUES ( 'BOSTON', 'USA');

--FESTIVALS
INSERT INTO festivals (festival_id, description, start_date, end_date, act, activity, capacity,)
VALUES (, '', '', '', '', '', '');


--TICKETS
INSERT INTO tickets (ticket_id, price, ticket_type, date_of_festival, festival_id)
VALUES (, '', '', '', );

--FESTIVAL_STAFF
INSERT INTO festival_staff (event_id, staff_id, festival_id, date_of_event, shift_start, shift_end)
VALUES (, , , '', '', '');
