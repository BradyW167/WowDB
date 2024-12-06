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