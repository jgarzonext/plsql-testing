/* Formatted on 13/04/2019 07:00 (Formatter Plus v4.8.8)
/* **************************** 14/04/2019  07:00 **********************************************************************
    Versión         01.
    Desarrollador   Fabrica Software INFORCOL
    Fecha           13/05/2020
    Actualzacion    13/05/2020
    Descripcion     Reaseguro Cuadros Facultativos y Depositos en Prima
                    Creacion de trigger para alimentar las columnas ireserv y iresrea de la tabla de cuadro facultativo - CUASEFAC
                    Estas columnas corresponde al valor de retencion a cargo de Confianza y el Reasegurador
                    Se consideran cgenera IN (3,4) debido que solo aplica para nueva produccion o suplementos
***********************************************************************************************************************/
CREATE OR REPLACE TRIGGER TRG_CESIONESREA_RET
   AFTER INSERT
   ON cesionesrea
   FOR EACH ROW

BEGIN
   IF (:NEW.ctramo = 5 AND :NEW.cgenera IN (3, 4)) THEN
      UPDATE cuacesfac cf
         SET cf.ireserv = NVL(((:NEW.icesion * cf.pcesion/100) * cf.preserv/100),0),
             cf.iresrea = NVL(((:NEW.icesion * cf.pcesion/100) * cf.presrea/100),0)
       WHERE cf.sfacult = :NEW.sfacult;
   END IF;
END TRG_CESIONESREA_RET;
/

