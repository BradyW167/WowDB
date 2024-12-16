DROP PROCEDURE IF EXISTS GetCharacterSpells;

DELIMITER //

CREATE PROCEDURE GetCharacterSpells(IN input_class_id INT, IN input_spec_id INT, IN input_race_id INT)
BEGIN
    -- Combine results into a single output
    SELECT 
        Spell_Name AS Spell,
        Spell_Desc AS Description,
        'Class' AS SpellType
    FROM Class
    JOIN Class_Spell
        ON Class.class_id = Class_Spell.class_id
    JOIN Spell
        ON Class_Spell.spell_id = Spell.spell_id
    WHERE Class.class_id = input_class_id

    UNION ALL

    SELECT 
        Spell_Name AS Spell,
        Spell_Desc AS Description,
        'Spec' AS SpellType
    FROM Spec
    JOIN Spec_Spell
        ON Spec.spec_id = Spec_Spell.spec_id
    JOIN Spell
        ON Spec_Spell.spell_id = Spell.spell_id
    WHERE Spec.spec_id = input_spec_id

    UNION ALL

    SELECT 
        Spell_Name AS Spell,
        Spell_Desc AS Description,
        'Race' AS SpellType
    FROM Race
    JOIN Race_Spell
        ON Race.race_id = Race_Spell.race_id
    JOIN Spell
        ON Race_Spell.spell_id = Spell.spell_id
    WHERE Race.race_id = input_race_id;
END//

DELIMITER ;

CALL GetCharacterSpells(7, 21, 7);