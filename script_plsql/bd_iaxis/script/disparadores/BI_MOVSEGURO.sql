--------------------------------------------------------
--  DDL for Trigger BI_MOVSEGURO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_MOVSEGURO" 
   BEFORE INSERT OR UPDATE
   ON movseguro
   FOR EACH ROW
DECLARE
   ssegur         NUMBER;
   t_producto     VARCHAR2(10);
   clase          VARCHAR2(10);
   vsproduc       NUMBER(6) := 0;
   venvia         NUMBER(1) := 0;
   moneda         NUMBER(1);
   ramo           NUMBER(8);
   modalidad      NUMBER(2);
   tipseg         NUMBER(2);
   colect         NUMBER(2);
   npk            NUMBER(9);
   situac         NUMBER(2);
   codcomp        NUMBER(3);
   nctrl          NUMBER;
   vcagente       NUMBER;
   vcgrupo        VARCHAR2(10);
   vnumerr        NUMBER;
   VNMOVIMI       number;
   vcactivi      number;

BEGIN
   ssegur := :NEW.sseguro;

   ----
   select CRAMO, CMODALI, CTIPSEG, CCOLECT, CSITUAC, SPRODUC, CAGENTE, CACTIVI
     INTO ramo, modalidad, tipseg, colect, situac, vsproduc, vcagente, vcactivi
     FROM seguros
    WHERE sseguro = ssegur;

-- CONF-547
   vnmovimi := :NEW.nmovimi;
   BEGIN
      SELECT cgrupo
        INTO vcgrupo
        FROM detgrupodian
       where SPRODUC = VSPRODUC
       AND CACTIVI = vcactivi;

       vnumerr := PAC_RANGO_DIAN.f_generar_certificado(ssegur, vnmovimi, vcagente, vcgrupo, vcactivi);

   EXCEPTION
      WHEN OTHERS THEN
         NULL;
   END;
-- CONF-547

EXCEPTION
   WHEN OTHERS THEN
      NULL;
END bi_movseguro;

/
ALTER TRIGGER "AXIS"."BI_MOVSEGURO" ENABLE;
