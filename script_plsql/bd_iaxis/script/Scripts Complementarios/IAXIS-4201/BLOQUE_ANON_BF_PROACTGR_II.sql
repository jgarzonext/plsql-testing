set serveroutput on
DECLARE
 CURSOR c_bf_proact IS
   SELECT distinct a.cactivi, a.norden nordengpro, b.norden nordengru, a.cgarant,b.cgrup,
       (SELECT tgrup FROM bf_desgrup WHERE cgrup = b.cgrup AND cidioma = 8) as tgrup,
       a.sproduc
from GARANPRO a JOIN bf_proactgrup b
  ON ( a.sproduc = b.sproduc)
  JOIN bf_progarangrup c
  ON (a.cgarant = c.cgarant
   AND a.sproduc = c.sproduc
   AND b.cgrup = c.codgrup)
WHERE a.SPRODUC IN (80044,80040,80043)
ORDER BY a.norden,a.cactivi;
--
BEGIN
   FOR i IN c_bf_proact LOOP
    --
    UPDATE bf_proactgrup
     SET norden = i.nordengpro
    WHERE cgrup = i.cgrup
      AND sproduc = i.sproduc
      AND norden = i.nordengru;
    --
   END LOOP;
   --
   commit;
   --
EXCEPTION WHEN OTHERS THEN
 dbms_output.put_line('Error '||SQLERRM);
END;
/