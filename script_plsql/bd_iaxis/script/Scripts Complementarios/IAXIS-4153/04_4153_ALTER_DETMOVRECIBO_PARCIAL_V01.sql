-- Se eliminan las columnas NRECCAJ y CMRECA
BEGIN
   PAC_SKIP_ORA.p_comprovacolumn('DETMOVRECIBO_PARCIAL','NRECCAJ');
END;
/
BEGIN
   PAC_SKIP_ORA.p_comprovacolumn('DETMOVRECIBO_PARCIAL','CMRECA');
END;
/
-- Add/modify columns 
alter table DETMOVRECIBO_PARCIAL add nreccaj NUMBER;
alter table DETMOVRECIBO_PARCIAL add cmreca NUMBER;
-- Add comments to the columns 
comment on column DETMOVRECIBO_PARCIAL.nreccaj
  is 'No. Recibo de Caja';
comment on column DETMOVRECIBO_PARCIAL.cmreca
  is 'Medio de Recaudo VF. 552';
