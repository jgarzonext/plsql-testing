/* Literales para axisper010_indicaret y axisprf016*/
insert into AXIS_CODLITERALES values (3, 3);
insert into axis_literales values (1, 3, 'Tipo Vinculación');
insert into axis_literales values (2, 3, 'Tipo Vinculación');
insert into axis_literales values (8, 3, 'Tipo Vinculación');
insert into AXIS_CODLITERALES values (4, 3);
insert into axis_literales values (1, 4, 'Sub Tipo Vinculación');
insert into axis_literales values (2, 4, 'Sub Tipo Vinculación');
insert into axis_literales values (8, 4, 'Sub Tipo Vinculación');  
COMMIT;

/*Tipo de Vinculos */

 delete detvalores a
 where cidioma ='8' and cvalor= '328';
COMMIT;
INSERT INTO DETVALORES VALUES (328,8,0,'Tomador' ); COMMIT;
INSERT INTO DETVALORES VALUES (328,8,1,'Asegurado póliza' ); COMMIT;
INSERT INTO DETVALORES VALUES (328,8,2,'Profesional' ); COMMIT;
INSERT INTO DETVALORES VALUES (328,8,3,'Agente' ); COMMIT;
INSERT INTO DETVALORES VALUES (328,8,4,'Compañía' ); COMMIT;
INSERT INTO DETVALORES VALUES (328,8,6,'Beneficiario' ); COMMIT;
INSERT INTO DETVALORES VALUES (328,8,7,'Proveedor' ); COMMIT;

/* Sub tipo compañias */

 delete detvalores a
 where cidioma ='8' and cvalor= '800102';
COMMIT;

INSERT INTO DETVALORES VALUES (800102,8,0,'Compañía Reaseguradora' ); COMMIT;
INSERT INTO DETVALORES VALUES (800102,8,1,'Broker' ); COMMIT;
INSERT INTO DETVALORES VALUES (800102,8,2,'Coaseguradora' ); COMMIT;
INSERT INTO DETVALORES VALUES (800102,8,3,'Compañía propia' ); COMMIT;




/* CFG_FORM_DEP */

INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',0,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',1,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',2,'CREGFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',3,'CREGFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',4,'CREGFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',6,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',7,'CREGFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',0,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',1,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',2,'FEFECTO',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',3,'FEFECTO',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',4,'FEFECTO',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',6,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',7,'FEFECTO',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',0,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',1,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',2,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',3,'CCODAGEN',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',4,'CCODAGEN',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',6,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',7,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',0,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',1,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',2,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',3,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',4,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',6,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',7,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',0,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',1,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',2,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',3,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',4,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',6,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',7,'CTIPIND',3,0);
COMMIT;


/* CFG_FORM_PROPERTY */
DELETE CFG_FORM_PROPERTY 
where cform = 'AXISPER010' AND CIDCFG = '1007' AND CITEM IN ('FEFECTO', 'CREGFISCAL', 'CCODAGEN', 'CCODIMP', 'CTIPIND', 'BUT_ANADIR');
COMMIT;
 
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1007,'AXISPER010', 'CREGFISCAL', 4, 78);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1007,'AXISPER010', 'FEFECTO', 4, 79);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1007,'AXISPER010', 'CCODAGEN', 4, 80);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1007,'AXISPER010', 'CCODIMP', 4, 81);
INSERT INTO CFG_FORM_PROPERTY VALUES (24,1007,'AXISPER010', 'CTIPIND', 4, 82);
COMMIT;


INSERT INTO DETVALORES VALUES (328,1,8,'Consorciado/Union Temporal'); 
INSERT INTO DETVALORES VALUES (328,2,8,'Consorciado/Union Temporal'); 
INSERT INTO DETVALORES VALUES (328,8,8,'Consorciado/Union Temporal'); 
INSERT INTO DETVALORES VALUES (328,1,9,'Codeudor'); 
INSERT INTO DETVALORES VALUES (328,2,9,'Codeudor'); 
INSERT INTO DETVALORES VALUES (328,8,9,'Codeudor'); 
INSERT INTO DETVALORES VALUES (328,1,10,'Accionista'); 
INSERT INTO DETVALORES VALUES (328,2,10,'Accionista'); 
INSERT INTO DETVALORES VALUES (328,8,10,'Accionista'); 
INSERT INTO DETVALORES VALUES (328,1,11,'Representante Legal'); 
INSERT INTO DETVALORES VALUES (328,2,11,'Representante Legal'); 
INSERT INTO DETVALORES VALUES (328,8,11,'Representante Legal'); 
INSERT INTO DETVALORES VALUES (328,1,12,'Apoderado'); 
INSERT INTO DETVALORES VALUES (328,2,12,'Apoderado'); 
INSERT INTO DETVALORES VALUES (328,8,12,'Apoderado'); 
INSERT INTO DETVALORES VALUES (328,1,13,'Pagador'); 
INSERT INTO DETVALORES VALUES (328,2,13,'Pagador'); 
INSERT INTO DETVALORES VALUES (328,8,13,'Pagador'); 
COMMIT;


INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',8,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',9,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',10,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',11,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',12,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',13,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',8,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',9,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',10,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',11,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',12,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,79,'CCODVIN',13,'FEFECTO',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',8,'CREGFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',9,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',10,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',11,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',12,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,80,'CCODVIN',13,'CCODAGEN',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',8,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',9,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',10,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',11,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',12,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,81,'CCODVIN',13,'CCODIMP',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',8,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',9,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',10,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',11,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',12,'CTIPIND',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,82,'CCODVIN',13,'CTIPIND',3,0);
COMMIT;


delete descripcioniva where ctipiva in (0,1,2,3) and cidioma = '8';                   
COMMIT;
INSERT INTO DESCRIPCIONIVA VALUES (8,0,'Operación');
INSERT INTO DESCRIPCIONIVA VALUES (8,1,'Exento');
INSERT INTO DESCRIPCIONIVA VALUES (8,2,'Excluido');
COMMIT;

