SELECT p.identifier, a.identifier FROM pokemon AS p
JOIN pokemon_abilities AS pa ON p.id = pa.pokemon_id
JOIN abilities AS a ON pa.ability_id = a.id
WHERE pa.is_hidden = TRUE
ORDER BY p.identifier
LIMIT 10;