SELECT COUNT(*) FROM pokemon AS p
JOIN pokemon_abilities AS pa ON p.id = pa.pokemon_id
JOIN pokemon_species AS ps ON p.species_id = ps.id
WHERE ps.is_legendary = TRUE AND pa.is_hidden = TRUE;