--------------------------------------------------------
--  DDL for Function F_CAPFALL_ULT_ACT_SGT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_CAPFALL_ULT_ACT_SGT" (psseguro IN NUMBER,pfecha   IN NUMBER)
  RETURN number authid current_user IS
    /******************************************************************************
       -- RSC 13/05/2008 Tarea 5645
       NOMBRE:       F_CAPFALL_ULT_ACT_SGT
       DESCRIPCION:  Busca el capital de fallecimiento calculado en la �ltima actualizacion antes de una fecha determinada.
                     Esta funci�n es identica a F_CAPFALL_ULT_ACT pero recibiendo un NUMBER como pfecha de entrada. (por SGT)
       REVISIONES:
       Ver        Date          Author           Description
       ---------  ----------  ---------------  ------------------------------------
       1.0        13/05/2008    RSC(CSI)         CREACION DE LA FUNCI�N
       PARAMETROS:
       INPUT:
              PSSEGUR(number) --> Clave del seguro
              PFECHA(date)    --> Fecha
       RETORNA VALUE:
              VALOR(FECHA)-----> FECHA
    ******************************************************************************/
    valor    number;
    vfecha      date;

BEGIN
   vfecha := to_date(pfecha,'yyyymmdd');
   valor := NULL;

   BEGIN
     FOR regs IN (SELECT ccapfal
                  FROM ctaseguro c, ctaseguro_libreta cl
                  WHERE c.sseguro = psseguro
                    and c.sseguro = cl.sseguro
                    and c.nnumlin = cl.nnumlin
                    AND c.cmovimi = 0
                    AND c.cmovanu <> 1  -- 1 = Anulado
                    AND c.fvalmov <= vfecha
                  order by c.fvalmov desc, c.nnumlin desc) LOOP

        valor := regs.ccapfal;
        EXIT;
     END LOOP;
     RETURN VALOR;
   EXCEPTION
     WHEN OTHERS THEN
      RETURN NULL;
   END;
END ;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_CAPFALL_ULT_ACT_SGT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_CAPFALL_ULT_ACT_SGT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_CAPFALL_ULT_ACT_SGT" TO "PROGRAMADORESCSI";
