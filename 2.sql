SELECT p.identifier FROM pokemon AS p
JOIN pokemon_types AS pt ON p.id = pt.pokemon_id
JOIN types AS t ON pt.type_id = t.id
GROUP BY p.identifier
HAVING COUNT(DISTINCT t.identifier) = 2
ORDER BY p.identifier;