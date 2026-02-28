USE fifa_world_cup_2024_2025;
SELECT  seasonType,
eventId,
teamId,
playId, 
 athleteId,
participant AS athlete_name, 
playOrder, 
period,
CASE 
WHEN shortText LIKE '%Yellow Card%' THEN shortText
END AS 'Yellow Card',
CASE 
WHEN shortText LIKE '%Red Card%' THEN shortText
END AS 'Red Card',
CASE 
WHEN shortText LIKE '%Goal%' THEN shortText
END AS 'Goal',
CASE 
WHEN shortText LIKE '%Substitution%' THEN shortText
END AS 'Substitution',
clockDisplayValue
FROM plays_2025_fifa_world_u17 
