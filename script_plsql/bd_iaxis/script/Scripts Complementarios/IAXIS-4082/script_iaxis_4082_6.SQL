/* Formatted on 2019/10/24 15:42 (Formatter Plus v4.8.8) */
DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc, cgarant
        FROM garanpro
       WHERE sproduc IN (SELECT sproduc
                           FROM productos
                          WHERE cramo = 802)
                        
                          ;
BEGIN
   FOR i IN c_prod
   LOOP
      UPDATE pregunprogaran
         SET tprefor =
                'pac_propio_albsgt_conf.f_recuperar_tasa_convenio(-1, 9000007,3333, 1,'||i.sproduc||',1,1,'||i.cgarant||')',
             cpretip = 3
       WHERE cpregun = 2701
         AND sproduc = i.sproduc
         AND cactivi = 1
         AND cgarant = i.cgarant;
   END LOOP;

   COMMIT;
END;
/

BEGIN
   UPDATE codipregun
      SET tconsulta =
             'SELECT DISTINCT (c.idconvcomesp), c.tdesconv
  FROM convcomisesp c
    WHERE EXISTS (SELECT 1
                 FROM convcomespprod p
                WHERE p.idconvcomesp = c.idconvcomesp
                  AND p.sproduc = :PMT_SPRODUC)
   AND EXISTS (SELECT 1
                 FROM convcomespage a
                WHERE a.idconvcomesp = c.idconvcomesp
                  AND a.cagente = :PMT_CAGENTE)
   AND EXISTS (SELECT 1
                 FROM convcomesptom t
                WHERE t.idconvcomesp = c.idconvcomesp AND t.sperson = :PMT_ASEGURADOPER)
   AND f_sysdate BETWEEN c.finivig AND nvl(c.ffinvig, f_sysdate)
   AND :PMT_CACTIVI = 1 
   union
   SELECT DISTINCT (c.idconvcomesp), c.tdesconv
  FROM convcomisesp c
    WHERE EXISTS (SELECT 1
                 FROM convcomespprod p
                WHERE p.idconvcomesp = c.idconvcomesp
                  AND p.sproduc = :PMT_SPRODUC)
   AND EXISTS (SELECT 1
                 FROM convcomespage a
                WHERE a.idconvcomesp = c.idconvcomesp
                  AND a.cagente = :PMT_CAGENTE)
                  AND EXISTS (SELECT 1
                 FROM convcomesptom t
                WHERE t.idconvcomesp = c.idconvcomesp AND t.sperson = (select sperson from per_personas where nnumide = (select trespue from estpregunpolseg where sseguro = :PMT_SSEGURO and cpregun = 2912)))                             

   AND f_sysdate BETWEEN c.finivig AND nvl(c.ffinvig, f_sysdate)
   AND :PMT_CACTIVI = 1 '
    WHERE cpregun = 2913;

   COMMIT;
END;
/