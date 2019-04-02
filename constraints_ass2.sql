--Primary Keys

ALTER TABLE staff
ADD CONSTRAINT pk_staff
PRIMARY KEY (staff_id);

ALTER TABLE teams
ADD CONSTRAINT pk_teams
PRIMARY KEY (team_id);

ALTER TABLE festivals
ADD CONSTRAINT pk_festivals
PRIMARY KEY (festival_id);

ALTER TABLE tickets
ADD CONSTRAINT pk_tickets
PRIMARY KEY (ticket_id);

ALTER TABLE festival_staff
ADD CONSTRAINT pk_festival_staff
PRIMARY KEY (event_id);

--Foreign Keys

ALTER TABLE staff
ADD CONSTRAINT fk_s_teams
FOREIGN KEY(team_id)
REFERENCES teams(team_id);

ALTER TABLE tickets
ADD CONSTRAINT fk_t_festivals
FOREIGN KEY(festival_id)
REFERENCES festivals(festivals_id);

ALTER TABLE festival_staff
ADD CONSTRAINT fk_f_staff  --might need to change alias for festivals staff table
FOREIGN KEY(staff_id)
REFERENCES staff(staff_id);

ALTER TABLE festival_staff
ADD CONSTRAINT fk_f_festivals --might need to change alias for festivals staff table
FOREIGN KEY(festival_id)
REFERENCES festivals(festival_id);
