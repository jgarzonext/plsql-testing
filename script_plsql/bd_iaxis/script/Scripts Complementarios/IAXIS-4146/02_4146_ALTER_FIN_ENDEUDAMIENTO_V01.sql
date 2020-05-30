-- Se elimina la columna
BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('FIN_ENDEUDAMIENTO','NCALRIES');
END;
/
-- Se adiciona la columna
-- Add/modify columns 
alter table FIN_ENDEUDAMIENTO add ncalries number;
-- Add comments to the columns 
comment on column FIN_ENDEUDAMIENTO.ncalries
  is 'Calificacion riesgo por endeudamiento sector financiero - Detvalores (3000)';
