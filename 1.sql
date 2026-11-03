SELECT a.identifier FROM pokemon AS a
JOIN pokemon_species AS b ON a.species_id = b.id
WHERE b.is_legendary = TRUE
ORDER BY a.identifier