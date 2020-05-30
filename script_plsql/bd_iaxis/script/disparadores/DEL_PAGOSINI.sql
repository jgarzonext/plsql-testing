--------------------------------------------------------
--  DDL for Trigger DEL_PAGOSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."DEL_PAGOSINI" 
  after delete on pagosinitrami
  for each row
declare
  aux number;
begin
  delete from pagosini where sidepag = :old.sidepag;
  -- No t� sentit comprobar si el pagament cuadra si el que volem �s borrar-lo,
  -- i menys despr�s de borrar-lo!
  -- aux := PAC_SINITRAMI.f_comprobacio_pagaments(:old.sidepag);
  if aux <> 0 then
    -- ERROR EN ELS C�LCULS
    raise_application_error(-20001,'Error : Els triggers han produit un error de c�lcul');
  end if;
end;









/
ALTER TRIGGER "AXIS"."DEL_PAGOSINI" ENABLE;
