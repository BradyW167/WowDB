DELIMITER $$

CREATE TRIGGER after_spell_insert
AFTER INSERT ON Spell
FOR EACH ROW
BEGIN
    CASE NEW.spell_type
        WHEN 'class_spell' THEN
            INSERT INTO Class_Spell (spell_id, class_id) VALUES (NEW.id, 'DefaultClass');
        WHEN 'spec_spell' THEN
            INSERT INTO Spec_Spell (spell_id, spec_id) VALUES (NEW.id, 'DefaultSpec');
        WHEN 'race_spell' THEN
            INSERT INTO Race_Spell (spell_id, race_id) VALUES (NEW.id, 'DefaultRace');
    END CASE;
END$$

DELIMITER ;