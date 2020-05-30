UPDATE fin_pais_riesgo f
   SET f.nanio_efecto = '2018'
 WHERE f.nmovimi = (SELECT MAX(f1.nmovimi) FROM fin_pais_riesgo f1 WHERE f1.cpais = f.cpais)
   AND f.nanio_efecto IS NULL;
DELETE fin_pais_riesgo f WHERE f.nanio_efecto IS NULL;
COMMIT
/
