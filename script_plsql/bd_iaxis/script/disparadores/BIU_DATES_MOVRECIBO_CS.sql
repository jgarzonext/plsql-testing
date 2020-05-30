--------------------------------------------------------
--  DDL for Trigger BIU_DATES_MOVRECIBO_CS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_DATES_MOVRECIBO_CS" 
  BEFORE INSERT OR UPDATE OF fmovini, fmovdia, cestrec ON MOVRECIBO
  FOR EACH ROW
DECLARE
  lcempres      NUMBER;
  lfcierre_mer  DATE;
  lfcierre_cc   DATE;
  num_err       NUMBER;
  vErr          VARCHAR2(2000);
  lgrup         VARCHAR2(100);
BEGIN
   /*******************************************************************
    En cas de Cobrament o descobrament,
    - Primer comprova si és Caixa, si no ho és ja no cal fer rès.
    - Busca la última data de tancament de Meritació o de Quadre de compte
      corrent
    - Comprova que la data de cobrament/descobrament/anul.lació no sigui
      anterior a la de tancament (cob/desc mira el quadre, anul mira meritació)
   *******************************************************************/
   lgrup := f_parinstalacion_t('GRUPO');
   IF lgrup = 'Caixa Sabadell' THEN
      IF :NEW.cestrec = 1 OR (:NEW.cestrec = 0 AND :NEW.cestant = 1) OR :NEW.cestrec = 2 THEN
         BEGIN
            SELECT cempres INTO lcempres
            FROM RECIBOS
            WHERE nrecibo  = :NEW.nrecibo;
         EXCEPTION
            WHEN OTHERS THEN
               vErr := 'ERROR: en empresas '||SQLERRM ;
               RAISE_APPLICATION_ERROR(-20002, vErr );
         END;

         BEGIN
            SELECT MAX(fcierre)
             INTO lfcierre_mer
            FROM CIERRES
            WHERE cempres  = lcempres
              AND ctipo = 6 -- Meritación
              AND cestado = 1;
         EXCEPTION
            WHEN OTHERS THEN
                lfcierre_mer := NULL;
         END;
         BEGIN
            SELECT MAX(fcierre)
             INTO lfcierre_cc
            FROM CIERRES
            WHERE cempres  = lcempres
              AND ctipo = 9 -- Cuadre de cuenta corriente
              AND cestado = 1;
         EXCEPTION
            WHEN OTHERS THEN
                lfcierre_cc := NULL;
         END;

         IF :NEW.cestrec = 2 THEN
            -- Anul.lació de rebut. Cal mira la meritació si està tancada
            IF :NEW.fmovdia <= lfcierre_mer AND lfcierre_mer IS NOT NULL THEN
                vErr := 'ERROR:La fecha no puede ser inferior al último cierre' ;
                RAISE_APPLICATION_ERROR(-20001, vErr );
            END IF;
         ELSE
            IF :NEW.fmovini <= lfcierre_cc AND lfcierre_cc IS NOT NULL THEN
                vErr := 'ERROR:La fecha no puede ser inferior al último cierre' ;
                RAISE_APPLICATION_ERROR(-20001, vErr );
            END IF;
         END IF;
      END IF;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."BIU_DATES_MOVRECIBO_CS" DISABLE;
