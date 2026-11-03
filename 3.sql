SELECT t.identifier, COUNT(*) FROM types AS t
JOIN pokemon_types AS pt ON t.id = pt.type_id
GROUP BY t.identifier
ORDER BY t.identifier;