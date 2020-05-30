delete from CODIPLANTILLAS
where CCODPLAN in ('SU-OD-03-04', 'SU-OD-08-04', 'SU-OD-38-04');

Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) values ('SU-OD-03-04',0,'S',1,0,0,0,null,null);
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) values ('SU-OD-08-04',0,'S',1,0,0,0,null,null);
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) values ('SU-OD-38-04',0,'S',1,0,0,0,null,null);

delete from DETPLANTILLAS
WHERE ccodplan in ('SU-OD-38-04', 'SU-OD-08-04', 'SU-OD-03-04'); 

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-03-04',1,'SU-OD-03-04 Clausulado Cumplimiento en favor de las entidades otorgantes del sfv','SU-OD-03-04.pdf','.',null,0,null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-03-04',2,'SU-OD-03-04 Clausulado Cumplimiento en favor de las entidades otorgantes del sfv','SU-OD-03-04.pdf','.',null,0,null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-03-04',8,'SU-OD-03-04 Clausulado Cumplimiento en favor de las entidades otorgantes del sfv','SU-OD-03-04.pdf','.',null,0,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-08-04',1,'SU-OD-08-04 Clausulado Cumplimiento de Disposiciones Legales','SU-OD-08-04.pdf','.',null,0,null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-08-04',2,'SU-OD-08-04 Clausulado Cumplimiento de Disposiciones Legales','SU-OD-08-04.pdf','.',null,0,null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-08-04',8,'SU-OD-08-04 Clausulado Cumplimiento de Disposiciones Legales','SU-OD-08-04.pdf','.',null,0,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-38-04',1,'SU-OD-38-04 Clausulado Cumplimiento ante Entidades Publicas con R¿gimen Privado de Contratacion','SU-OD-38-04.pdf','.',null,0,null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-38-04',2,'SU-OD-38-04 Clausulado Cumplimiento ante Entidades Publicas con R¿gimen Privado de Contratacion','SU-OD-38-04.pdf','.',null,0,null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) values ('SU-OD-38-04',8,'SU-OD-38-04 Clausulado Cumplimiento ante Entidades Públicas con Régimen Privado de Contratación','SU-OD-38-04.pdf','.',null,0,null);


UPDATE prod_plant_cab
SET ccodplan = 'SU-OD-38-04'
WHERE sproduc IN (80001, 80002, 80003, 80004, 80005, 80006)
and ccodplan = 'SU-OD-38-03'
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