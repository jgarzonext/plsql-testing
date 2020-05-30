BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('FIN_RANGOS','ANIO');
END;
/
-- Add/modify columns 
alter table FIN_RANGOS add anio number;
-- Add comments to the columns 
comment on column FIN_RANGOS.anio
  is 'Año de la información';
