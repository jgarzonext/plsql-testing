UPDATE cfg_form_property
SET cvalue = 1
WHERE  cform = 'AXISCGA002'
AND citem = 'DOCUMENTO'
AND CPRPTY = 2;


UPDATE cfg_form_property
SET cvalue = 1
WHERE  cform = 'AXISCGA002'
AND citem = 'TAUXILIA'
AND CPRPTY = 2;

COMMIT;
/