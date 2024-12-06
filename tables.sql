DROP TABLE IF EXISTS Raid_Performance;
DROP TABLE IF EXISTS Raid;
DROP TABLE IF EXISTS Spec_Spell;
DROP TABLE IF EXISTS Class_Spell;
DROP TABLE IF EXISTS Race_Spell;
DROP TABLE IF EXISTS Spell;
DROP TABLE IF EXISTS Class_Race;
DROP TABLE IF EXISTS Spec;
DROP TABLE IF EXISTS Class;
DROP TABLE IF EXISTS Race;

CREATE TABLE Race
(
  race_id INT NOT NULL,
  race_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (race_id)
);

CREATE TABLE Class
(
  class_id INT NOT NULL,
  class_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (class_id)
);

CREATE TABLE Spec
(
  spec_id INT NOT NULL,
  class_id INT NOT NULL,
  spec_name VARCHAR(20) NOT NULL,
  role ENUM('Damage', 'Healer', 'Tank') NOT NULL,
  attack_type ENUM('Melee', 'Ranged') NOT NULL,
  PRIMARY KEY (spec_id),
  FOREIGN KEY (class_id) REFERENCES Class(class_id)
);

CREATE TABLE Class_Race
(
  class_id INT NOT NULL,
  race_id INT NOT NULL,
  PRIMARY KEY (class_id, race_id),
  FOREIGN KEY (class_id) REFERENCES Class(class_id),
  FOREIGN KEY (race_id) REFERENCES Race(race_id)
);

CREATE TABLE Spell
(
  spell_id INT NOT NULL,
  spell_name VARCHAR(50) NOT NULL,
  spell_desc VARCHAR(200) NOT NULL,
  spell_type ENUM('Class_Spell', 'Race_Spell', 'Spec_Spell') NOT NULL,
  PRIMARY KEY (spell_id)
);

CREATE TABLE Race_Spell
(
  spell_id INT NOT NULL,
  race_id INT NOT NULL,
  PRIMARY KEY (spell_id),
  FOREIGN KEY (spell_id) REFERENCES Spell(spell_id),
  FOREIGN KEY (race_id) REFERENCES Race(race_id)
);

CREATE TABLE Class_Spell
(
  spell_id INT NOT NULL,
  class_id INT NOT NULL,
  PRIMARY KEY (spell_id),
  FOREIGN KEY (spell_id) REFERENCES Spell(spell_id),
  FOREIGN KEY (class_id) REFERENCES Class(class_id)
);

CREATE TABLE Spec_Spell
(
  spell_id INT NOT NULL,
  spec_id INT NOT NULL,
  PRIMARY KEY (spell_id),
  FOREIGN KEY (spell_id) REFERENCES Spell(spell_id),
  FOREIGN KEY (spec_id) REFERENCES Spec(spec_id)
);

CREATE TABLE Raid
(
  raid_id INT NOT NULL,
  raid_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (raid_id)
);

CREATE TABLE Raid_Performance
(
  raid_id INT NOT NULL,
  spec_id INT NOT NULL,
  log_date DATE NOT NULL,
  percentile_90_damage INT NOT NULL,
  percentile_50_damage INT NOT NULL,
  percentile_10_damage INT NOT NULL,
  PRIMARY KEY (raid_id, spec_id),
  FOREIGN KEY (raid_id) REFERENCES Raid(raid_id),
  FOREIGN KEY (spec_id) REFERENCES Spec(spec_id)
);