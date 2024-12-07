-- SELECT * FROM Class;

-- SELECT * FROM Race;

-- SELECT * FROM Spec;

-- SELECT * FROM Class_Race;

-- Print the name of a race with all its spells and their descriptions
SELECT race_name AS Race, spell_name, spell_desc
FROM Spell s
JOIN Race_Spell rs
	ON s.spell_id = rs.spell_id 
JOIN Race r
	ON rs.race_id = r.race_id 
WHERE s.spell_type = 'Race_Spell';

-- Print the name of a class with all its spells and their descriptions
SELECT class_name AS Class, spell_name, spell_desc
FROM Spell s
JOIN Class_Spell cs
	ON s.spell_id = cs.spell_id 
JOIN Class c
	ON cs.class_id = c.class_id 
WHERE s.spell_type = 'Class_Spell';

-- Print the name of a specialization with all its spells and their descriptions
SELECT spec_name AS Specialization, spell_name, spell_desc
FROM Spell s
JOIN Spec_Spell ss
	ON s.spell_id = ss.spell_id 
JOIN Spec sp
	ON ss.spec_id = sp.spec_id 
WHERE s.spell_type = 'Spec_Spell';

-- Print dps for each spec
SELECT class_name AS Class, spec_name AS Specialization, raid_name AS Raid, log_date, percentile_90_damage, percentile_50_damage, percentile_10_damage
FROM Raid_Performance
JOIN Raid
	ON Raid_Performance.raid_id = Raid.raid_id 
JOIN Spec
	ON Raid_Performance.spec_id = Spec.spec_id 
JOIN Class
	ON Spec.class_id = Class.class_id;