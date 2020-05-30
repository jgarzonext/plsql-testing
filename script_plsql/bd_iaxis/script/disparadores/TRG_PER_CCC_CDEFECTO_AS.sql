--------------------------------------------------------
--  DDL for Trigger TRG_PER_CCC_CDEFECTO_AS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_CCC_CDEFECTO_AS" 
   AFTER INSERT OR UPDATE
   ON per_ccc
DECLARE
   -- Debido a un error de trigger mutante
   vindex         BINARY_INTEGER DEFAULT 0;
   v_count        NUMBER;
   vcdefecto      per_ccc.cdefecto%TYPE;
   vcpagsin       per_ccc.cpagsin%TYPE;
BEGIN
   vindex := 1;

   WHILE vindex <= pac_triggers.vccc_comptador LOOP
      -- Solo actualizaremos si el valor es diferente del anterior y si este pasa a ser 1
      vcdefecto := NULL;
      vcpagsin := NULL;

      IF pac_triggers.vtccc_new(vindex).cdefecto <> pac_triggers.vtccc_old(vindex).cdefecto THEN
         SELECT COUNT(1)
           INTO v_count
           FROM per_ccc
          WHERE sperson = pac_triggers.vtccc_new(vindex).sperson
            AND cagente = pac_triggers.vtccc_new(vindex).cagente
            AND cnordban <> pac_triggers.vtccc_new(vindex).cnordban
            AND cdefecto = 1;

         IF v_count > 0 THEN
            pac_triggers.vccc_trigger := 1;
            vcdefecto := 0;
         END IF;
      END IF;

      -- AXIS3305  JGR 18944  LCOL_P001 - PER - Tarjetas (nota: 0097836) - Inici
      -- ini BUG 21392 - MDS - 17/02/2012
      -- para las empresas que tengan activado SINI_CCC_CPAGSIN = 2, pueden tener activadas todas las ctas. de pago que quieran
      -- para el resto de empresas, SINI_CCC_CPAGSIN <> 2, sólo pueden tener activado como máximo una cta. de pago
      IF NOT((NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa,
                                                'SINI_CCC_CPAGSIN'),
                  0)) = 2) THEN
         IF pac_triggers.vtccc_new(vindex).cpagsin <> pac_triggers.vtccc_old(vindex).cpagsin THEN
            SELECT COUNT(1)
              INTO v_count
              FROM per_ccc
             WHERE sperson = pac_triggers.vtccc_new(vindex).sperson
               AND cagente = pac_triggers.vtccc_new(vindex).cagente
               AND cnordban <> pac_triggers.vtccc_new(vindex).cnordban
               AND cpagsin = 1;

            IF v_count > 0 THEN
               pac_triggers.vccc_trigger := 1;
               vcpagsin := 0;
            END IF;
         END IF;
      END IF;

      -- fin BUG 21392 - MDS - 17/02/2012
      IF vcdefecto IS NOT NULL
         OR vcpagsin IS NOT NULL THEN
         UPDATE per_ccc
            SET cdefecto = NVL(vcdefecto, cdefecto),
                cpagsin = NVL(vcpagsin, cpagsin)
          WHERE sperson = pac_triggers.vtccc_new(vindex).sperson
            AND cagente = pac_triggers.vtccc_new(vindex).cagente
            AND cnordban <> pac_triggers.vtccc_new(vindex).cnordban;
      END IF;

      -- AXIS3305  JGR 18944  LCOL_P001 - PER - Tarjetas (nota: 0097836) - Fi
      vindex := vindex + 1;
   END LOOP;

   pac_triggers.vccc_comptador := 0;
   pac_triggers.vccc_trigger := 0;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'trg_per_ccc_cdefecto_as', 1,
                  pac_triggers.vccc_comptador || '-' || pac_triggers.vtccc_new(vindex).sperson
                  || '-' || pac_triggers.vtccc_new(vindex).cnordban,
                  SQLERRM);
      pac_triggers.vccc_comptador := 0;
      pac_triggers.vccc_trigger := 0;
END;







/
ALTER TRIGGER "AXIS"."TRG_PER_CCC_CDEFECTO_AS" ENABLE;
