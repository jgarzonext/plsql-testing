--------------------------------------------------------
--  DDL for Materialized View DIM_ASEGURADOS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DIM_ASEGURADOS" ("PER_CODIGO", "PERSONA", "PERSONA_NOMBRE", "TIPPER", "TIPPER_DESC", "DIRECC_OFICINA", "DIRECC_RESIDENCIA", "CIUDAD", "DEPARTAMENTO", "EMAIL", "TELEFONO_CELULAR", "TELEFONO_OFICINA", "NUM_EXTENSION", "NUM_FAX", "CIIU", "CIIU_DESC", "SUCURSAL", "REPRESENT_LEGAL", "CUMULO_CONFISCO", "CUPO_PROVISIONAL", "CUPO_AFIANZADO", "FECHA_CUPO", "EXENTO_CONTRAGAR", "EXENTO_CIRC_CONOC", "CONFIRED", "PER_FECHA_INGRESO", "FECHA_REGISTRO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 0 INITRANS 2 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS select 
p.sperson PER_CODIGO,
nnumide PERSONA,
tnombre PERSONA_NOMBRE,
ctipper TIPPER,
FF_DESVALORFIJO (85, pac_md_common.f_get_cxtidioma() , p.ctipper) TIPPER_DESC,
' ' DIRECC_OFICINA, --revisar funcion que trae la direccion
' ' DIRECC_RESIDENCIA, --revisar funcion que trae la direccion
' ' CIUDAD,
' ' DEPARTAMENTO,
' ' EMAIL, --revisar funcion que trae contactos
' ' TELEFONO_CELULAR, --revisar funcion que trae contactos
' ' TELEFONO_OFICINA, --revisar funcion que trae contactos
' ' NUM_EXTENSION, --revisar funcion que trae contactos
' ' NUM_FAX, --revisar funcion que trae contactos
 par.nvalpar    CIIU,
' ' CIIU_DESC, --revisar 
' ' SUCURSAL, --revisar
' ' REPRESENT_LEGAL, --revisar
' ' CUMULO_CONFISCO, --revisar
' ' CUPO_PROVISIONAL, --revisar
' ' CUPO_AFIANZADO, --revisar
' ' FECHA_CUPO, --revisar
' ' EXENTO_CONTRAGAR, --revisar
' ' EXENTO_CIRC_CONOC, --revisar
' ' CONFIRED, --revisar
' ' PER_FECHA_INGRESO,--revisar
f_sysdate FECHA_REGISTRO,
'ACTIVO' ESTADO,
to_date('01/01/1986') START_ESTADO,
' ' END_ESTADO,
f_sysdate FECHA_CONTROL,
TRUNC(f_sysdate, 'month') FECHA_INICIAL,
trunc(last_day(sysdate))FECHA_FIN
from per_detper d,per_personas p, asegurados a,PER_PARPERSONAS par
 where d.sperson = p.sperson
 and a.sperson = p.sperson
 and a.sperson = d.sperson
 and par.sperson = a.sperson
 and par.sperson = d.sperson 
 and par.sperson = p.sperson
 and par.cparam = 'PER_CCIIU';

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DIM_ASEGURADOS"  IS 'snapshot table for snapshot DWH_CONF.DIM_ASEGURADOS';
