-- CLASSES
INSERT INTO Class (class_id, class_name) VALUES
(1, 'Death Knight'),
(2, 'Demon Hunter'),
(3, 'Druid'),
(4, 'Evoker'),
(5, 'Hunter'),
(6, 'Mage'),
(7, 'Monk'),
(8, 'Paladin'),
(9, 'Priest'),
(10, 'Rogue'),
(11, 'Shaman'),
(12, 'Warlock'),
(13, 'Warrior');

-- SPECIALIZATIONS
INSERT INTO Spec (spec_id, class_id, spec_name, role, attack_type) VALUES
-- Death Knight
(1, 1, 'Blood', 'Tank', 'Melee'),
(2, 1, 'Frost', 'Damage', 'Melee'),
(3, 1, 'Unholy', 'Damage', 'Melee'),

-- Demon Hunter
(4, 2, 'Havoc', 'Damage', 'Melee'),
(5, 2, 'Vengeance', 'Tank', 'Melee'),

-- Druid
(6, 3, 'Balance', 'Damage', 'Ranged'),
(7, 3, 'Feral', 'Damage', 'Melee'),
(8, 3, 'Guardian', 'Tank', 'Melee'),
(9, 3, 'Restoration', 'Healer', 'Melee'),

-- Evoker
(10, 4, 'Augmentation', 'Damage', 'Ranged'),
(11, 4, 'Devastation', 'Damage', 'Ranged'),
(12, 4, 'Preservation', 'Healer', 'Ranged'),

-- Hunter
(13, 5, 'Beast Mastery', 'Damage', 'Ranged'),
(14, 5, 'Marksmanship', 'Damage', 'Ranged'),
(15, 5, 'Survival', 'Damage', 'Melee'),

-- Mage
(16, 6, 'Arcane', 'Damage', 'Ranged'),
(17, 6, 'Fire', 'Damage', 'Ranged'),
(18, 6, 'Frost', 'Damage', 'Ranged'),

-- Monk
(19, 7, 'Brewmaster', 'Tank', 'Melee'),
(20, 7, 'Mistweaver', 'Healer', 'Melee'),
(21, 7, 'Windwalker', 'Damage', 'Melee'),

-- Paladin
(22, 8, 'Holy', 'Healer', 'Melee'),
(23, 8, 'Protection', 'Tank', 'Melee'),
(24, 8, 'Retribution', 'Damage', 'Melee'),

-- Priest
(25, 9, 'Discipline', 'Healer', 'Ranged'),
(26, 9, 'Holy', 'Healer', 'Ranged'),
(27, 9, 'Shadow', 'Damage', 'Ranged'),

-- Rogue
(28, 10, 'Assassination', 'Damage', 'Melee'),
(29, 10, 'Outlaw', 'Damage', 'Melee'),
(30, 10, 'Subtlety', 'Damage', 'Melee'),

-- Shaman
(31, 11, 'Elemental', 'Damage', 'Ranged'),
(32, 11, 'Enhancement', 'Damage', 'Melee'),
(33, 11, 'Restoration', 'Healer', 'Melee'),

-- Warlock
(34, 12, 'Affliction', 'Damage', 'Ranged'),
(35, 12, 'Demonology', 'Damage', 'Ranged'),
(36, 12, 'Destruction', 'Damage', 'Ranged'),

-- Warrior
(37, 13, 'Arms', 'Damage', 'Melee'),
(38, 13, 'Fury', 'Damage', 'Melee'),
(39, 13, 'Protection', 'Tank', 'Melee');

-- RACES
INSERT INTO Race (race_id, race_name) VALUES
(1, 'Blood Elf'),
(2, 'Draenei'),
(3, 'Dracthyr'),
(4, 'Dwarf'),
(5, 'Goblin'),
(6, 'Gnome'),
(7, 'Human'),
(8, 'Night Elf'),
(9, 'Orc'),
(10, 'Pandaren'),
(11, 'Tauren'),
(12, 'Troll'),
(13, 'Undead'),
(14, 'Worgen');

-- CLASS AND RACE COMBINATIONS
INSERT INTO Class_Race (class_id, race_id) VALUES
-- Death Knight
(1, 1), -- Blood Elf
(1, 2), -- Draenei
(1, 4), -- Dwarf
(1, 5), -- Goblin
(1, 6), -- Gnome
(1, 7), -- Human
(1, 8), -- Night Elf
(1, 9), -- Orc
(1, 10), -- Pandaren
(1, 11), -- Tauren
(1, 12), -- Troll
(1, 13), -- Undead
(1, 14), -- Worgen

-- Demon Hunter
(2, 1), -- Blood Elf
(2, 8), -- Night Elf

-- Druid
(3, 8), -- Night Elf
(3, 11), -- Tauren
(3, 12), -- Troll
(3, 14), -- Worgen

-- Evoker
(4, 3), -- Dracthyr

-- Hunter
(5, 1), -- Blood Elf
(5, 2), -- Draenei
(5, 4), -- Dwarf
(5, 5), -- Goblin
(5, 6), -- Gnome
(5, 7), -- Human
(5, 8), -- Night Elf
(5, 9), -- Orc
(5, 10), -- Pandaren
(5, 11), -- Tauren
(5, 12), -- Troll
(5, 13), -- Undead
(5, 14), -- Worgen

-- Mage
(6, 1), -- Blood Elf
(6, 2), -- Draenei
(6, 4), -- Dwarf
(6, 5), -- Goblin
(6, 6), -- Gnome
(6, 7), -- Human
(6, 8), -- Night Elf
(6, 9), -- Orc
(6, 10), -- Pandaren
(6, 11), -- Tauren
(6, 12), -- Troll
(6, 13), -- Undead
(6, 14), -- Worgen

-- Monk
(7, 1), -- Blood Elf
(7, 2), -- Draenei
(7, 4), -- Dwarf
(7, 6), -- Gnome
(7, 7), -- Human
(7, 8), -- Night Elf
(7, 9), -- Orc
(7, 10), -- Pandaren
(7, 11), -- Tauren
(7, 12), -- Troll
(7, 13), -- Undead

-- Paladin
(8, 1), -- Blood Elf-
(8, 2), -- Draenei-
(8, 4), -- Dwarf-
(8, 7), -- Human-
(8, 11), -- Tauren

-- Priest
(9, 1), -- Blood Elf
(9, 2), -- Draenei
(9, 4), -- Dwarf
(9, 5), -- Goblin
(9, 6), -- Gnome
(9, 7), -- Human
(9, 8), -- Night Elf
(9, 9), -- Orc
(9, 10), -- Pandaren
(9, 11), -- Tauren
(9, 12), -- Troll
(9, 13), -- Undead
(9, 14), -- Worgen

-- Rogue
(10, 1), -- Blood Elf
(10, 2), -- Draenei
(10, 4), -- Dwarf
(10, 5), -- Goblin
(10, 6), -- Gnome
(10, 7), -- Human
(10, 8), -- Night Elf
(10, 9), -- Orc
(10, 10), -- Pandaren
(10, 11), -- Tauren
(10, 12), -- Troll
(10, 13), -- Undead
(10, 14), -- Worgen

-- Shaman
(11, 2), -- Draenei
(11, 4), -- Dwarf
(11, 5), -- Goblin
(11, 9), -- Orc
(11, 10), -- Pandaren
(11, 11), -- Tauren
(11, 12), -- Troll

-- Warlock
(12, 1), -- Blood Elf
(12, 4), -- Dwarf
(12, 5), -- Goblin
(12, 6), -- Gnome
(12, 7), -- Human
(12, 9), -- Orc
(12, 12), -- Troll
(12, 13), -- Undead
(12, 14), -- Worgen

-- Warrior
(13, 1), -- Blood Elf
(13, 2), -- Draenei
(13, 4), -- Dwarf
(13, 5), -- Goblin
(13, 6), -- Gnome
(13, 7), -- Human
(13, 8), -- Night Elf
(13, 9), -- Orc
(13, 10), -- Pandaren
(13, 11), -- Tauren
(13, 12), -- Troll
(13, 13), -- Undead
(13, 14); -- Worgen

-- SPELLS
INSERT INTO Spell (spell_name, spell_desc, spell_type) VALUES
('Arcane Torrent', 'Removes 1 beneficial effect from all enemies within 8 yards and restores X of your [resource].', 'race_spell'),
('Gift of the Naaru', 'Heals the target for 20% of their total health over 5 sec.', 'race_spell'),
('Soar', 'Muster your strength and launch into the air.', 'race_spell'),
('Tail Swipe', 'Lash out with your tail, knocking enemies within 8 yds into the air.', 'race_spell'),
('Wing Buffet', 'With a powerful flap of your wings, knock away enemies in front of you.', 'race_spell'),
('Stoneform', 'Removes all poison, disease, curse, magic, and bleed effects and reduces all physical damage taken by 10% for 8 sec.', 'race_spell'),
('Rocket Jump', 'Activates your rocket belt to jump forward.', 'race_spell'),
('Rocket Barrage', 'Launches your belt rockets at an enemy, dealing X fire damage.', 'race_spell'),
('Escape Artist', 'Escape the effects of any immobilization or movement speed reduction effect.', 'race_spell'),
('Will to Survive', 'Removes all stun effects.', 'race_spell'),
('Shadowmeld', 'Activate to slip into the shadows, reducing the chance for enemies to detect your presence. Lasts until cancelled or upon moving.', 'race_spell'),
('Blood Fury', 'Increases melee attack power by X and your spell power by Y. Lasts 15 sec.', 'race_spell'),
('Quaking Palm', 'Strikes the target with lightning speed, incapacitating them for 4 sec, and turns off your attack.', 'race_spell'),
('War Stomp', 'Stuns up to 5 enemies within 8 yds for 2 sec.', 'race_spell'),
('Berserking', 'Increases your melee, ranged, and spell haste by 15% for 10 sec.', 'race_spell'),
('Will of the Forsaken', 'Removes any Charm, Fear and Sleep effect.', 'race_spell'),
('Cannibalize', 'When activated, regenerates 7% of total health and mana every 2 sec for 10 sec. Only works on Humanoid or Undead corpses within 5 yds.', 'race_spell'),
('Running Wild', 'Drop to all fours to run as fast as a wild animal.', 'race_spell'),
('Darkflight', 'Activates your true form, increasing movement speed by 40% for 10 sec.', 'race_spell');

-- CLASS SPELLS
INSERT INTO Class_Spell (spell_id, class_id) VALUES

-- SPEC SPELLS
INSERT INTO Spec_Spell (spell_id, spec_id) VALUES

-- RACE SPELLS
INSERT INTO Race_Spell (spell_id, race_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 4),
(7, 5),
(8, 5),
(9, 6),
(10, 7),
(11, 8),
(12, 9),
(13, 10),
(14, 11),
(15, 12),
(16, 13),
(17, 13),
(18, 14),
(19, 14);

-- RAIDS
INSERT INTO Raid (raid_name) VALUES
('Nerub-ar Palace');

-- RAID PERFORMANCES
INSERT INTO Raid_Performance (raid_id, spec_id, log_date, 90th_percentile_damage, 50th_percentile_damage, 10th_percentile_damage, 90th_percentile_healing, 50th_percentile_healing, 10th_percentile_healing) VALUES
(1, 1, 2024-12-01, 30, 20, 10, 25, 15, 10);

-- PERFORMANCE HISTORIES
INSERT INTO Performance_History (raid_id, spec_id, log_start, log_end, 90th_percentile_damage, 50th_percentile_damage, 10th_percentile_damage, 90th_percentile_healing, 50th_percentile_healing, 10th_percentile_healing) VALUES
(1, 1, 2024-11-01, 2024-11-30, 30, 20, 10, 25, 15, 10);