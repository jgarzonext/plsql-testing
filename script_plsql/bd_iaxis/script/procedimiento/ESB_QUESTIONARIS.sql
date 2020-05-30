--------------------------------------------------------
--  DDL for Procedure ESB_QUESTIONARIS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."ESB_QUESTIONARIS" (pdata IN OUT date,
            nesb OUT NUMBER, num_err OUT NUMBER) IS
   vsproces NUMBER;
   vnnumlin NUMBER := NULL;
   nerror   NUMBER := 0;
   errrorprocessos EXCEPTION;
BEGIN
   nerror := f_procesini(F_USER,1,'ESB_QUESTIONARIS','Esborrar qüestionaris antics',vsproces);
   COMMIT;

   IF pdata IS NULL THEN
      pdata := TRUNC(sysdate);
   END IF;

   DELETE CUESTIONARIOS
   WHERE TRUNC(FCUESTI) < pdata-30;

   nesb := SQL%ROWCOUNT;

   nerror := f_proceslin(vsproces,to_char(nesb)||' qüestionaris esborrats',0,vnnumlin);
   IF nerror <> 0 THEN
      RAISE errrorprocessos;
   END IF;

   nerror := f_procesfin(vsproces,0);
   COMMIT;

EXCEPTION
   WHEN errrorprocessos THEN
      ROLLBACK;
      num_err := nerror;
      nerror := f_procesfin(vsproces,nerror);
      COMMIT;

   WHEN OTHERS THEN
      ROLLBACK;
      nerror := f_proceslin(vsproces,'Error inesperat esborrant qüestionaris',0,vnnumlin);
      nerror := f_procesfin(vsproces,sqlcode);
      COMMIT;
END ESB_QUESTIONARIS;
 
 

/

  GRANT EXECUTE ON "AXIS"."ESB_QUESTIONARIS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."ESB_QUESTIONARIS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."ESB_QUESTIONARIS" TO "PROGRAMADORESCSI";
