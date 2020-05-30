BEGIN
EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('TOMADORES','CAGRUPA');
ALTER TABLE TOMADORES ADD (CAGRUPA NUMBER);
---
COMMENT ON COLUMN "TOMADORES"."CAGRUPA" IS 'Agrupacion de Consorcios V.F 8002007';
--
EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('ESTTOMADORES','CAGRUPA');
ALTER TABLE ESTTOMADORES ADD (CAGRUPA NUMBER);
--
COMMENT ON COLUMN "ESTTOMADORES"."CAGRUPA" IS 'Agrupacion de Consorcios V.F 8002007';
--
EXEC PAC_SKIP_ORA.P_COMPROVACOLUMN('HISTOMADORES','CAGRUPA');
ALTER TABLE HISTOMADORES ADD (CAGRUPA NUMBER);
--
COMMENT ON COLUMN "HISTOMADORES"."CAGRUPA" IS 'Agrupacion de Consorcios V.F 8002007';
--
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,673001,'AXISCTR002','CAGRUPA',2,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,673001,'AXISCTR002','td_CAGRUPA',2,0);
--
update pds_supl_validacio set TSELECT = 'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT sperson, cagrupa
             FROM tomadores t
            WHERE sseguro = :pssegpol
           MINUS
           SELECT spereal, cagrupa
             FROM esttomadores t,estper_personas e
            WHERE  t.sseguro = :psseguro
                AND t.sperson = e.sperson); END;'
WHERE cconfig like 'conf_696_%_suplemento_tf';
--
BEGIN
pac_skip_ora.p_comprovadrop('OB_IAX_TOMADORES','TYPE');
END;
---
COMMIT;
EXCEPTION WHEN OTHERS THEN
NULL;
END;
/
