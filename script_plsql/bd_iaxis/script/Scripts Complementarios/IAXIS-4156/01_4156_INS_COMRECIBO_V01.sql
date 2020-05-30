
BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('COMRECIBO','IVACOMISI');
END;
/
-- Add/modify columns 
alter table COMRECIBO add ivacomisi number;
-- Add comments to the columns 
comment on column COMRECIBO.IVACOMISI
  is 'iva del intermediario si aplica, inter. unico o multiple';

--
-- Add/modify columns 
alter table COMRECIBO modify IVACOMISI default null;
/

DROP TRIGGER insert_age_corretaje;
DROP TABLE AGE_COMIS_CORRETAJE;
/