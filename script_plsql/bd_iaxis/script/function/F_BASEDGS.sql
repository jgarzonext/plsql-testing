--------------------------------------------------------
--  DDL for Function F_BASEDGS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_BASEDGS" (
   psseguro IN NUMBER,
   pfdata IN DATE,
   pnriesgo IN NUMBER,
   pnerror OUT NUMBER)
   RETURN NUMBER AUTHID CURRENT_USER IS
--
--  ALLIBADM. OBT� LA BASE PEL C�LCUL DE LA DGS.
--
-- PARA EL COASEGURO TENEMOS LA TOTALIDAD DE LA PRIMA
--               EN IPRITOT EN VEZ DE IPRIANU
--
   CURSOR cur_garant IS
      SELECT DISTINCT (cgarant)
                 FROM garanseg
                WHERE sseguro = psseguro
                  AND TRUNC(pfdata) >= TRUNC(finiefe)
                  AND TRUNC(pfdata) < TRUNC(NVL(ffinefe, pfdata + 2))
                  AND nriesgo = NVL(pnriesgo, nriesgo);

   xiprima        NUMBER := 0;
   xtotprima      NUMBER := 0;
   xcgarant       NUMBER;
   xcramo         NUMBER;
   xcmodali       NUMBER;
   xctipseg       NUMBER;
   xccolect       NUMBER;
   xcactivi       NUMBER;
   xcimpdgs       NUMBER;
BEGIN
   IF psseguro IS NOT NULL
      AND pfdata IS NOT NULL THEN
      BEGIN
         SELECT cramo, cmodali, ctipseg, ccolect,
                pac_seguros.ff_get_actividad(sseguro, pnriesgo)
           INTO xcramo, xcmodali, xctipseg, xccolect,
                xcactivi
           FROM seguros
          WHERE sseguro = psseguro;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            pnerror := 101903;   -- ASSEGURAN�A NO TROBADA A SEGUROS
            RETURN NULL;
         WHEN OTHERS THEN
            pnerror := 101919;   -- ERROR AL LLEGIR DE SEGUROS
            RETURN NULL;
      END;

      OPEN cur_garant;

      FETCH cur_garant
       INTO xcgarant;

      WHILE cur_garant%FOUND LOOP
         BEGIN
            SELECT cimpdgs
              INTO xcimpdgs
              FROM garanpro
             WHERE cramo = xcramo
               AND cmodali = xcmodali
               AND ccolect = xccolect
               AND ctipseg = xctipseg
               AND cgarant = xcgarant
               AND cactivi = xcactivi;
         EXCEPTION
            WHEN NO_DATA_FOUND THEN
               --BUG9595
               BEGIN
                  SELECT cimpdgs
                    INTO xcimpdgs
                    FROM garanpro
                   WHERE cramo = xcramo
                     AND cmodali = xcmodali
                     AND ccolect = xccolect
                     AND ctipseg = xctipseg
                     AND cgarant = xcgarant
                     AND cactivi = 0;
               EXCEPTION
                  WHEN NO_DATA_FOUND THEN
                     pnerror := 104110;   -- PRODUCTE NO TROBAT A GARANPRO

                     CLOSE cur_garant;

                     RETURN NULL;
                  --FI BUG9595
                  WHEN OTHERS THEN
                     pnerror := 103503;   -- ERROR AL LLEGIR DE LA TAULA GARANPRO

                     CLOSE cur_garant;

                     RETURN NULL;
               END;
            WHEN OTHERS THEN
               pnerror := 103503;   -- ERROR AL LLEGIR DE LA TAULA GARANPRO

               CLOSE cur_garant;

               RETURN NULL;
         END;

         IF xcimpdgs = 1 THEN   -- ES BUSCA LA BASE PEL C�LCUL DE LA DGS
            BEGIN
               SELECT SUM(NVL(ipritot, 0))   -- YSR COASEGURO
                 INTO xiprima
                 FROM garanseg
                WHERE sseguro = psseguro
                  AND cgarant = xcgarant
                  AND nriesgo = NVL(pnriesgo, nriesgo);
            EXCEPTION
               WHEN NO_DATA_FOUND THEN
                  pnerror := 103839;   -- GARANTIA NO TROBADA A GARANSEG

                  CLOSE cur_garant;

                  RETURN NULL;
               WHEN OTHERS THEN
                  pnerror := 103500;   -- ERROR AL LLEGIR DE GARANSEG

                  CLOSE cur_garant;

                  RETURN NULL;
            END;

            xtotprima := xtotprima + NVL(xiprima, 0);
         END IF;

         FETCH cur_garant
          INTO xcgarant;
      END LOOP;

      CLOSE cur_garant;

      pnerror := 0;
      RETURN xtotprima;
   ELSE
      pnerror := 101901;   -- PAS INCORRECTE DE PAR�METRES A LA FUNCI�
      RETURN NULL;
   END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_BASEDGS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_BASEDGS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_BASEDGS" TO "PROGRAMADORESCSI";
