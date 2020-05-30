--------------------------------------------------------
--  DDL for Trigger INS_PAGOSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."INS_PAGOSINI" 
  after insert on pagosinitrami
  for each row
declare
  aux NUMBER;
begin
  insert into pagosini (
    SIDEPAG,
    NSINIES,
    CTIPDES,
    SPERSON,
    CTIPPAG,
    CESTPAG,
    CFORPAG,
    CMANUAL,
    CIMPRES,
    FEFEPAG,
    FORDPAG,
    TCODDOC,
    ISINRET,
    ICONRET,
    IRETENC,
    IIMPIVA,
    PRETENC,
    CPTOTAL,
    NFACREF,
    FFACREF,
    CPAGCOA,
    CUSUARI,
    ISINIVA,
    IIMPSIN,
    FCONTAB,
    SPROCON )
  values (
    :NEW.SIDEPAG,
    :NEW.NSINIES,
    :NEW.CTIPDES,
    :NEW.SPERSON,
    :NEW.CTIPPAG,
    :NEW.CESTPAG,
    :NEW.CFORPAG,
    1,
    0,
    :NEW.FEFEPAG,
    :NEW.FORDPAG,
    :NEW.TCODDOC,
    :NEW.ISINRET,
    :NEW.ICONRET,
    :NEW.IRETENC,
    :NEW.IIMPIVA,
    :NEW.PRETENC,
    :NEW.CPTOTAL,
    :NEW.NFACREF,
    :NEW.FFACREF,
    :NEW.CPAGCOA,
    :NEW.CUSUALT,
    :NEW.ISINIVA,
    :NEW.IIMPSIN,
    :NEW.FCONTAB,
    :NEW.SPROCON );
  aux := PAC_SINITRAMI.f_comprobacio_pagaments(:new.sidepag);
  if aux <> 0 then
    -- ERROR EN ELS CÀLCULS
    raise_application_error(-20001,'Error : Els triggers han produit un error de càlcul');
  end if;
end;









/
ALTER TRIGGER "AXIS"."INS_PAGOSINI" ENABLE;
