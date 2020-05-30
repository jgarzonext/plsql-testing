--SGM BUG 3324 - SGM Interacción del Rango DIAN con la póliza (No. Certificado)

--1-SE CREA LITERAL


DELETE FROM axis_literales WHERE SLITERA = 89906262;
DELETE FROM axis_codliterales WHERE SLITERA = 89906262;
    
INSERT INTO axis_codliterales VALUES (89906262,3);
    
INSERT INTO axis_literales VALUES (1,89906262,'Carrega danotacions a acords de pagament');
INSERT INTO axis_literales VALUES (2,89906262,'Carga de anotaciones a acuerdos de pago');
INSERT INTO axis_literales VALUES (8,89906262,'Carga de anotaciones a acuerdos de pago');

    
    --2 SE INSERTA LA OPCION DEL MENU

    
DELETE FROM cfg_files WHERE CDESCRIP=89906262;
    
INSERT INTO cfg_files                                   
    (CEMPRES,CPROCESO,TDESTINO,TDESTINO_BBDD,CDESCRIP,TPROCESO,TPANTALLA,CACTIVO,TTABLA,CPARA_ERROR,CBORRA_FICH,CBUSCA_HOST,CFORMATO_DECIMALES,CTABLAS,CJOB,CDEBUG,NREGMASIVO) values 
    ('24','404','/app/iaxis12c/tabext','TABEXT','89906262','pac_cargas_conf.f_anota_acuerdopag_carga','AXISINT001','1','int_agd_observaciones','0','0','0','1','ADM','0','99','1');
  
    --se altera tabla para agregar columna  
BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('AGD_MOVOBS','TOBS');
END;
/
    
ALTER TABLE AGD_MOVOBS
ADD TOBS varchar2(2000);
COMMIT;
/