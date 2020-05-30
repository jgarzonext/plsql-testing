----- ALTER OBS_CUENTACOBRO IAXIS-4136 JRVG 23/04/2020

BEGIN
	 PAC_SKIP_ORA.p_comprovacolumn('OBS_CUENTACOBRO','CAGENTE'); 
END;
/
BEGIN
	 PAC_SKIP_ORA.p_comprovacolumn('OBS_CUENTACOBRO','CMARCA');
END;
/
-- Add/modify columns 
alter table OBS_CUENTACOBRO add CAGENTE NUMBER;
alter table OBS_CUENTACOBRO add CMARCA NUMBER(2);
-- Add comments to the columns 
comment on column OBS_CUENTACOBRO.CAGENTE
  is 'Codigo del Agente';
comment on column OBS_CUENTACOBRO.CMARCA
  is 'Aplica para la impresión del reporte CuentaCobro 1-Si / 0-No';
  /