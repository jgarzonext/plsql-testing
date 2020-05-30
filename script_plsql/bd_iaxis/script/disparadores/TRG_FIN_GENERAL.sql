--------------------------------------------------------
--  DDL for Trigger TRG_FIN_GENERAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_FIN_GENERAL" 
  AFTER INSERT ON fin_general
  FOR EACH ROW
DECLARE
  v_nmovimi         NUMBER := 0;
  v_sfinanci        fin_general.sfinanci%TYPE := :new.sfinanci;
BEGIN
  IF inserting THEN
    v_nmovimi := seq_fin_gen_det.nextval;

    INSERT INTO fin_general_det
      (sfinanci, nmovimi, tdescrip, cfotorut, frut, ttitulo, cfotoced, fexpiced, cpais, cprovin, cpoblac, tinfoad, cciiu,
       ctipsoci, cestsoc, tobjsoc, texperi, fconsti, tvigenc, fccomer)
    VALUES
      (v_sfinanci, v_nmovimi, :new.tdescrip, :new.cfotorut, :new.frut, :new.ttitulo, :new.cfotoced, :new.fexpiced, :new.cpais,
       :new.cprovin, :new.cpoblac, :new.tinfoad, :new.cciiu, :new.ctipsoci, :new.cestsoc, :new.tobjsoc, :new.texperi, :new.fconsti,
       :new.tvigenc, :new.fccomer);

  END IF;
EXCEPTION
  WHEN OTHERS THEN
    NULL;
END trg_fin_general;
/
ALTER TRIGGER "AXIS"."TRG_FIN_GENERAL" ENABLE;
