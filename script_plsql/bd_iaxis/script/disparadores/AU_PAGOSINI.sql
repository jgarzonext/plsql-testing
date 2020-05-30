--------------------------------------------------------
--  DDL for Trigger AU_PAGOSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AU_PAGOSINI" 
   AFTER UPDATE OF cestpag
   ON pagosini
   FOR EACH ROW
         WHEN (NEW.cestpag = 2) DECLARE
   num_err        NUMBER;
   seguro         NUMBER;
   cerror         NUMBER;
   cerror_proc    NUMBER;
   cerror_xl      NUMBER;
   cerror_inst    NUMBER;
   codi_error     NUMBER := 0;
   empresa        NUMBER;
   nproc          NUMBER;
   existe         NUMBER;
   moneda         NUMBER := 1;   --euros
BEGIN
   -- Añadir un control para no duplicar retrocesiones
   BEGIN
      SELECT 1
        INTO existe
        FROM cesionesrea
       WHERE sidepag = :NEW.sidepag;
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         num_err := f_sinrea(:NEW.sidepag, moneda, :NEW.nsinies, :NEW.ctippag, :NEW.fordpag,
                             :NEW.cpagcoa);

         IF num_err = 0 THEN
            SELECT sseguro
              INTO seguro
              FROM siniestros
             WHERE nsinies = :NEW.nsinies;

            num_err := f_empresa(seguro, NULL, NULL, empresa, f_user);
            nproc := NULL;
            num_err := f_procesini(f_user, empresa, 'REASEGURO', 'Pago realizado', nproc);
            cerror_xl := f_xl(nproc, :NEW.nsinies, f_sysdate, moneda);

            IF cerror_xl <> 0 THEN
               raise_application_error(-20001, 'Error al generar xl ' || cerror_xl);
            END IF;

            num_err := f_procesfin(nproc, cerror_xl);
         ELSE
            raise_application_error(-20001, 'Error en el reaseguro');
         END IF;
      WHEN OTHERS THEN
         NULL;
   END;
END;





/
ALTER TRIGGER "AXIS"."AU_PAGOSINI" ENABLE;
