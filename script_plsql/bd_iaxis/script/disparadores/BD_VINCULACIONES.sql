--------------------------------------------------------
--  DDL for Trigger BD_VINCULACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BD_VINCULACIONES" 
 BEFORE INSERT OR DELETE ON VINCULACIONES
FOR EACH ROW
DECLARE
xhisvin NUMBER;
xsperson NUMBER;
xvinclo NUMBER;
/******************************************************************************
   NAME:       BD_VINCULACIONES
   PURPOSE: llenar el histórico de vinculos en el borrado e
             informar la fecha de creación y usuaio en la creación
******************************************************************************/
BEGIN

   IF INSERTING THEN
      :NEW.cusumod := F_USER;
	  :NEW.falta := F_Sysdate;
   ELSE --si se borra
	   SELECT shisvin.NEXTVAL
	   INTO xhisvin
	   FROM DUAL;
	   --copiamos lo que habia en el historico
	   INSERT INTO HISVINCULACIONES
	     (SHISVIN, SPERSON, CVINCLO, FDESDE,FHASTA ,CUSUMOD)
	   VALUES( xhisvin,:OLD.sperson,:OLD.cvinclo,:OLD.falta,F_Sysdate,F_USER);
   END IF;
END BD_VINCULACIONES;









/
ALTER TRIGGER "AXIS"."BD_VINCULACIONES" ENABLE;
