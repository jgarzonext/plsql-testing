/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en la tabla prod_plant_cab para el producto 80011.       
********************************************************************************************************************** */

DELETE FROM prod_plant_cab
WHERE SPRODUC = 80011
and ctipo IN (0, 8, 21)
and ccodplan = 'CONF800101'; 

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values ('80011','0','CONF800101','1',to_date('01/01/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('05/04/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values ('80011','21','CONF800101','1',to_date('01/01/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('05/04/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values ('80011','8','CONF800101','1',to_date('01/01/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('05/04/19','DD/MM/RR'),null,null);

COMMIT;
/