--------------------------------------------------------
--  DDL for Trigger TRG_PER_PERSONAS_NOTIF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_PERSONAS_NOTIF" 
   BEFORE UPDATE
   ON per_personas
   FOR EACH ROW
DECLARE
-- 1.0 0027411: Error al generar más de un número de matrícula - QT-8145 - Inicio
-- Si se cambia el NNUMIDE y CTIPIDE las cuentas han de prenotificarse nuevamente
-- [RECIBOS.CESTIMP]-------------->  --[PER_CCC.CVALIDA]-------------
-- 11 Pendiente de prenotificación   -- 1 Pendiente de prenotificar    (*)
-- 12 Prenotificación en curso       -- 2 Prenotificación en tránsito
-- 13 Rechazo prenotificación        -- 3 No Prenotificado o retenida
-- 04 Pendiente domiciliación        -- 4 Validada o matriculada
BEGIN
   IF :NEW.nnumide || ' ' || :NEW.ctipide <> :OLD.nnumide || ' ' || :OLD.ctipide THEN
      -- Cambiar validación de las cuentas y estado de impresión (subestado) de los recibos afectados.
      -- Deja pendiente de prenotificar las cuentas bancarias
      UPDATE per_ccc
         SET cvalida = 1
       WHERE sperson = :NEW.sperson
         AND cvalida != 1
         AND cvalida IS NOT NULL;

      IF SQL%ROWCOUNT > 0 THEN
         -- Modifica los recibos a los que les corresponde la misma matrícula
         UPDATE recibos a
            SET a.cestimp = 11
          WHERE a.cestimp != 11
            AND pac_prenotificaciones.f_pagador_sperson(a.sseguro) = :NEW.sperson
            AND EXISTS(SELECT cbancar, ctipban
                         FROM per_ccc c
                        WHERE c.sperson = :NEW.sperson
                          AND c.cbancar = a.cbancar
                          AND c.ctipban = a.ctipban
                          AND c.cvalida = 1);
      END IF;
   END IF;
END;







/
ALTER TRIGGER "AXIS"."TRG_PER_PERSONAS_NOTIF" ENABLE;
