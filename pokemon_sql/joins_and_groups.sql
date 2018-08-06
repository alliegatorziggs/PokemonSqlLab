SELECT COUNT(id) FROM pokemon.pokemons WHERE secondary_type IS NOT NULL;

SELECT p.name, t.name
FROM pokemon.pokemons p
INNER JOIN pokemon.types t
ON p.primary_type=t.id;

SELECT p.name, t.name
FROM types t
INNER JOIN pokemons p
ON p.secondary_type=t.id
WHERE p.name="Rufflet";

SELECT p.name
FROM pokemons p
INNER JOIN pokemon_trainer pt
ON pt.pokemon_id=p.id
WHERE pt.trainerID=303;

SELECT COUNT(p.id)
FROM pokemons p
INNER JOIN types t
ON p.secondary_type=t.id
WHERE t.name = 'poison';

SELECT pt.trainerID, COUNT(p.id)
FROM pokemons p
INNER JOIN pokemon_trainer pt
ON p.id=pt.pokemon_id
WHERE pt.pokelevel=100
GROUP BY pt.trainerID;

SELECT COUNT(*) FROM (
  SELECT COUNT(pokemon_id) lonelypokes
  FROM pokemon_trainer
  GROUP BY pokemon_id
  HAVING COUNT(pokemon_id) = 1
) lonelypokescount;

