begin
update SGT_FORMULAS
set formula = '(CAPFINAN*PROBA*CONTGARA/1000000)*(TASAREF)/(1-(RECTARIF/100))'
where clave = 750016;

update SGT_FORMULAS
set FORMULA = '(CAPFINAN*PROCESO*CONTGARA/1000000)*(TASAREF)/(1-(RECTARIF/100))'
where clave = 750061;
commit;
end;
/
DECLARE
   v_sproduc   NUMBER;

   CURSOR c_prod
   IS
      SELECT a.sproduc, b.cgarant
        FROM v_productos a, garanpro b
       WHERE a.sproduc = b.sproduc
         AND a.cramo = b.cramo
         AND a.cmodali = b.cmodali
         AND a.ccolect = b.ccolect
         AND a.ctipseg = b.ctipseg
         AND a.cramo = 801
         AND a.sproduc = 80009
         AND a.cactivo = 1;

   CURSOR c_acti
   IS
      SELECT cactivi
        FROM activiprod
       WHERE sproduc = v_sproduc;
BEGIN
delete detgaranformula
where cconcep = 'TASATEC'
and clave = 750123;
   FOR i IN c_prod
   LOOP
      v_sproduc := i.sproduc;
    
      FOR j IN c_acti
      LOOP
         BEGIN
            INSERT INTO detgaranformula
                        (sproduc, cactivi, cgarant, ccampo, cconcep,
                         norden, clave, clave2, falta, cusualt
                        )
                 VALUES (v_sproduc, j.cactivi, i.cgarant, 'TASA', 'TASATEC',
                         7, 750123, NULL, f_sysdate, f_user
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;
      END LOOP;
   END LOOP;

   COMMIT;
END;
/

BEGIN
   delete SGT_TRANS_FORMULA
   where clave = 750123
   ;
   delete  sgt_formulas
   where clave = 750123; 
   INSERT INTO sgt_formulas
               (clave, codigo, descripcion,
                formula,
                cramo, cutili, crastro
               )
        VALUES (750123, 'TASATEC1', 'Tasa Técnica',
                '(CAPFINAN*PROCESO*CONTGARA/1000000)*(TASAREF)*(TASAPURA)',
                NULL, NULL, NULL
               );
               Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750123, 'TASASUPL');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750123, 'TASAPURA');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750123, 'FACSUSCR');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750123, 'RECTARIF');
COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
DECLARE
   v_sproduc   NUMBER;

   CURSOR c_prod
   IS
      SELECT a.sproduc, b.cgarant
        FROM v_productos a, garanpro b
       WHERE a.sproduc = b.sproduc
         AND a.cramo = b.cramo
         AND a.cmodali = b.cmodali
         AND a.ccolect = b.ccolect
         AND a.ctipseg = b.ctipseg
         AND a.cramo = 801
         AND a.sproduc = 80007
         AND a.cactivo = 1;

   CURSOR c_acti
   IS
      SELECT cactivi
        FROM activiprod
       WHERE sproduc = v_sproduc;
BEGIN
delete detgaranformula
where cconcep = 'TASATEC'
and clave = 750122;
   FOR i IN c_prod
   LOOP
      v_sproduc := i.sproduc;
    
      FOR j IN c_acti
      LOOP
         BEGIN
            INSERT INTO detgaranformula
                        (sproduc, cactivi, cgarant, ccampo, cconcep,
                         norden, clave, clave2, falta, cusualt
                        )
                 VALUES (v_sproduc, j.cactivi, i.cgarant, 'TASA', 'TASATEC',
                         7, 750122, NULL, f_sysdate, f_user
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;
      END LOOP;
   END LOOP;

   COMMIT;
END;
/

BEGIN
   delete SGT_TRANS_FORMULA
   where clave = 750122;
   delete  sgt_formulas
   where clave = 750122; 
   INSERT INTO sgt_formulas
               (clave, codigo, descripcion,
                formula,
                cramo, cutili, crastro
               )
        VALUES (750122, 'TASATEC2', 'Tasa Técnica',
                '(CAPFINAN*PROBA*CONTGARA/1000000)*(TASAREF)*(TASAPURA)',
                NULL, NULL, NULL
               );
               Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750122, 'TASASUPL');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750122, 'TASAPURA');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750122, 'FACSUSCR');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750122, 'RECTARIF');
COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/


---
DECLARE
   v_sproduc   NUMBER;

   CURSOR c_prod
   IS
      SELECT a.sproduc, b.cgarant
        FROM v_productos a, garanpro b
       WHERE a.sproduc = b.sproduc
         AND a.cramo = b.cramo
         AND a.cmodali = b.cmodali
         AND a.ccolect = b.ccolect
         AND a.ctipseg = b.ctipseg
         AND a.cramo = 801
         AND a.sproduc not in ( 80007,80009)
         AND a.cactivo = 1;

   CURSOR c_acti
   IS
      SELECT cactivi
        FROM activiprod
       WHERE sproduc = v_sproduc;
BEGIN
delete detgaranformula
where cconcep = 'TASATEC'
and clave = 750124;
   FOR i IN c_prod
   LOOP
      v_sproduc := i.sproduc;
    
      FOR j IN c_acti
      LOOP
         BEGIN
            INSERT INTO detgaranformula
                        (sproduc, cactivi, cgarant, ccampo, cconcep,
                         norden, clave, clave2, falta, cusualt
                        )
                 VALUES (v_sproduc, j.cactivi, i.cgarant, 'TASA', 'TASATEC',
                         7, 750124, NULL, f_sysdate, f_user
                        );
         EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;
      END LOOP;
   END LOOP;

   COMMIT;
END;
/

BEGIN
   delete SGT_TRANS_FORMULA
   where clave = 750124;
   delete  sgt_formulas
   where clave = 750124; 
   INSERT INTO sgt_formulas
               (clave, codigo, descripcion,
                formula,
                cramo, cutili, crastro
               )
        VALUES (750124, 'TASATEC3', 'Tasa Técnica',
                '(CAPFINAN*TASAEXPE*CONTGARA/1000000)*(TASAREF)*(TASAPURA)',
                NULL, NULL, NULL
               );
               
                Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750124, 'TASASUPL');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750124, 'TASAPURA');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750124, 'FACSUSCR');
Insert into SGT_TRANS_FORMULA
   (CLAVE, PARAMETRO)
 Values
   (750124, 'RECTARIF');
COMMIT;
               commit;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

---
BEGIN
   INSERT INTO sgt_term_form
               (termino, tipo, origen, tdesc, operador
               )
        VALUES ('TASATEC', 'F', 2, 'Tasa Técnica', 1
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/
begin
Insert into CODCAMPO
   (CCAMPO, TCAMPO, CUTILI)
 Values
   ('TASATEC', 'Tasa Técnica', 10);
   COMMIT;

EXCEPTION
            WHEN DUP_VAL_ON_INDEX
            THEN
               NULL;
         END;
/
create table contratos_rt
(csector number,
CCODCONTRATO number,
cclacontrato number,
cclase varchar2(32),
sproduc number

);
/
begin
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    63    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    154    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    155    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    156    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    10    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    162    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    14    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    8    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    49    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    55    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    26    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    27    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    25    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    22    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    23    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    24    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    96    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    113    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    59    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    20    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    19    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    91    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    21    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    106    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    17    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    4720    ,    72    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    47    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    15    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    7    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    160    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    139    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    158    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    135    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    157    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    6    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    50    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    108    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4720    ,    9    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    114    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    1    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    127    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    5    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    4    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    6    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    6    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    6    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    6    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    6    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    6    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    3    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    11    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    130    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    84    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    80    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    12    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    7    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    2    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    54    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    76    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    143    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    45    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    53    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    46    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    57    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    41    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    65    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    73    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    82    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    93    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    42    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    44    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    103    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    3    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    66    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    8    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    92    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    52    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    51    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    43    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    128    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    64    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    83    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    125    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    18    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    5530    ,    60    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    2    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    4    ,    5530    ,    146    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    9    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    9    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    9    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    9    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    9    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    3    ,    0    ,    9    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    1    ,    4290    ,    107    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    95    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    30    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    31    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    120    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    29    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    150    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    159    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    109    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    137    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    140    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    58    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    81    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    75    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    122    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    104    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    141    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    70    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    117    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    126    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    148    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    16    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    138    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    101    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    112    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    110    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    69    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    100    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    147    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    74    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    116    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    132    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    61    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    121    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    115    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    39    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    152    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    153    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    87    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    118    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    78    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    90    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    56    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    67    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    71    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    151    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    94    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    86    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    79    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    105    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    111    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    119    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    11    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    123    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    99    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    133    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    134    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    124    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    136    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    97    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    68    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    40    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    131    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    62    ,    'A'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    32    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    77    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    129    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    4    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    88    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    33    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    34    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    35    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    36    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    37    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80008    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80009    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80010    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80011    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80007    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    48    ,    'C'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    38    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    102    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    98    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    154    ,    'A'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80004    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80005    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80006    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80003    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80002    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80012    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    161    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (    2    ,    4720    ,    144    ,    'B'    ,    80001    );
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	161	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	144	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	161	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80005	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80003	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80006	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80002	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80004	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80012	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	13	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80005	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80006	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80003	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80002	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80004	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80012	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	89	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80005	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80006	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80003	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80002	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80004	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80012	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	85	,	'A'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80005	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80003	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80006	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80002	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80004	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80012	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	1	,	4290	,	28	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	5530	,	5	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	5530	,	5	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	5530	,	5	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	5530	,	5	,	'B'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	7	,	'C'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	7	,	'C'	,	80001	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	7	,	'C'	,	80002	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	7	,	'C'	,	80004	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	7	,	'C'	,	80005	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	7	,	'C'	,	80006	);
insert into contratos_rt (csector,  cclacontrato, CCODCONTRATO, cclase, sproduc) values (	2	,	4720	,	7	,	'C'	,	80012	);

commit;
delete sectoresprod
where cramo = 801
and (csector,cclacontrato, ccodcontrato) not in (select csector, cclacontrato,ccodcontrato from contratos_rt);

commit;
end;
/
begin
update detgaranformula
set clave = 750062
where CCONCEP = 'TPFINAL'
 AND SPRODUC IN (80007,80009);
 commit;
 
 end;
 /
 begin
 update sgt_formulas
 set formula  =  'NVL(VTABLA(9000003, 3333, 1,SPRODUC,CACTIVI,GARANTIA,CDIVISA)*10,0)'
 where clave = 750006;
 commit;
 end;
 /