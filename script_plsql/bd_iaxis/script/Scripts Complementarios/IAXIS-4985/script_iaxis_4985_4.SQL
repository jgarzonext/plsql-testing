
delete AXIS_LITERALES
where slitera  = 89907053;
delete AXIS_CODLITERALES
where slitera  = 89907053;


Insert into AXIS_CODLITERALES
   (SLITERA, CLITERA)
 Values
   (89907053, 2);
   
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (1, 89907053, 'No olvide cambiar el recargo comercial, para cada uno de los amparos');
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (2, 89907053, 'No olvide cambiar el recargo comercial, para cada uno de los amparos');
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (8, 89907053, 'No olvide cambiar el recargo comercial, para cada uno de los amparos');



 commit;
 
