--------------------------------------------------------
--  DDL for Trigger SINISTRES_ESBORRATS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."SINISTRES_ESBORRATS" 
 BEFORE delete ON siniestros
 FOR EACH ROW
BEGIN
    INSERT INTO siniestros_borrados VALUES (:old.nsinies,
                                            sysdate,
                                            :old.tsinies,
                                            F_USER);
 EXCEPTION
    WHEN value_error THEN
         dbms_output.put_line(SQLERRM);
    WHEN others THEN
         dbms_output.put_line(SQLERRM);
 END;









/
ALTER TRIGGER "AXIS"."SINISTRES_ESBORRATS" ENABLE;
