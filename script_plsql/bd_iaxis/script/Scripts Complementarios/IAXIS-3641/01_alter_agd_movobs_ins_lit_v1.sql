--SGM IAXIS 3641 Cargue de archivo de proveedores OutSourcing
--1-SE CREA LITERAL


DELETE FROM axis_literales WHERE SLITERA in (89906298,89906306);
DELETE FROM axis_codliterales WHERE SLITERA in (89906298,89906306);
    
INSERT INTO axis_codliterales VALUES (89906298,3);
INSERT INTO axis_codliterales VALUES (89906306,6);
    
INSERT INTO axis_literales VALUES (1,89906298,'Carga masiva anotaciones outsourcing');
INSERT INTO axis_literales VALUES (2,89906298,'Carga masiva anotaciones outsourcing');
INSERT INTO axis_literales VALUES (8,89906298,'Carga masiva anotaciones outsourcing');
INSERT INTO axis_literales VALUES (2,89906306,'Uno o varios archivos ya se han cargado previamente ver tabla INT_AGD_OBSERVACIONES.FICHERO');
INSERT INTO axis_literales VALUES (8,89906306,'Uno o varios archivos ya se han cargado previamente ver tabla INT_AGD_OBSERVACIONES.FICHERO');

    
    --2 SE INSERTA LA OPCION DEL MENU

    
DELETE FROM cfg_files WHERE CDESCRIP=89906298;
    
INSERT INTO cfg_files                                   
    (CEMPRES,CPROCESO,TDESTINO,TDESTINO_BBDD,CDESCRIP,TPROCESO,TPANTALLA,CACTIVO,TTABLA,CPARA_ERROR,CBORRA_FICH,CBUSCA_HOST,CFORMATO_DECIMALES,CTABLAS,CJOB,CDEBUG,NREGMASIVO) values 
    ('24','406','/app/iaxis12c/tabext','TABEXT','89906298','pac_cargas_conf.f_anota_gescartera_carga','AXISINT001','1','int_agd_observaciones','0','0','0','1','ADM','0','99','1');
  
    --se altera tabla para agregar columna  
    
BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('INT_AGD_OBSERVACIONES','FICHERO');
END;
/
    
ALTER TABLE INT_AGD_OBSERVACIONES
ADD FICHERO varchar2(2000);
COMMIT;
/
