set serveroutput on
DECLARE
 CURSOR c_bf_proact IS
   SELECT distinct a.cgrup, a.norden, b.norden nordendt,a.sproduc
  FROM bf_proactgrup a JOIN  bf_detnivel B
    ON (A.CGRUP = B.CGRUP)
WHERE a.cactivi = 0
AND a.sproduc BETWEEN 80038 AND 80044; 
BEGIN
   FOR i IN c_bf_proact LOOP
    --
    UPDATE bf_proactgrup
     SET norden = i.nordendt
    WHERE cgrup = i.cgrup
      AND sproduc = i.sproduc;
    --
   END LOOP;
   --
   commit;
   --
EXCEPTION WHEN OTHERS THEN
 dbms_output.put_line('Error '||SQLERRM);
END;
/