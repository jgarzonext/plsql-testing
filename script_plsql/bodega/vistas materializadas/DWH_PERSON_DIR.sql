--------------------------------------------------------
--  DDL for Materialized View DWH_PERSON_DIR
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_PERSON_DIR" ("COD_AGENTE", "DES_AGENTE", "COD_PERSONA", "COD_DOMICILIO", "NNUMNIF", "NOMBRE", "APELLIDO1", "APELLIDO2", "COD_SEXO", "DES_SEXO", "FEC_NACIMI", "COD_TIPBAN", "DES_TIPBAN", "COD_CBANCAR", "SNIP", "DOMICILIO", "COD_POSTAL", "COD_TIPODIREC", "DES_TIPODIRECCION", "COD_COMUNA", "DES_COMUNA", "TELEFONO", "FAX", "EMAIL", "TDIGITOIDE")
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
  AS SELECT pd.cagente cod_agente, ff_desagente_per(pd.cagente) des_agente, p.sperson cod_persona,
       d.cdomici cod_domicilio, p.nnumide nnumnif, pd.tnombre nombre, pd.tapelli1 apellido1,
       pd.tapelli2 apellido2, p.csexper cod_sexo, ff_desvalorfijo(11, 2, p.csexper) des_sexo,
       p.fnacimi fec_nacimi, c.ctipban cod_tipban,
       ff_desvalorfijo(274, 2, c.ctipban) des_tipban, c.cbancar cod_cbancar, p.snip,
       d.tdomici domicilio, d.cpostal cod_postal, d.ctipdir cod_tipodirec,
       ff_desvalorfijo(191, 2, d.ctipdir) des_tipodireccion, d.cpoblac cod_comuna,
       po.tpoblac des_comuna, c1.tvalcon telefono, c2.tvalcon fax, c3.tvalcon email,
       p.tdigitoide
  FROM per_personas p,
       per_detper pd,
       per_ccc c,
       per_direcciones d,
       poblaciones po,
       (SELECT sperson, tvalcon, cagente
          FROM per_contactos ct
         WHERE ctipcon = 1
           AND cmodcon = (SELECT MIN(ct2.cmodcon)
                            FROM per_contactos ct2
                           WHERE ct2.sperson = ct.sperson
                             AND ct.cagente = ct2.cagente
                             AND ct2.ctipcon = 1)) c1,
       (SELECT sperson, tvalcon, cagente
          FROM per_contactos ct3
         WHERE ctipcon = 2
           AND cmodcon = (SELECT MIN(ct4.cmodcon)
                            FROM per_contactos ct4
                           WHERE ct4.sperson = ct3.sperson
                             AND ct3.cagente = ct4.cagente
                             AND ct4.ctipcon = 2)) c2,
       (SELECT sperson, tvalcon, cagente
          FROM per_contactos ct5
         WHERE ctipcon = 3
           AND cmodcon = (SELECT MIN(ct6.cmodcon)
                            FROM per_contactos ct6
                           WHERE ct5.sperson = ct6.sperson
                             AND ct5.cagente = ct6.cagente
                             AND ct6.ctipcon = 3)) c3
 WHERE pd.sperson = d.sperson(+)
   AND pd.cagente = d.cagente(+)
   AND pd.sperson = c1.sperson(+)
   AND pd.cagente = c1.cagente(+)
   AND pd.sperson = c2.sperson(+)
   AND pd.cagente = c2.cagente(+)
   AND pd.sperson = c3.sperson(+)
   AND pd.cagente = c3.cagente(+)
   AND p.sperson = pd.sperson
   AND pd.sperson = c.sperson(+)
   AND pd.cagente = c.cagente(+)
   AND c.cnordban(+) = 1
   AND po.cprovin(+) = d.cprovin
   AND po.cpoblac(+) = d.cpoblac ;

  CREATE INDEX "CONF_DWH"."DWHPERSONDIR_I1" ON "CONF_DWH"."DWH_PERSON_DIR" ("COD_PERSONA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_PERSON_DIR"  IS 'snapshot table for PERSONAS DIRECCIONES (20150908)';
