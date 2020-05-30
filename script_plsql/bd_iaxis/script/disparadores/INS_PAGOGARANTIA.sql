--------------------------------------------------------
--  DDL for Trigger INS_PAGOGARANTIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."INS_PAGOGARANTIA" 
  after insert on pagogarantrami
  for each row
begin
  insert into pagogarantia
    ( cgarant, sidepag, isinret, fperini, fperfin, iimpiva )
    values ( :new.cgarant, :new.sidepag, :new.isinret, :new.fperini, :new.fperfin, :new.iimpiva );
  -- Afegir pagament
  UPDATE PAGOSINITRAMI
    SET ISINRET = ISINRET + :NEW.ISINRET,
      IIMPIVA = IIMPIVA + :NEW.IIMPIVA
    WHERE SIDEPAG = :NEW.SIDEPAG;
  pac_sinitrami.f_calcular_valors ( :new.sidepag );
end;









/
ALTER TRIGGER "AXIS"."INS_PAGOGARANTIA" ENABLE;
