select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual;
/
declare

begin
  
delete 
FROM  PROD_PLANT_CAB p
where p.sproduc = 80011
and ccodplan = 'CONF800112';

  
insert into PROD_PLANT_CAB (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (80011, 1, 'CONF800102', 1, sysdate, null, null, 0, null, null, null, null, null, null, 'AXIS', sysdate, null, null);

insert into PROD_PLANT_CAB (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (80011, 12, 'CONF800102', 1, sysdate, null, null, 0, null, null, null, null, null, null, 'AXIS', sysdate, null, null);

commit;
 
end;
