DROP PROCEDURE IF EXISTS CreateCharacter;

DELIMITER //

CREATE PROCEDURE CreateCharacter(IN input_character_name VARCHAR(20), IN input_class_id INT, IN input_spec_id INT, IN input_race_id INT)
BEGIN
    -- Declare variables to hold the selected data
    DECLARE class_name VARCHAR(255);
    DECLARE spec_name VARCHAR(255);
    DECLARE race_name VARCHAR(255);

    -- Retrieve the class name based on the input class ID
    SELECT Class.class_name 
    INTO class_name
    FROM Class
    WHERE Class.class_id = input_class_id;

    -- Retrieve the spec name based on the input spec ID
    SELECT Spec.spec_name
    INTO spec_name
    FROM Spec
    WHERE Spec.spec_id = input_spec_id;

    -- Retrieve the race name based on the input race ID
    SELECT Race.race_name
    INTO race_name
    FROM Race
    WHERE Race.race_id = input_race_id;

    -- Display or return the results
  	SELECT
        CONCAT(race_name, ' ', input_character_name, ' - ', spec_name, ' ', class_name) AS 'Character Info';
END//

DELIMITER ;

CALL CreateCharacter('Hanagata', 7, 21, 7);