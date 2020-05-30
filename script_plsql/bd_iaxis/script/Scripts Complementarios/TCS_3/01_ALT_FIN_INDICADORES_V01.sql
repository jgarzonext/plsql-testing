BEGIN
  pac_skip_ora.p_comprovacolumn('FIN_INDICADORES','ICUPOGV1');
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/
BEGIN
  pac_skip_ora.p_comprovacolumn('FIN_INDICADORES','ICUPOSV1');
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/
BEGIN
  pac_skip_ora.p_comprovacolumn('FIN_INDICADORES','NCAPFINV1');
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/
-- Add/modify columns 
alter table FIN_INDICADORES add icupogv1 number;
alter table FIN_INDICADORES add icuposv1 number;
alter table FIN_INDICADORES add ncapfinv1 number;
-- Add comments to the columns 
comment on column FIN_INDICADORES.ICUPOGV1
  is 'Cupo del garantizado Versión 1 (histórico)';
comment on column FIN_INDICADORES.ICUPOSV1
  is 'Cupo sugerido Versión 1 (histórico)';
comment on column FIN_INDICADORES.NCAPFINV1
  is 'Capacidad Financiera Versión 1 (histórico)';
