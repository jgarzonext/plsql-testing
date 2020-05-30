BEGIN
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (1045,1,8,'Básico para Expedición');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (1045,2,8,'Básico para Expedición');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (1045,8,8,'Básico para Expedición');
Insert into regimen_fiscal (CREGFISCAL,CTIPPER,FHASTA) values (8,1,NULL);
Insert into regimen_fiscal (CREGFISCAL,CTIPPER,FHASTA) values (8,2,NULL);

COMMIT;
EXCEPTIOn
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('ERROR IS --->'||SQLERRM);
END;