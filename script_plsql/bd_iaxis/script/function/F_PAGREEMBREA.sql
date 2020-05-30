--------------------------------------------------------
--  DDL for Function F_PAGREEMBREA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_PAGREEMBREA" (
   psseguro IN NUMBER,
   pnriesgo IN NUMBER,
   pcgarant IN NUMBER,
   pnreemb IN NUMBER,
   pnfact IN NUMBER,
   pnlinea IN NUMBER,
   pfacto IN DATE,
   pipago IN NUMBER)
   RETURN NUMBER AUTHID CURRENT_USER IS
/***********************************************************************
    F_PAGREEMBREA: Aquesta funci� permet crear moviments d'abonament, per
                   part de les companyies de reasseguran�a, a concepte dels
                   pagaments de reembossaments.
                   Aquests moviments queden a CESIONESREA.
                   Es realitzen a partir de les dades i percentatges de
                   cessi� que figuren en els moviments de cessions
                   efectuades, sempre en funci� de les dates cobertes per la
                   cessi� amb relaci� a la data en que s'ha produit el
                   pagament del reembossament.
                   Primer buscarem cessions de igual garant�a i, si no en
                   trobem, buscarem cessions del risc afectat amb la garant�a
                   a NULL.

               Els tipus o motius de moviment considerats (cessions) son:
                   01 - regularitzaci�
                   03 - nova producci�
                   04 - suplement
                   05 - cartera
                   07 - Suplementos
                   09 - rehabilitaci� p�lissa
                   40 - canvi data renovaci�

               El tipus per pagament de sinistres es el 02.
               Casos especials:
                  - Si es una garant�a 9999 ( despeses sinistre ), no
                    es t� en compte la garantia de la cessi� a CESIONESREA.
                  - Si es ram 40 o ram 51 ( Salut migrat de l'INFORMIX ),
                    no es t� en compte el risc de la cessi� perqu� sempre
                    es 1.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        ??/??/????   ???                1. Creaci�n del package.
   2.0        02/09/2009   DRA                2. 0010775: CRE069 - Modificaci�n fichero de transferencias para reembolsos
   3.0        12/01/2010    JGR               3. 0012611: CRE - Rea - reemborsament duplicats
   4.0        04/09/2012   AVT                4. 0023261: CRE800 - Reasseguran�a reembosaments
***********************************************************************/
   codi_error     NUMBER := 0;
   w_scesrea      cesionesrea.scesrea%TYPE;
   w_icesion      cesionesrea.icapces%TYPE;
   w_trovat       NUMBER(1);
   avui           cesionesrea.fgenera%TYPE;
   lcforpag       seguros.cforpag%TYPE;
   lsproduc       seguros.sproduc%TYPE;

   CURSOR cur_cesion1 IS
      SELECT *
        FROM cesionesrea
       WHERE sseguro = psseguro
         AND nriesgo = pnriesgo
         AND(cgarant IS NOT NULL
             AND cgarant = pcgarant)
         AND(cgenera = 01
             OR cgenera = 03
             OR cgenera = 04
             OR cgenera = 05
             -- BUG 12611 - 12/01/2010 - JGR - No s'ha de tenir en compte els CGENERA=7 (suplements)
             --> OR cgenera = 07
             --FI BUG 12611 - 12/01/2010 - JGR)
             OR cgenera = 09
             OR cgenera = 40)
         AND fefecto <= pfacto
         AND fvencim > pfacto
         AND(fanulac > pfacto
             OR fanulac IS NULL)
         AND(fregula > pfacto
             OR fregula IS NULL);

   CURSOR cur_cesion2 IS
      SELECT *
        FROM cesionesrea
       WHERE sseguro = psseguro
         AND nriesgo = pnriesgo
         AND cgarant IS NULL
         AND(cgenera = 01
             OR cgenera = 03
             OR cgenera = 04
             OR cgenera = 05
             -- BUG 12611 - 12/01/2010 - JGR - No s'ha de tenir en compte els CGENERA=7 (suplements)
             --> OR cgenera = 07
             --FI BUG 12611 - 12/01/2010 - JGR)
             OR cgenera = 09)
         AND fefecto <= pfacto
         AND fvencim > pfacto
         AND(fanulac > pfacto
             OR fanulac IS NULL)
         AND(fregula > pfacto
             OR fregula IS NULL);
BEGIN
   avui := f_sysdate;

   BEGIN
      SELECT cforpag, sproduc
        INTO lcforpag, lsproduc
        FROM seguros
       WHERE sseguro = psseguro;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'F_PAGREEMBREA', 0, 'SELECT SEGUROS', SQLERRM);
         RETURN 101919;
   END;

   BEGIN
      w_trovat := 0;

      FOR regcesion IN cur_cesion1 LOOP
         w_trovat := 1;

         SELECT scesrea.NEXTVAL
           INTO w_scesrea
           FROM DUAL;

         w_icesion := (pipago * regcesion.pcesion) / 100;

         -- BUG10775:DRA:02/09/2009: se ha de ceder todo el importe
         -- w_icesion := F_Round_Forpag(w_icesion, lcforpag, NULL, lsproduc);
         BEGIN
            INSERT INTO cesionesrea
                        (scesrea, ncesion, icesion, icapces, sseguro,
                         nversio, scontra, ctramo,
                         sfacult, nriesgo, scumulo, cgarant,
                         spleno, ccalif1, ccalif2, nmovimi, nsinies,
                         fefecto, fvencim, pcesion, sproces, cgenera, fgenera,
                         sidepag, nmovigen, nreemb, nfact, nlinea)
                 VALUES (w_scesrea, regcesion.ncesion, w_icesion, 0, psseguro,
                         regcesion.nversio, regcesion.scontra, regcesion.ctramo,
                         regcesion.sfacult, pnriesgo, regcesion.scumulo, regcesion.cgarant,
                         regcesion.spleno, regcesion.ccalif1, regcesion.ccalif2, NULL, NULL,   -- nsinies
                         pfacto, pfacto, regcesion.pcesion, regcesion.scesrea,   -- scesrea original
                                                                              02,   -- a sproces...
                                                                                 avui,
                         NULL   -- sidepag
                             , 0, pnreemb, pnfact, pnlinea);
         EXCEPTION
            WHEN OTHERS THEN
               p_tab_error(f_sysdate, f_user, 'F_PAGREEMBREA', 0, SQLERRM, NULL);
               codi_error := 104747;
               RETURN(codi_error);
         END;
      END LOOP;

      IF w_trovat = 0 THEN
         FOR regcesion IN cur_cesion2 LOOP
            w_trovat := 1;

            SELECT scesrea.NEXTVAL
              INTO w_scesrea
              FROM DUAL;

            w_icesion := (pipago * regcesion.pcesion) / 100;

            -- BUG10775:DRA:02/09/2009: se ha de ceder todo el importe
            -- w_icesion := F_Round_Forpag(w_icesion, lcforpag, NULL, lsproduc);
            BEGIN
               INSERT INTO cesionesrea
                           (scesrea, ncesion, icesion, icapces, sseguro,
                            nversio, scontra, ctramo,
                            sfacult, nriesgo, scumulo, cgarant,
                            spleno, ccalif1, ccalif2, nmovimi,
                            nsinies, fefecto, fvencim, pcesion, sproces, cgenera,
                            fgenera, sidepag, nmovigen, nreemb, nfact, nlinea)
                    VALUES (w_scesrea, regcesion.ncesion, w_icesion, 0, psseguro,
                            regcesion.nversio, regcesion.scontra, regcesion.ctramo,
                            regcesion.sfacult, pnriesgo, regcesion.scumulo, pcgarant,
                            regcesion.spleno, regcesion.ccalif1, regcesion.ccalif2, NULL,
                            NULL,   -- nsinies
                                 pfacto, pfacto, regcesion.pcesion, regcesion.scesrea,   -- scesrea original
                                                                                      02,   -- a sproces...
                            avui, NULL   -- sidepag
                                      , 0, pnreemb, pnfact, pnlinea);
            EXCEPTION
               WHEN OTHERS THEN
                  p_tab_error(f_sysdate, f_user, 'F_PAGREEMBREA', 0,
                              'INSERT INTO cesionesrea', SQLERRM);
                  codi_error := 104747;
                  RETURN(codi_error);
            END;
         END LOOP;
      END IF;
   END;

   IF w_trovat = 0 THEN   -- Si no es trova cap cessi� en
      p_tab_error(f_sysdate, f_user, 'F_PAGREEMBREA', 0,
                  'w_trovat = 0 (no hi ha cessi�):' || psseguro || ',' || pnriesgo || ','
                  || pcgarant || ',' || pnreemb || ',' || pnfact || ',' || pnlinea || ','
                  || pfacto || ',' || pipago,
                  'INSERT INTO REEMBSINCES a Regularitzar al tancament');
      codi_error := 105595;   -- positiu, es torna situaci� especial...
   END IF;

   RETURN(codi_error);
END f_pagreembrea;

/

  GRANT EXECUTE ON "AXIS"."F_PAGREEMBREA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_PAGREEMBREA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_PAGREEMBREA" TO "PROGRAMADORESCSI";
