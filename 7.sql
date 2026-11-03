SELECT psn.name, psh.identifier, ph.identifier, psft.flavor_text FROM pokemon_species AS ps
JOIN pokemon_species_names AS psn ON ps.id = psn.pokemon_species_id
JOIN pokemon_shapes AS psh ON ps.shape_id = psh.id
JOIN pokemon_habitats AS ph ON ps.habitat_id = ph.id
JOIN pokemon_species_flavor_text AS psft ON ps.id = psft.species_id
JOIN languages AS l ON psft.language_id = l.id
AND psn.local_language_id = l.id
WHERE l.identifier = 'fr'AND psh.identifier = 'humanoid'
ORDER BY psn.name;