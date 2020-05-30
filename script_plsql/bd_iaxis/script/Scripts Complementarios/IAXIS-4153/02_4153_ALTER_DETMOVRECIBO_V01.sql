-- Se eliminan las columnas NRECCAJ y CMRECA
BEGIN
	 PAC_SKIP_ORA.p_comprovacolumn('DETMOVRECIBO','NRECCAJ');
END;
/
BEGIN
	 PAC_SKIP_ORA.p_comprovacolumn('DETMOVRECIBO','CMRECA');
END;
/
-- Add/modify columns 
alter table DETMOVRECIBO add nreccaj NUMBER;
alter table DETMOVRECIBO add cmreca NUMBER;
-- Add comments to the columns 
comment on column DETMOVRECIBO.nreccaj
  is 'No. Recibo de Caja';
comment on column DETMOVRECIBO.cmreca
  is 'Medio de Recaudo VF. 8001181';
