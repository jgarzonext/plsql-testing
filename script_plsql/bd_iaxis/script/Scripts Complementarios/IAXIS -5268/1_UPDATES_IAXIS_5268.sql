
delete producto_texto_jspr
 where sproduc = 80001
 and cactivi =  3;

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 1, 1);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 2, 2);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 3, 3);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 4, 4);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 5, 5);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 6, 6);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 7, 7);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 8, 8);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 9, 9);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 3, 11, 10);


delete  producto_texto_jspr
 where sproduc = 80001
 and cactivi =  2;

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 2, 4, 1);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 2, 5, 2);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 2, 6, 3);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 2, 7, 4);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 2, 8, 5);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 2, 9, 6);

insert into producto_texto_jspr (SPRODUC, CACTIVI, ID_TEXTO, ORDEN)
values (80001, 2, 11, 7);


update activisegu
set tactivi = 'POLIZA UNICA DE SEGURO DE CUMPLIMIENTO PARA CONTRATOS ESTATALES A FAVOR DE ECOPETROL S.A.'
where cidioma = 8
and cramo = 801
and cactivi = 2;

update respuestas
set trespue = 'Banco de la Republica'
where  CPREGUN=2876
and cidioma = 8
and crespue = 20;

delete producto_texto_jspr
where sproduc = 80011
and Id_Texto= 10;


delete  producto_texto_jspr
where sproduc = 80007
and id_texto = 10;

delete  producto_texto_jspr
where sproduc = 80009
and id_texto = 10;

delete producto_texto_jspr
where sproduc = 80003
and CACTIVI = 2
and ID_TEXTO in (1, 10);

delete  producto_texto_jspr
where sproduc = 80003
and cactivi in (3);

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,2,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,3,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,4,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,5,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,6,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,7,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,8,8);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,9,9);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,3,11,11);

delete  producto_texto_jspr
where sproduc = 80005
and cactivi in (2);


Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80005,2,4,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80005,2,5,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80005,2,6,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80005,2,7,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80005,2,8,8);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80005,2,9,9);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80005,2,11,11);

delete  producto_texto_jspr
where sproduc = 80002
and cactivi in (2)
and id_texto in (1,10);


delete  producto_texto_jspr
where sproduc = 80002
and cactivi in (3);

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,2,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,3,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,4,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,5,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,6,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,7,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,8,8);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,9,9);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,3,11,11);

delete  producto_texto_jspr
where sproduc = 80006
and cactivi in (3);

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,2,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,3,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,4,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,5,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,6,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,7,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,8,8);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,9,9);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80006,3,11,11);

delete  producto_texto_jspr
where sproduc = 8062
and cactivi in (0);

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,2,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,3,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,4,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,5,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,6,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,7,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,8,8);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,9,9);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (8062,0,11,11); 

delete  producto_texto_jspr
where sproduc = 80038
and cactivi in (0);

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,2,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,3,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,4,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,5,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,6,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,7,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,8,8);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,9,9);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,0,11,11);

delete  producto_texto_jspr
where sproduc = 80038
and cactivi in (1);

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,2,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,3,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,4,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,5,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,6,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,7,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,8,8);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,9,9);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80038,1,11,11);

delete  producto_texto_jspr
where sproduc = 80012
and cactivi in (1);

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,2,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,3,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,4,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,5,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,6,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,7,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,8,8);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,9,9);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80012,1,11,11);

COMMIT;