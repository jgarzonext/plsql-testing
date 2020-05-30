--------------------------------------------------------
--  DDL for Function F_ACTUPROCONT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_ACTUPROCONT" (xcprogra IN VARCHAR2, xcempres IN NUMBER)
  RETURN NUMBER authid current_user IS
--
-- Actualizar la pr�xima ejecuci�n de un programa de contabilizaci�n en funci�n
-- de el periodo vigente. (valor fijo: 145)
--
-- Librer�a: ALLIBADM
BEGIN
  UPDATE procont
     SET fultimo = trunc(sysdate),                                       -- Periodicidad:
         fproxim = trunc(decode(cperiod,1,trunc(sysdate) + 1,            -- diaria
                                        2,trunc(sysdate) + 2,            -- cada 2 d�as
                                        3,trunc(sysdate) + 7,            -- semanal
                                        4,add_months(trunc(sysdate),1),  -- mensual
                                        5,add_months(trunc(sysdate),3),  -- trimestral
                                        6,add_months(trunc(sysdate),12), -- anual
                                        null))
   WHERE cprogra = xcprogra
     AND cempres = xcempres;
  RETURN 0;
EXCEPTION
  WHEN OTHERS THEN
    RETURN 107813; -- error en la actualizaci�n del siguiente proceso.
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_ACTUPROCONT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_ACTUPROCONT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_ACTUPROCONT" TO "PROGRAMADORESCSI";
