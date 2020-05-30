--------------------------------------------------------
--  DDL for View VISTA_SAP_PERSONAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_SAP_PERSONAS" ("SPERSON", "RUT", "TRATAMIENTO", "NOMBRE", "CALLE", "NUMERO", "CIUDAD", "PAIS", "REGION", "FCREACION", "FCAMBIO") AS 
  SELECT a.sperson, nnumide || tdigitoide rut, DECODE(csexper,
                                                       1, 'M',
                                                       2, 'F',
                                                       '') tratamiento,
          f_nombre(a.sperson, 3) nombre, b.tnomvia calle,
          b.tnum1ia || ' ' || b.nnumvia || ' ' || b.tcomple numero, b.cpoblac ciudad,
          (SELECT MAX(d.tpais)
             FROM provincias c, paises d
            WHERE d.cpais = c.cpais
              AND c.cprovin = b.cprovin) pais, (SELECT MAX(e.tprovin)
                                                  FROM provincias e
                                                 WHERE e.cprovin = b.cprovin) region,
          a.falta fcreacion, a.fmovimi fcambio
     FROM per_personas a, per_direcciones b
    WHERE b.sperson(+) = a.sperson
      AND b.cdomici(+) = 1
      AND pac_contexto.f_inicializarctx
                              (pac_parametros.f_parempresa_t(f_parinstalacion_n('EMPRESADEF'),
                                                             'USER_BBDD')) = 0
;
  GRANT UPDATE ON "AXIS"."VISTA_SAP_PERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_SAP_PERSONAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_SAP_PERSONAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_SAP_PERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_SAP_PERSONAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_SAP_PERSONAS" TO "PROGRAMADORESCSI";
