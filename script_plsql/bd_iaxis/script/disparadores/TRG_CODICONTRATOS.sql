--------------------------------------------------------
--  DDL for Trigger TRG_CODICONTRATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CODICONTRATOS" 
   AFTER UPDATE ON codicontratos
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCONTRA = ' || :old.scontra || ', SPLENO = ' ||
                            :old.spleno;
BEGIN
   --
   p_his_procesosrea('CODICONTRATOS', vindica, 'CEMPRES', :old.cempres, :new.cempres);
   p_his_procesosrea('CODICONTRATOS', vindica, 'CTIPREA', :old.ctiprea, :new.ctiprea);
   p_his_procesosrea('CODICONTRATOS', vindica, 'FINICTR', :old.finictr, :new.finictr);
   p_his_procesosrea('CODICONTRATOS', vindica, 'FFINCTR', :old.ffinctr, :new.ffinctr);
   p_his_procesosrea('CODICONTRATOS', vindica, 'NCONREL', :old.nconrel, :new.nconrel);
   p_his_procesosrea('CODICONTRATOS', vindica, 'SCONAGR', :old.sconagr, :new.sconagr);
   p_his_procesosrea('CODICONTRATOS', vindica, 'CVIDAGA', :old.cvidaga, :new.cvidaga);
   p_his_procesosrea('CODICONTRATOS', vindica, 'CVIDAIR', :old.cvidair, :new.cvidair);
   p_his_procesosrea('CODICONTRATOS', vindica, 'CTIPCUM', :old.ctipcum, :new.ctipcum);
   p_his_procesosrea('CODICONTRATOS', vindica, 'CVALID', :old.cvalid, :new.cvalid);
   p_his_procesosrea('CODICONTRATOS', vindica, 'CRETIRA', :old.cretira, :new.cretira);
   p_his_procesosrea('CODICONTRATOS', vindica, 'CMONEDA', :old.cmoneda, :new.cmoneda);
   p_his_procesosrea('CODICONTRATOS', vindica, 'TDESCRIPCION', :old.tdescripcion, :new.tdescripcion);
   p_his_procesosrea('CODICONTRATOS', vindica, 'CDEVENTO', :old.cdevento, :new.cdevento);
   --
END trg_codicontratos;


/
ALTER TRIGGER "AXIS"."TRG_CODICONTRATOS" ENABLE;
