--------------------------------------------------------
--  DDL for Function F_CESTREC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_CESTREC" (pnrecibo IN NUMBER, pfestrec IN DATE)
   RETURN NUMBER AUTHID CURRENT_USER IS
--
-- F_CESTREC   Devuelve "como valor" la situaci�n de un recibo en una
--       fecha
-- debido a una modificaci�n en la funci�n f_movrecibo que
--                       graba las fechas de inicio y fin truncadas podemos
--                       optimizar este proceso ya que para varios movimientos en el mismo d�a
--                       nos devolver� directamente el �ltimo.
--
-- Si la fecha que nos pasan es NULL, no miramos la fecha del movrecibo
--El �ltimo estado basta mirar el que FMOVFIN is null [no es necesario hacer previamente un MAX(SMOVREC)]
   estado         NUMBER;
   xcestaux       NUMBER;
BEGIN
   SELECT NVL(cestaux, 0)
     INTO xcestaux
     FROM recibos
    WHERE nrecibo = pnrecibo;

   -- Bug 8745 - 01/04/2009 - RSC - Adaptaci�n iAxis a productos colectivos con certificados
   -- A�adimos xcestaux = 2
   IF xcestaux = 0
      OR xcestaux = 2
      OR xcestaux = 1 THEN   -- V�lid (en vigor)
      IF pfestrec IS NOT NULL THEN
         SELECT cestrec
           INTO estado
           FROM movrecibo
          WHERE nrecibo = pnrecibo
            AND TRUNC(pfestrec) >= fmovini
            AND(TRUNC(pfestrec) < fmovfin
                OR fmovfin IS NULL);
      ELSE
         --SMF :miramos el estado del recibo del �timo movimiento
         SELECT cestrec
           INTO estado
           FROM movrecibo
          WHERE nrecibo = pnrecibo
            AND fmovfin IS NULL;
      END IF;

      RETURN estado;
   ELSE
      RETURN NULL;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      RETURN NULL;
END;

/

  GRANT EXECUTE ON "AXIS"."F_CESTREC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_CESTREC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_CESTREC" TO "PROGRAMADORESCSI";
