--------------------------------------------------------
--  DDL for Trigger BIUD_CTASEGURO_SALDOONLINE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIUD_CTASEGURO_SALDOONLINE" 
   AFTER INSERT OR UPDATE OR DELETE
   ON ctaseguro
   FOR EACH ROW
-------------------------------------------------------------------------------
DECLARE
   cuantos        NUMBER;
   importe        NUMBER := 0;
   participaciones NUMBER := 0;
   v_cagrpro      NUMBER;
BEGIN
   IF DELETING THEN
      SELECT cagrpro
        INTO v_cagrpro
        FROM seguros
       WHERE sseguro = :OLD.sseguro;
   ELSE
      SELECT cagrpro
        INTO v_cagrpro
        FROM seguros
       WHERE sseguro = :NEW.sseguro;
   END IF;
-- 12442.NMM.31/12/2009.i.
-- Sólo se debe hacer el insert y update para los Planes de Pensiones
/*IF v_cagrpro = 11 THEN

     BEGIN
        INSERT INTO planseguros
                    (sseguro
                    )
             VALUES (:NEW.sseguro
                    );
     EXCEPTION
        WHEN OTHERS THEN
           NULL;
     END;

    -- Este trigger actualiza los dos campos de PLANSEGUROS ON LINE para ejecutar la cartera
     IF     INSERTING
        AND TO_CHAR (:NEW.fvalmov, 'YYYY') = TO_CHAR (F_Sysdate, 'YYYY')
        AND :NEW.cmovimi IN (1, 2) THEN
        -- Hemos insertado
        IF :NEW.cmovanu = 1 THEN                    -- El movimiento es anulado
           UPDATE planseguros
           SET imovimionline = NVL (imovimionline, 0) - NVL (:NEW.imovimi, 0),
               nparplaonline = NVL (nparplaonline, 0) - NVL (:NEW.nparpla, 0)
           WHERE  sseguro = :NEW.sseguro;
        ELSE
           UPDATE planseguros
           SET imovimionline = NVL (imovimionline, 0) + NVL (:NEW.imovimi, 0),
               nparplaonline = NVL (nparplaonline, 0) + NVL (:NEW.nparpla, 0)
           WHERE  sseguro = :NEW.sseguro;
        END IF;
     ELSIF UPDATING THEN
        IF (    :OLD.cmovimi IN (1, 2)
            AND TO_CHAR (:OLD.fvalmov, 'YYYY') = TO_CHAR (F_Sysdate, 'YYYY')
           ) THEN
           IF :OLD.cmovanu = 1 THEN                 -- El movimiento es anulado
              UPDATE planseguros
              SET imovimionline = NVL (imovimionline, 0) + NVL (:OLD.imovimi, 0),
                  nparplaonline = NVL (nparplaonline, 0) + NVL (:OLD.nparpla, 0)
              WHERE  sseguro = :OLD.sseguro;
           ELSE
              UPDATE planseguros
              SET imovimionline = NVL (imovimionline, 0) - NVL (:OLD.imovimi, 0),
                  nparplaonline = NVL (nparplaonline, 0) - NVL (:OLD.nparpla, 0)
              WHERE  sseguro = :OLD.sseguro;
           END IF;
        END IF;

        IF (    :NEW.cmovimi IN (1, 2)
            AND TO_CHAR (:NEW.fvalmov, 'YYYY') = TO_CHAR (F_Sysdate, 'YYYY')
           ) THEN
           IF :NEW.cmovanu = 1 THEN                 -- El movimiento es anulado
              UPDATE planseguros
              SET imovimionline = NVL (imovimionline, 0) - NVL (:NEW.imovimi, 0),
                  nparplaonline = NVL (nparplaonline, 0) - NVL (:NEW.nparpla, 0)
              WHERE  sseguro = :NEW.sseguro;
           ELSE
              UPDATE planseguros
              SET imovimionline = NVL (imovimionline, 0) + NVL (:NEW.imovimi, 0),
                  nparplaonline = NVL (nparplaonline, 0) + NVL (:NEW.nparpla, 0)
              WHERE  sseguro = :NEW.sseguro;
           END IF;
        END IF;
     ELSIF     DELETING
           AND TO_CHAR (:NEW.fvalmov, 'YYYY') = TO_CHAR (F_Sysdate, 'YYYY')
           AND :NEW.cmovimi IN (1, 2) THEN
        IF :NEW.cmovanu = 1 THEN                    -- El movimiento es anulado
           UPDATE planseguros
           SET imovimionline = NVL (imovimionline, 0) + NVL (:NEW.imovimi, 0),
               nparplaonline = NVL (nparplaonline, 0) + NVL (:NEW.nparpla, 0)
           WHERE  sseguro = :NEW.sseguro;
        ELSE
           UPDATE planseguros
           SET imovimionline = NVL (imovimionline, 0) - NVL (:NEW.imovimi, 0),
               nparplaonline = NVL (nparplaonline, 0) - NVL (:NEW.nparpla, 0)
           WHERE  sseguro = :NEW.sseguro;
        END IF;
     END IF;

END IF;*/
-- 12442.NMM.31/12/2009.f.

-------------------------------------------------------------------------------
END biud_ctaseguro_saldoonline;









/
ALTER TRIGGER "AXIS"."BIUD_CTASEGURO_SALDOONLINE" DISABLE;
