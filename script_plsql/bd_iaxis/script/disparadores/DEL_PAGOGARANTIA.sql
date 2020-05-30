--------------------------------------------------------
--  DDL for Trigger DEL_PAGOGARANTIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."DEL_PAGOGARANTIA" 
  after delete on pagogarantrami
  for each row
begin
  DELETE FROM PAGOGARANTIA
    WHERE SIDEPAG = :OLD.SIDEPAG and cgarant = :old.cgarant;
    -- Treure pagament
  UPDATE PAGOSINITRAMI
    SET ISINRET = ISINRET - :OLD.ISINRET,
      IIMPIVA = IIMPIVA - :OLD.IIMPIVA
    WHERE SIDEPAG = :OLD.SIDEPAG;
  pac_sinitrami.f_calcular_valors_del_garan ( :old.sidepag );
end;









/
ALTER TRIGGER "AXIS"."DEL_PAGOGARANTIA" ENABLE;
