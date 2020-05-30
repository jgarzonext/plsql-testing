set serveroutput on
DECLARE
 CURSOR C_GRUP_GAR IS
   SELECT distinct a.cgarant, a.norden norden_garp, c.cgrup
    FROM garanpro a JOIN bf_progarangrup b
     ON (a.cgarant = b.cgarant
      AND a.sproduc = b.sproduc)
     JOIN bf_detnivel c
     ON (b.codgrup = c.cgrup) 
    WHERE a.sproduc = 80038
    ORDER BY  2;
BEGIN
   FOR i IN C_GRUP_GAR LOOP
    --
    UPDATE bf_detnivel
     SET norden = i.norden_garp
    WHERE cgrup = i.cgrup;
    --
   END LOOP;
   --
   commit;
   --
EXCEPTION WHEN OTHERS THEN
 dbms_output.put_line('Error '||SQLERRM);
END;
/