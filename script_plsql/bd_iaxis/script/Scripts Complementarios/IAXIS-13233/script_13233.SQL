delete DETVALORES
where cvalor = 1037
and catribu = 14;

UPDATE DETVALORES
set tatribu = 'Holding para Grupos Econ�micos'
where cvalor = 1037
and catribu = 7;

UPDATE DETVALORES
set tatribu = 'Filial para Grupos Econ�micos'
where cvalor = 1037
and catribu = 8;

delete AXIS_LITERALES
where slitera = 89908037; 

delete AXIS_CODLITERALES
where slitera = 89908037; 

Insert into AXIS_CODLITERALES
   (SLITERA, CLITERA)
 Values
   (89908037, 2);
   
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (1, 89908037, 'Els membres de la tinen�a de grup econ�mic han de ser del tipus de persona vinculada filial per a grups econ�mics');
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (2, 89908037, 'Los integrantes del Holding para Grupo Econ�micos debe ser del tipo de persona relacionada Filial para Grupos Econ�micos');
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (8, 89908037, 'Los integrantes del Holding para Grupo Econ�micos debe ser del tipo de persona relacionada Filial para Grupos Econ�micos');

COMMIT;