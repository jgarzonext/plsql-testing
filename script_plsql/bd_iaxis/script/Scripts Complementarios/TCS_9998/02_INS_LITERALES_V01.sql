/*  9908891 - Num. P�lizas
    2000087 - A�os de vinculaci�n*/
PROMPT A�os de vinculaci�n
BEGIN
  INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (2000087, 3);
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/ 
PROMPT A�os de vinculaci�n
BEGIN
  INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA, TLITERA) VALUES (1,2000087,'A�os de vinculaci�n');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
PROMPT A�os de vinculaci�n
BEGIN
  INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA, TLITERA) VALUES (2,2000087,'A�os de vinculaci�n');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
PROMPT A�os de vinculaci�n
BEGIN
  INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA, TLITERA) VALUES (8,2000087,'A�os de vinculaci�n');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    NULL;
END;
/
COMMIT
/
