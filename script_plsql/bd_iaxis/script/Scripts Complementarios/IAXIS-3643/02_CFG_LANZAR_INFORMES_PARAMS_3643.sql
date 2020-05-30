/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza e inserta en la tabla CFG_LANZAR_INFORMES_PARAMS.          
********************************************************************************************************************** */ 

update CFG_LANZAR_INFORMES_PARAMS
set norder = 5
where cmap like 'Congar7'
and tparam = 'PFINICIO'; 

update CFG_LANZAR_INFORMES_PARAMS
set norder = 6
where cmap like 'Congar7'
and tparam = 'PFFIN'; 

update CFG_LANZAR_INFORMES_PARAMS
set norder = 7
where cmap like 'Congar7'
and tparam = 'PCSUCURSAL';

update CFG_LANZAR_INFORMES_PARAMS
set norder = 8
where cmap like 'Congar7'
and tparam = 'PCTENEDOR';

update CFG_LANZAR_INFORMES_PARAMS
set norder = 9
where cmap like 'Congar7'
and tparam = 'PCUSUARIO';

update CFG_LANZAR_INFORMES
set lexport = 'XLSX|PDF'
where cmap like 'Congar7';

delete from CFG_LANZAR_INFORMES_PARAMS
where cmap like 'Congar7'
and tparam = 'PCESTADOFIN';

delete from CFG_LANZAR_INFORMES_PARAMS
where cmap like 'Congar7'
and tparam = 'PCESTADOINI';

delete from CFG_LANZAR_INFORMES_PARAMS
where cmap like 'Congar7'
and tparam = 'PCESTADO';

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values (24,'AXISLIST003','Congar7','GENERAL',0,'GENERAL','PCESTADO',3,89906307,2,0,'SELECT:select catribu v,  tatribu d FROM detvalores where cvalor = 8001038 and cidioma = f_usu_idioma');

delete from CFG_LANZAR_INFORMES_PARAMS
where cmap like 'Congar7'
and tparam = 'PCESTADO2';

Insert into CFG_LANZAR_INFORMES_PARAMS (CEMPRES,CFORM,CMAP,TEVENTO,SPRODUC,CCFGFORM,TPARAM,NORDER,SLITERA,CTIPO,NOTNULL,LVALOR) 
values (24,'AXISLIST003','Congar7','GENERAL',0,'GENERAL','PCESTADO2',4,89906308,2,0,'SELECT:select catribu v,  tatribu d FROM detvalores where cvalor = 8001038 and cidioma = f_usu_idioma');

   COMMIT;
/