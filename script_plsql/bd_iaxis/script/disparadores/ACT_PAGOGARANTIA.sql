--------------------------------------------------------
--  DDL for Trigger ACT_PAGOGARANTIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACT_PAGOGARANTIA" 
  after update on pagogarantrami
  for each row
begin
  -- Faltaria controlar el canvi de la clau
  if (:new.isinret<>:old.isinret) or
     (:new.iimpiva <> :old.iimpiva) then
    -- Canviem els valors també a PAGOGARANTIA
    UPDATE PAGOGARANTIA
      SET ISINRET = :NEW.ISINRET, FPERINI = :NEW.FPERINI,
        FPERFIN = :NEW.FPERFIN, IIMPIVA = :NEW.IIMPIVA
      WHERE CGARANT = :OLD.CGARANT AND SIDEPAG = :OLD.SIDEPAG;
    -- Actualitzem l'acumulat de PAGOSINITRAMI
    UPDATE PAGOSINITRAMI
      SET ISINRET = ISINRET - :OLD.ISINRET + :NEW.ISINRET,
        IIMPIVA = IIMPIVA - :OLD.IIMPIVA + :NEW.IIMPIVA
      WHERE SIDEPAG = :OLD.SIDEPAG;
    pac_sinitrami.f_calcular_valors(:old.sidepag);
  else
    -- Faltaria controlar el canvi de cgarant i fer l'update pero
    -- podria suposar excedir la provisió i com que per programa
    -- no es permet, s'ha tret del trigger
    if ( :new.fperini is null and :old.fperini is not null ) or
       ( :new.fperini is not null and :old.fperini is null ) or
       ( :new.fperini <> :old.fperini ) or
       ( :new.fperfin is null and :old.fperfin is not null ) or
       ( :new.fperfin is not null and :old.fperfin is null ) or
       ( :new.fperfin <> :old.fperfin ) then
      update pagogarantia
        set fperini = :new.fperini, fperfin = :new.fperfin
        where sidepag = :new.sidepag;
    end if;
  end if;
end;









/
ALTER TRIGGER "AXIS"."ACT_PAGOGARANTIA" ENABLE;
