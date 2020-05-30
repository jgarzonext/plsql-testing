BEGIN
  pac_skip_ora.p_comprovacolumn('FIN_INDICADORES','NCONTPOL');
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/
BEGIN
  pac_skip_ora.p_comprovacolumn('FIN_INDICADORES','NANIOSVINC');
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/
-- Add/modify columns 
alter table FIN_INDICADORES add NCONTPOL number;
alter table FIN_INDICADORES add NANIOSVINC number;
-- Add comments to the columns 
comment on column FIN_INDICADORES.NCONTPOL
  is 'Contador de p�lizas asociadas a la persona';
comment on column FIN_INDICADORES.NANIOSVINC
  is 'N�mero de a�os de vinculaci�n de una persona';
