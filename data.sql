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
INSERT INTO Spell (spell_id, spell_name, spell_desc, spell_type) VALUES
-- RACE SPELLS
(1, 'Arcane Torrent', 'Removes 1 beneficial effect from all enemies within 8 yards and restores X of your [resource].', 'race_spell'),
(2, 'Gift of the Naaru', 'Heals the target for 20% of their total health over 5 sec.', 'race_spell'),
(3, 'Soar', 'Muster your strength and launch into the air.', 'race_spell'),
(4, 'Tail Swipe', 'Lash out with your tail, knocking enemies within 8 yds into the air.', 'race_spell'),
(5, 'Wing Buffet', 'With a powerful flap of your wings, knock away enemies in front of you.', 'race_spell'),
(6, 'Stoneform', 'Removes all poison, disease, curse, magic, and bleed effects and reduces all physical damage taken by 10% for 8 sec.', 'race_spell'),
(7, 'Rocket Jump', 'Activates your rocket belt to jump forward.', 'race_spell'),
(8, 'Rocket Barrage', 'Launches your belt rockets at an enemy, dealing X fire damage.', 'race_spell'),
(9, 'Escape Artist', 'Escape the effects of any immobilization or movement speed reduction effect.', 'race_spell'),
(10, 'Will to Survive', 'Removes all stun effects.', 'race_spell'),
(11, 'Shadowmeld', 'Activate to slip into the shadows, reducing the chance for enemies to detect your presence. Lasts until cancelled or upon moving.', 'race_spell'),
(12, 'Blood Fury', 'Increases melee attack power by X and your spell power by Y. Lasts 15 sec.', 'race_spell'),
(13, 'Quaking Palm', 'Strikes the target with lightning speed, incapacitating them for 4 sec, and turns off your attack.', 'race_spell'),
(14, 'War Stomp', 'Stuns up to 5 enemies within 8 yds for 2 sec.', 'race_spell'),
(15, 'Berserking', 'Increases your melee, ranged, and spell haste by 15% for 10 sec.', 'race_spell'),
(16, 'Will of the Forsaken', 'Removes any Charm, Fear and Sleep effect.', 'race_spell'),
(17, 'Cannibalize', 'When activated, regenerates 7% of total health and mana every 2 sec for 10 sec. Only works on Humanoid or Undead corpses within 5 yds.', 'race_spell'),
(18, 'Running Wild', 'Drop to all fours to run as fast as a wild animal.', 'race_spell'),
(19, 'Darkflight', 'Activates your true form, increasing movement speed by 40% for 10 sec.', 'race_spell'),

-- CLASS SPELLS
(20, 'Death Grip', 'Harnesses the energy that surrounds and binds all matter, drawing the target toward you.', 'class_spell'),
(21, 'Metamorphosis', 'Leap into the air and land with explosive force, you are transformed into a hellish demon for 24 sec.', 'class_spell'),
(22, 'Cat Form', 'Shapeshift into Cat Form, increasing auto-attack damage by 40%, movement speed by 30%, granting protection from Polymorph effects, and reducing falling damage.', 'class_spell'),
(23, 'Hover', 'Launch yourself and gain 30% increased movement speed for 6 sec. Allows Evoker spells to be cast while moving.', 'class_spell'),
(24, 'Hunter''s Mark', 'Apply Hunter''s Mark to the target, causing the target to always be seen and tracked by the Hunter.', 'class_spell'),
(25, 'Blink', 'Teleports you forward 20 yds or until reaching an obstacle, and frees you from all stuns and bonds.', 'class_spell'),
(26, 'Leg Sweep', 'Knocks down all enemies within 6 yards, stunning them for 3 sec.', 'class_spell'),
(27, 'Hammer of Justice', 'Stuns the target for 6 sec.', 'class_spell'),
(28, 'Power Infusion', 'Infuses the target with power for 20 sec, increasing haste by 25%.', 'class_spell'),
(29, 'Vanish', 'Allows you to vanish from sight, entering stealth while in combat.', 'class_spell'),
(30, 'Lightning Bolt', 'Hurls a bolt of lightning at the target, dealing Nature damage.', 'class_spell'),
(31, 'Soulstone', 'Stores the soul of the target party or raid member, allowing resurrection upon death.', 'class_spell'),
(32, 'Charge', 'Charge to an enemy, dealing Physical damage, rooting it for 1 sec.', 'class_spell'),

-- SPEC SPELLS
(33, 'Death Strike', 'Strikes the target with a powerful blow, healing the Death Knight.', 'Spec_Spell'),
(34, 'Howling Blast', 'Unleashes a blast of frost energy, dealing damage to enemies in the area.', 'Spec_Spell'),
(35, 'Scourge Strike', 'Strikes the enemy with dark magic, dealing damage and applying a debuff.', 'Spec_Spell'),
(36, 'Chaos Strike', 'A powerful strike that deals Chaos damage and generates Fury.', 'Spec_Spell'),
(37, 'Shear', 'A vicious swipe that rends the target, generating Pain for the Demon Hunter.', 'Spec_Spell'),
(38, 'Starsurge', 'A powerful burst of cosmic energy that deals damage to your target.', 'Spec_Spell'),
(39, 'Rip', 'Tears into the target, causing them to bleed over time.', 'Spec_Spell'),
(40, 'Ironfur', 'Increases the Druid’s armor, reducing incoming damage.', 'Spec_Spell'),
(41, 'Rejuvenation', 'Heals the target over time with a regenerative spell.', 'Spec_Spell'),
(42, 'Augment', 'Empowers an ally, increasing their damage dealt for a short period.', 'Spec_Spell'),
(43, 'Pyre', 'Deals Fire damage to enemies in an area and burns them over time.', 'Spec_Spell'),
(44, 'Living Flame', 'Heals an ally with a burst of flame that can also deal damage to enemies.', 'Spec_Spell'),
(45, 'Bestial Wrath', 'Increases the damage dealt by your pet and yourself.', 'Spec_Spell'),
(46, 'Aimed Shot', 'Fires a precise shot that deals high damage to a target.', 'Spec_Spell'),
(47, 'Wildfire Bomb', 'Throws a bomb that explodes and deals Fire damage to enemies.', 'Spec_Spell'),
(48, 'Arcane Blast', 'Hurls a bolt of arcane energy at the target.', 'Spec_Spell'),
(49, 'Fireball', 'Hurls a fiery ball that causes Fire damage.', 'Spec_Spell'),
(50, 'Frostbolt', 'Fires a bolt of icy energy at the target, causing Frost damage.', 'Spec_Spell'),
(51, 'Keg Smash', 'Smashes the enemy with your keg, dealing damage and increasing your threat.', 'Spec_Spell'),
(52, 'Vivify', 'Heals an ally with a quick burst of healing energy.', 'Spec_Spell'),
(53, 'Fists of Fury', 'Unleashes a flurry of blows to deal massive damage to nearby enemies.', 'Spec_Spell'),
(54, 'Holy Light', 'Heals an ally with a burst of holy energy.', 'Spec_Spell'),
(55, 'Shield of the Righteous', 'Blocks damage and deals damage to nearby enemies.', 'Spec_Spell'),
(56, 'Templar''s Verdict', 'A powerful strike that deals Holy damage to the target.', 'Spec_Spell'),
(57, 'Power Word: Shield', 'Shields the target with a barrier, absorbing damage.', 'Spec_Spell'),
(58, 'Flash Heal', 'Heals the target for a large amount instantly.', 'Spec_Spell'),
(59, 'Shadow Word: Pain', 'Deals Shadow damage over time to the target.', 'Spec_Spell'),
(60, 'Mutilate', 'Strikes the target with both weapons, dealing Physical damage.', 'Spec_Spell'),
(61, 'Sinister Strike', 'Strikes the target with a quick slash, generating combo points.', 'Spec_Spell'),
(62, 'Backstab', 'Stabs the target from behind, dealing high damage.', 'Spec_Spell'),
(63, 'Earthquake', 'Shakes the ground beneath your enemies, dealing massive Nature damage.', 'Spec_Spell'),
(64, 'Stormstrike', 'Strikes the target with both weapons, dealing Physical and Nature damage.', 'Spec_Spell'),
(65, 'Chain Heal', 'Heals the target and bounces to heal additional nearby allies.', 'Spec_Spell'),
(66, 'Agony', 'Deals increasing damage over time to the target.', 'Spec_Spell'),
(67, 'Summon Demon', 'Summons a demon to fight for the Warlock.', 'Spec_Spell'),
(68, 'Chaos Bolt', 'Fires a bolt of chaotic energy, dealing high Fire damage.', 'Spec_Spell'),
(69, 'Mortal Strike', 'A vicious strike that reduces healing received by the target.', 'Spec_Spell'),
(70, 'Bloodthirst', 'Strikes the enemy with fury, healing you for a portion of the damage dealt.', 'Spec_Spell'),
(71, 'Shield Slam', 'Slams the target with your shield, dealing damage and generating threat.', 'Spec_Spell');

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

-- CLASS SPELLS
INSERT INTO Class_Spell (spell_id, class_id) VALUES
(20, 1),
(21, 2),
(22, 3),
(23, 4),
(24, 5),
(25, 6),
(26, 7),
(27, 8),
(28, 9),
(29, 10),
(30, 11),
(31, 12),
(32, 13);

-- SPEC SPELLS
INSERT INTO Spec_Spell (spell_id, spec_id) VALUES
(33, 1),
(34, 2),
(35, 3),
(36, 4),
(37, 5),
(38, 6),
(39, 7),
(40, 8),
(41, 9),
(42, 10),
(43, 11),
(44, 12),
(45, 13),
(46, 14),
(47, 15),
(48, 16),
(49, 17),
(50, 18),
(51, 19),
(52, 20),
(53, 21),
(54, 22),
(55, 23),
(56, 24),
(57, 25),
(58, 26),
(59, 27),
(60, 28),
(61, 29),
(62, 30),
(63, 31),
(64, 32),
(65, 33),
(66, 34),
(67, 35),
(68, 36),
(69, 37),
(70, 38),
(71, 39);

-- RAIDS
INSERT INTO Raid (raid_id, raid_name) VALUES
(1, 'Nerub-ar Palace'),
(2, 'Amirdrassil, the Dream''s Hope');

-- RAID PERFORMANCES
INSERT INTO Raid_Performance (raid_id, spec_id, log_date, percentile_90_damage, percentile_50_damage, percentile_10_damage) VALUES
-- Nerub-ar Palace
(1, 2, '2024-12-06', 1512992.62, 1295132.04, 1042864.81),
(1, 3, '2024-12-06', 145700.83, 1260658.61, 1011261.94),
(1, 4, '2024-12-06', 1515174.39, 1286212.79, 1004567.51),
(1, 6, '2024-12-06', 1487592.17, 1290971.68, 927113.15),
(1, 7, '2024-12-06', 1512333.66, 1262938.82, 921749.43),
(1, 10, '2024-12-06', 1404087.89, 1296318.82, 961231.44),
(1, 11, '2024-12-06', 1517112.71, 1182962.28, 887182.49),
(1, 13, '2024-12-06', 1530320.22, 1377324.51, 991670.95),
(1, 14, '2024-12-06', 1506398.26, 1311045.67, 989023.88),
(1, 15, '2024-12-06', 1603103.25, 1286367.80, 915129.52),
(1, 16, '2024-12-06', 1522502.04, 1369803.91, 1058069.27),
(1, 17, '2024-12-06', 1579788.97, 1348087.15, 999669.63),
(1, 18, '2024-12-06', 1601356.89, 1314004.74, 994894.50),
(1, 21, '2024-12-06', 1517318.97, 1282802.86, 951694.69),
(1, 24, '2024-12-06', 1565340.00, 1350337.75, 1048178.90),
(1, 27, '2024-12-06', 1526548.54, 1300696.44, 919814.84),
(1, 28, '2024-12-06', 1592490.68, 1393817.50, 1114330.85),
(1, 29, '2024-12-06', 1595932.29, 1392780.66, 1113154.99),
(1, 30, '2024-12-06', 1626298.04, 1346822.39, 1058373.99),
(1, 31, '2024-12-06', 1627532.96, 1374306.97, 1080623.95),
(1, 32, '2024-12-06', 1647228.35, 1309210.03, 976379.81),
(1, 34, '2024-12-06', 1494090.53, 1377326.41, 1053874.28),
(1, 35, '2024-12-06', 1534524.68, 1325800.04, 948436.04),
(1, 36, '2024-12-06', 1598642.33, 1292860.05, 943538.21),
(1, 37, '2024-12-06', 1555972.33, 1353595.11, 1007762.74),
(1, 38, '2024-12-06', 1585780.70, 1343304.38, 960621.70),

-- Amirdrassil
(2, 2, '2024-01-15', 238980.50, 202310.22, 154648.52),
(2, 3, '2024-01-15', 233422.19, 199705.76, 151885.48),
(2, 4, '2024-01-15', 256658.62, 226471.55, 182408.46),
(2, 6, '2024-01-15', 240860.08, 209276.48, 155786.22),
(2, 7, '2024-01-15', 227409.12, 198757.89, 148022.60),
(2, 10, '2024-01-15', 249021.73, 216260.14, 163639.57),
(2, 11, '2024-01-15', 216829.50, 182488.71, 142046.77),
(2, 13, '2024-01-15', 250616.81, 218386.04, 170425.09),
(2, 14, '2024-01-15', 242805.76, 210683.98, 166742.20),
(2, 15, '2024-01-15', 232585.15, 204073.76, 137058.12),
(2, 16, '2024-01-15', 254506.78, 220283.46, 169755.82),
(2, 17, '2024-01-15', 252178.54, 216680.09, 165588.60),
(2, 18, '2024-01-15', 248171.17, 213499.91, 153888.58),
(2, 21, '2024-01-15', 247251.15, 214025.04, 164281.39),
(2, 24, '2024-01-15', 235859.20, 208273.60, 175651.90),
(2, 27, '2024-01-15', 236732.82, 203037.41, 142484.01),
(2, 28, '2024-01-15', 261371.93, 228135.11, 189975.40),
(2, 29, '2024-01-15', 248863.77, 218625.39, 181393.40),
(2, 30, '2024-01-15', 248521.37, 218177.82, 177616.17),
(2, 31, '2024-01-15', 243766.73, 215253.84, 175845.37),
(2, 32, '2024-01-15', 242455.61, 211578.10, 167742.15),
(2, 34, '2024-01-15', 266055.80, 235581.17, 193894.29),
(2, 35, '2024-01-15', 245183.95, 215761.50, 174852.43),
(2, 36, '2024-01-15', 242619.71, 209659.28, 154074.50),
(2, 37, '2024-01-15', 247113.82, 218003.51, 175449.78),
(2, 38, '2024-01-15', 232100.70, 203155.62, 150887.05);