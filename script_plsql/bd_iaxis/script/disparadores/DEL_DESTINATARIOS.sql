--------------------------------------------------------
--  DDL for Trigger DEL_DESTINATARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."DEL_DESTINATARIOS" 
  after delete on destinatrami
  for each row
declare
  repetit_v number;
begin
  repetit_v := pac_sinitrami.f_destinatrami_repetit(:old.nsinies, :old.ntramit,:old.sperson, :old.ctipdes);
  if repetit_v = 0 then
    -- El vell no existia més que per aquesta tramitació
    DELETE DESTINATARIOS WHERE NSINIES = :OLD.NSINIES AND SPERSON = :OLD.SPERSON AND
      CTIPDES = :OLD.CTIPDES;
  else
    UPDATE DESTINATARIOS
      SET CPAGDES = pac_sinitrami.f_admet_pagaments ( :OLD.NSINIES,:old.ntramit ,:OLD.SPERSON, :OLD.CTIPDES, :old.cpagdes ),
          CACTPRO = pac_sinitrami.f_primera_activitat ( :OLD.NSINIES, :old.ntramit,:OLD.SPERSON, :OLD.CTIPDES ),
          CREFPER = pac_sinitrami.f_primera_referencia ( :OLD.NSINIES,:old.ntramit, :OLD.SPERSON, :OLD.CTIPDES, :old.crefsin  )
      WHERE NSINIES = :OLD.NSINIES AND SPERSON = :OLD.SPERSON AND CTIPDES = :OLD.CTIPDES;
  end if;
end;









/
ALTER TRIGGER "AXIS"."DEL_DESTINATARIOS" ENABLE;
