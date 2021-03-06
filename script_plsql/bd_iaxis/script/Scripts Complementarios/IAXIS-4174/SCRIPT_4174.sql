DELETE FROM CFG_LANZAR_INFORMES_PARAMS WHERE CMAP ='procesofiscal' AND TPARAM = 'CRAMO';
DELETE FROM CFG_LANZAR_INFORMES_PARAMS WHERE CMAP ='procesofiscal' AND TPARAM = 'CTRAMITAD';

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR)
values (24,'AXISLIST003','procesofiscal','GENERAL',0,'GENERAL','CRAMO',3,100784,1,1,'SELECT:select 0 v, ''TODOS'' D FROM DUAL UNION select CRAMO v, tramo d from ramos where cidioma = 8 AND CRAMO!=810 order by v');

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR)
values (24,'AXISLIST003','procesofiscal','GENERAL',0,'GENERAL','CTRAMITAD',4,9903414,1,1,'SELECT:SELECT ''A'' v , ''TODOS'' d FROM DUAL UNION SELECT CTRAMITAD v,TTRAMITAD d from sin_codtramitador');

COMMIT;