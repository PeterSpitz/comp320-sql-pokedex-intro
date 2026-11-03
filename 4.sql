SELECT DISTINCT ps.identifier FROM pokemon_species AS ps
JOIN pokemon_habitats AS h ON ps.habitat_id = h.id
JOIN pokemon_egg_groups AS eg ON ps.id = eg.species_id
JOIN egg_groups AS eg2 ON eg.egg_group_id = eg2.id
WHERE h.identifier = 'urban' OR eg2.identifier = 'humanshape'
ORDER BY ps.identifier;