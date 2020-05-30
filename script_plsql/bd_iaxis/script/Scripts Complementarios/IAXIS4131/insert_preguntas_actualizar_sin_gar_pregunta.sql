DECLARE
pcpregun        NUMBER:= 9749;
   CURSOR c_prod
   IS
     select rowNum idcon  ,cgarant,8, t from ( SELECT  DISTINCT CGARANT,8,'Valor Pretension '||tgarant as t FROM garanpro 
join garangen using(cgarant)
WHERE cgarant IN (SELECT DISTINCT (cgarant) FROM Sin_Gar_Pregunta) AND CRAMO = 801 and cidioma =8 order by cgarant asc)jj;

BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
      
      
Insert into CODIPREGUN (CPREGUN,CTIPPRE,CTIPPOR,CTIPGRU,TCONSULTA,TIMAGEN) values (i.idcon+pcpregun,3,null,null,null,null);
Insert into PREGUNTAS (CPREGUN,CIDIOMA,TPREGUN)
SELECT DISTINCT i.idcon+pcpregun,8,'Valor Pretension '||tgarant FROM garanpro 
join garangen using(cgarant)
WHERE cgarant IN (SELECT DISTINCT (cgarant) FROM Sin_Gar_Pregunta) AND CRAMO = 801 and cidioma =8 and cgarant=i.cgarant;
--select * from sin_gar_pregunta where cgarant in (select distinct (cgarant) from garanpro where cramo = 801) order by cgarant and cgarant=7001;
update sin_gar_pregunta set cpregun=i.idcon+pcpregun where cgarant in (select distinct (cgarant) from garanpro where cramo = 801) and cgarant=i.cgarant;
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
   END LOOP;

   COMMIT;
END;
/