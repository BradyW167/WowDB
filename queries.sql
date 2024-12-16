-- What are all the specializations that are ranged damage dealers?
SELECT 
	spec_name AS Specialization,
	class_name AS Class
FROM Spec s
JOIN Class c
	ON s.class_id = c.class_id
WHERE role = 'Damage' AND attack_type = 'Ranged'
ORDER BY spec_name;

-- How many different specializations are there in each role?
SELECT role, COUNT(*) AS role_count
FROM Spec
GROUP BY role;

-- What are all the spells that druids can cast?
SELECT DISTINCT spell_name, spell_desc
FROM Spell s
LEFT JOIN Class_Spell cs
    ON s.spell_id = cs.spell_id
LEFT JOIN Spec_Spell ss
    ON s.spell_id = ss.spell_id
LEFT JOIN Class c
    ON cs.class_id = c.class_id
LEFT JOIN Spec sp
    ON ss.spec_id = sp.spec_id
WHERE c.class_id = 3 OR sp.class_id = 3;

-- What unique spells does each class have?
SELECT 
	class_name AS Class,
	spell_name,
	spell_desc
FROM Spell s
JOIN Class_Spell cs
	ON s.spell_id = cs.spell_id 
JOIN Class c
	ON cs.class_id = c.class_id 
WHERE s.spell_type = 'Class_Spell';

-- What races can I be for each class?
SELECT 
    c.class_name AS Class, 
    GROUP_CONCAT(r.race_name ORDER BY r.race_name SEPARATOR ', ') AS 'Available Races'
FROM Race r
JOIN Class_Race cr
    ON r.race_id = cr.race_id
JOIN Class c
    ON cr.class_id = c.class_id
GROUP BY c.class_name;

-- What are the highest performing specializations in the Nerub-ar Palace Raid?
SELECT 
	spec_name AS Specialization,
	class_name AS Class,
	raid_name AS Raid,
	percentile_90_damage,
	percentile_50_damage,
	percentile_10_damage,
	log_date
FROM Raid_Performance
JOIN Raid
	ON Raid_Performance.raid_id = Raid.raid_id 
JOIN Spec
	ON Raid_Performance.spec_id = Spec.spec_id 
JOIN Class
	ON Spec.class_id = Class.class_id
WHERE Raid.raid_id = 1
ORDER BY (percentile_90_damage + percentile_50_damage + percentile_10_damage) / 3 DESC;

-- What are the highest performing classes in the Amirdrassil Raid?
SELECT
	Class.class_name AS Class,
    Raid.raid_name AS Raid,
    FLOOR(AVG(Raid_Performance.percentile_90_damage)) AS avg_percentile_90_damage,
    FLOOR(AVG(Raid_Performance.percentile_50_damage)) AS avg_percentile_50_damage,
    FLOOR(AVG(Raid_Performance.percentile_10_damage)) AS avg_percentile_10_damage,
    MAX(Raid_Performance.log_date) AS latest_log_date
FROM Raid_Performance
JOIN Raid
	ON Raid_Performance.raid_id = Raid.raid_id 
JOIN Spec
	ON Raid_Performance.spec_id = Spec.spec_id 
JOIN Class
	ON Spec.class_id = Class.class_id
WHERE Raid.raid_id = 2
GROUP BY Class.class_name
ORDER BY (AVG(Raid_Performance.percentile_90_damage) + 
          AVG(Raid_Performance.percentile_50_damage) + 
          AVG(Raid_Performance.percentile_10_damage)) / 3 DESC;

-- Which specializations have the highest damage average for each raid?
SELECT spec_name AS Specialization, raid_name AS 'Raid Name', avg_damage AS 'Avg Damage Record'
FROM (
		SELECT raid_id, spec_id,
			(percentile_90_damage + percentile_50_damage + percentile_10_damage) / 3 AS avg_damage
        FROM Raid_Performance
    ) AS SpecAverages
JOIN Spec s
	ON SpecAverages.spec_id = s.spec_id
JOIN Raid r
	ON SpecAverages.raid_id = r.raid_id
WHERE avg_damage = (
        SELECT
            MAX((percentile_90_damage + percentile_50_damage + percentile_10_damage) / 3)
        FROM
            Raid_Performance rp
        WHERE
            rp.raid_id = SpecAverages.raid_id
);