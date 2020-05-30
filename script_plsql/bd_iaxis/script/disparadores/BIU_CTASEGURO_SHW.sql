--------------------------------------------------------
--  DDL for Trigger BIU_CTASEGURO_SHW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIU_CTASEGURO_SHW" 
   BEFORE UPDATE OR INSERT
   ON ctaseguro_shadow
   FOR EACH ROW
DECLARE
   importe        NUMBER;
   partis         NUMBER;
   numunidades    NUMBER;
   tipo           NUMBER;
   err            NUMBER;
   empleo         NUMBER;
   producto       NUMBER;
   salir          EXCEPTION;
   tipotras       NUMBER;
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

   IF :NEW.cmovimi IN(0, 54) THEN
      RAISE salir;
   END IF;

   :NEW.imovimi := ABS(:NEW.imovimi);
   :NEW.imovim2 := ABS(:NEW.imovim2);
   :NEW.nparpla := ABS(:NEW.nparpla);
EXCEPTION
   WHEN salir THEN   --> NO HACEMOS NADA
      NULL;
   WHEN OTHERS THEN
      NULL;
END biu_ctaseguro;





/
ALTER TRIGGER "AXIS"."BIU_CTASEGURO_SHW" ENABLE;
