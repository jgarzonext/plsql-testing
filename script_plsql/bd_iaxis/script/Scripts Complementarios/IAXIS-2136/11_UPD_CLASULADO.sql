UPDATE codiplantillas
SET ccodplan = 'SU-OD-05-07'
WHERE ccodplan = 'SU-OD-05-06';

UPDATE codiplantillas
SET ccodplan = 'SU-OD-38-04'
WHERE ccodplan = 'SU-OD-38-03';

UPDATE codiplantillas
SET ccodplan = 'SU-OD-08-04'
WHERE ccodplan = 'SU-OD-08-03';

UPDATE codiplantillas
SET ccodplan = 'SU-OD-03-04'
WHERE ccodplan = 'SU-OD-03-02';


UPDATE detplantillas
SET ccodplan = 'SU-OD-05-07', tdescrip =  'SU-OD-05-07 Clausulado Garantia unica de Cumplimiento en Favor de Entidades Estatales (Decreto 1082 de 2015)', cinforme = 'SU-OD-05-07.pdf'
WHERE ccodplan = 'SU-OD-05-06';

UPDATE detplantillas
SET ccodplan = 'SU-OD-38-04', tdescrip = 'SU-OD-38-04 Clausulado Cumplimiento ante Entidades Publicas con Regimen Privado de Contratacion', cinforme = 'SU-OD-38-04.pdf'
WHERE ccodplan = 'SU-OD-38-03';

UPDATE detplantillas
SET ccodplan = 'SU-OD-08-04', tdescrip = 'SU-OD-08-04 Clausulado Cumplimiento de Disposiciones Legales', cinforme = 'SU-OD-08-04.pdf'
WHERE ccodplan = 'SU-OD-08-03';

UPDATE detplantillas
SET ccodplan = 'SU-OD-03-04', tdescrip = 'SU-OD-03-04 Clausulado Cumplimiento en favor de las entidades otorgantes del sfv', cinforme = 'SU-OD-03-04.pdf'
WHERE ccodplan = 'SU-OD-03-02';


UPDATE prod_plant_cab
SET ccodplan = 'SU-OD-05-07'
WHERE sproduc IN (80001, 80002, 80003, 80004, 80005, 80006)
and ccodplan = 'SU-OD-05-06'
and ctipo = 0; 

UPDATE prod_plant_cab
SET ccodplan = 'SU-OD-38-04'
WHERE sproduc IN (80001, 80002, 80003, 80004, 80005, 80006)
and ccodplan = 'SU-OD-38-03'
and ctipo = 0; 

UPDATE prod_plant_cab
SET ccodplan = 'SU-OD-05-07'
WHERE sproduc = 80009
and ccodplan = 'SU-OD-05-06'
and ctipo = 0; 

UPDATE prod_plant_cab
SET ccodplan = 'SU-OD-08-04'
WHERE sproduc IN (80009, 80010)
and ccodplan = 'SU-OD-08-03'
and ctipo = 0; 

UPDATE prod_plant_cab
SET ccodplan = 'SU-OD-03-04'
WHERE sproduc = 80011
and ccodplan = 'SU-OD-03-02'
and ctipo = 0; 

COMMIT;
/