/*  89906226 - Reporte Pólizas Convenios Grandes Beneficiarios*/
DELETE axis_literales a WHERE a.slitera = 89906226
/
DELETE axis_codliterales a WHERE a.slitera = 89906226
/
PROMPT Reporte Pólizas Convenios Grandes Beneficiarios
BEGIN
  INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89906226, 3);
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/ 
PROMPT Reporte Pólizas Convenios Grandes Beneficiarios
BEGIN
  INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA, TLITERA) VALUES (1,89906226,'Reporte Pólizas Convenios Grandes Beneficiarios');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
PROMPT Reporte Pólizas Convenios Grandes Beneficiarios
BEGIN
  INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA, TLITERA) VALUES (2,89906226,'Reporte Pólizas Convenios Grandes Beneficiarios');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
PROMPT Reporte Pólizas Convenios Grandes Beneficiarios
BEGIN
  INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA, TLITERA) VALUES (8,89906226,'Reporte Pólizas Convenios Grandes Beneficiarios');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
COMMIT
/
