SELECT
  p.name AS poke_name,
  t.trainername AS trainer_name,
  pt.pokelevel AS poke_level,
  ty1.name AS type1,
  ty2.name AS type2,
  (pt.maxhp + pt.attack + pt.defense + pt.spatk + pt.spdef + pt.speed) AS pokepower
FROM pokemon_trainer pt
JOIN pokemons p ON p.id=pt.pokemon_id
JOIN trainers t ON t.trainerID=pt.trainerID
JOIN types ty1 ON p.primary_type=ty1.id
JOIN types ty2 ON p.secondary_type=ty2.id
ORDER BY pokepower DESC;