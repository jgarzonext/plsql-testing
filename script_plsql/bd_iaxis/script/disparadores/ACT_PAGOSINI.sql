--------------------------------------------------------
--  DDL for Trigger ACT_PAGOSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACT_PAGOSINI" 
  after update on pagosinitrami
  for each row
DECLARE
  AUX NUMBER;
begin
--    SIDEPAG clau !!!
--    CMANUAL sempre �s 1
--    CIMPRES sempre �s 0
--    FIMPRES sempre NULL perqu� CIMPRES �s sempre 0
--    FPERINI sempre NULL perqu� estan sense �s
--    FPERFIN sempre NULL perqu� estan sense �s
--    FRECFAC sempre NULL
--    SPROCES aqu� no es toca, nom�s t� sentit en les cargues

  update pagosini
    set
      NSINIES = :NEW.NSINIES,
      CTIPDES = :NEW.CTIPDES,
      SPERSON = :NEW.SPERSON,
      CTIPPAG = :NEW.CTIPPAG,
      CESTPAG = :NEW.CESTPAG,
      CFORPAG = :NEW.CFORPAG,
      FEFEPAG = :NEW.FEFEPAG,
      FORDPAG = :NEW.FORDPAG,
      TCODDOC = :NEW.TCODDOC,
      ISINRET = :NEW.ISINRET,
      ICONRET = :NEW.ICONRET,
      IRETENC = :NEW.IRETENC,
      IIMPIVA = :NEW.IIMPIVA,
      PRETENC = :NEW.PRETENC,
      CPTOTAL = :NEW.CPTOTAL,
      NFACREF = :NEW.NFACREF,
      FFACREF = :NEW.FFACREF,
      CPAGCOA = :NEW.CPAGCOA,
      CUSUARI = :NEW.CUSUMOD,
      ISINIVA = :NEW.ISINIVA,
      IIMPSIN = :NEW.IIMPSIN,
      FCONTAB = :NEW.FCONTAB,
      SPROCON = :NEW.SPROCON
    where sidepag = :new.sidepag;
  aux := PAC_SINITRAMI.f_comprobacio_pagaments(:old.sidepag);
  if aux <> 0 then
    -- ERROR EN ELS C�LCULS
    raise_application_error(-20001,'Error : Els triggers han produit un error de c�lcul');
  end if;
end;









/
ALTER TRIGGER "AXIS"."ACT_PAGOSINI" ENABLE;
