/* Literales para axisper010_indicaret y axisprf016*/
insert into AXIS_CODLITERALES values (3, 3);
insert into axis_literales values (1, 3, 'Tipo Vinculaci�n');
insert into axis_literales values (2, 3, 'Tipo Vinculaci�n');
insert into axis_literales values (8, 3, 'Tipo Vinculaci�n');
insert into AXIS_CODLITERALES values (4, 3);
insert into axis_literales values (1, 4, 'Sub Tipo Vinculaci�n');
insert into axis_literales values (2, 4, 'Sub Tipo Vinculaci�n');
insert into axis_literales values (8, 4, 'Sub Tipo Vinculaci�n');  
COMMIT;

/*Tipo de Vinculos */

 delete detvalores a
 where cidioma ='8' and cvalor= '328';
COMMIT;
INSERT INTO DETVALORES VALUES (328,8,0,'Tomador' );
INSERT INTO DETVALORES VALUES (328,8,1,'Asegurado p�liza' );
INSERT INTO DETVALORES VALUES (328,8,2,'Profesional' );
INSERT INTO DETVALORES VALUES (328,8,3,'Agente' );
INSERT INTO DETVALORES VALUES (328,8,4,'Compa��a' );
INSERT INTO DETVALORES VALUES (328,8,6,'Beneficiario' );
INSERT INTO DETVALORES VALUES (328,8,7,'Proveedor' );
COMMIT;

/* Sub tipo compa�ias */

 delete detvalores a
 where cidioma ='8' and cvalor= '800102';
COMMIT;

INSERT INTO DETVALORES VALUES (800102,8,0,'Compa��a Reaseguradora' );
INSERT INTO DETVALORES VALUES (800102,8,1,'Broker' );
INSERT INTO DETVALORES VALUES (800102,8,2,'Coaseguradora' );
INSERT INTO DETVALORES VALUES (800102,8,3,'Compa��a propia' );
COMMIT;




/* CFG_FORM_DEP */

INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',0,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',1,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',2,'CREGFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',3,'CREGFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',4,'CREGFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',5,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',6,'CREGFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',0,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',1,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',2,'FEFECTO',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',3,'FEFECTO',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',4,'FEFECTO',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',5,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',6,'FEFECTO',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',0,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',1,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',2,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',3,'CCODAGEN',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',4,'CCODAGEN',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',5,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',6,'CCODAGEN',3,0);
COMMIT;


/* CFG_FORM_PROPERTY */
DELETE CFG_FORM_PROPERTY 
where cform = 'AXISPER010' AND CIDCFG = '1007' AND CITEM IN ('FEFECTO', 'CREGFISCAL', 'CCODAGEN');
COMMIT;
 
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1007,'AXISPER010', 'CREGFISCAL', 4, 78);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1007,'AXISPER010', 'FEFECTO', 4, 79);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1007,'AXISPER010', 'CCODAGEN', 4, 80);
COMMIT;
