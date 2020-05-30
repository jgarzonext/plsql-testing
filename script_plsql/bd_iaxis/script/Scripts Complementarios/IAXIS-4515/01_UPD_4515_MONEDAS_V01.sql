update monedas m
  set m.ndecima = 6
where m.cmoneda in (1,6);
COMMIT
/