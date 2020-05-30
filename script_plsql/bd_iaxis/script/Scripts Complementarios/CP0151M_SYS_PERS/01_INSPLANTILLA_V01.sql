-- CONTEXTO
select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual;
-- << ELIMINAR >>

-- CFG_PLANTILLAS_TIPOS
delete cfg_plantillas_tipos c
 where c.ctipo = 85;
-- DETPLANTILLAS
delete detplantillas d
  where d.ccodplan = 'CONFFichaTecCliente';
-- CODIPLANTILLAS
delete codiplantillas c
 where c.ccodplan = 'CONFFichaTecCliente';
-- PROD_PLANT_CAB
delete prod_plant_cab p
 where p.CTIPO = 85
   and CCODPLAN = 'CONFFichaTecCliente';

-- << INSERTAR >>
-- CODIPLANTILLAS
insert into codiplantillas
  (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP, CTIPODOC,
   CFDIGITAL)
values
  ('CONFFichaTecCliente', 0, 'N', 1, 1, 1, 2, null, null);
-- DETPLANTILLAS
insert into detplantillas
  (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CMAPEAD, CFIRMA,
   TCONFFIRMA)
values
  ('CONFFichaTecCliente', 1, 'Ficha Técnica', 'CONFFichaTecCliente.jasper',
   '.', null, 0, null);

insert into detplantillas
  (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CMAPEAD, CFIRMA,
   TCONFFIRMA)
values
  ('CONFFichaTecCliente', 2, 'Ficha Ténica', 'CONFFichaTecCliente.jasper',
   '.', null, 0, null);

insert into detplantillas
  (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CMAPEAD, CFIRMA,
   TCONFFIRMA)
values
  ('CONFFichaTecCliente', 8, 'Ficha Técnica', 'CONFFichaTecCliente.jasper',
   '.', null, 0, null);
-- PROD_PLANT_CAB
insert into prod_plant_cab
  (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA,
   NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA,
   CUSUMOD, FMODIFI)
values
  (0, 85, 'CONFFichaTecCliente', 1,f_sysdate, null, null, 0, null, null, null, null, null, null,
   f_user, f_sysdate, NULL, NULL);
-- CFG_PLANTILLAS_TIPOS
insert into cfg_plantillas_tipos
  (CTIPO, TTIPO, TDESCRIP, CDUPLICA)
values
  (85, 'PERSONA_CLIENTE', 'Persona Ficha', 0);
