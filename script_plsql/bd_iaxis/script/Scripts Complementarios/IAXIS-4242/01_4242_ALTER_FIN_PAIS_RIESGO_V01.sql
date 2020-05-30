BEGIN
	PAC_SKIP_ORA.p_comprovacolumn('FIN_PAIS_RIESGO','NANIO_EFECTO');
END;
/
-- Add/modify columns 
alter table FIN_PAIS_RIESGO add NANIO_EFECTO number;
-- Add comments to the columns 
comment on column FIN_PAIS_RIESGO.NANIO_EFECTO
  is 'Año de efecto';
