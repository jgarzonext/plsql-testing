CREATE OR REPLACE TRIGGER trg_fin_inficadores_his
   BEFORE UPDATE
   ON fin_indicadores
   FOR EACH ROW
BEGIN
   IF UPDATING THEN
     IF :new.icupog  != :old.icupog AND :new.icupos  != :old.icupos AND :new.ncapfin != :old.ncapfin THEN
       :new.icupogv1  := :old.icupog;
       :new.icuposv1  := :old.icupos;
       :new.ncapfinv1 := :old.ncapfin;
     END IF;
   END IF;
END;
/