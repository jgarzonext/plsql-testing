--------------------------------------------------------
--  DDL for Function FCALCUL_FORMULAS_PROVI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."FCALCUL_FORMULAS_PROVI" (nsesion  IN NUMBER,
                                        psseguro  IN NUMBER,
                                        pfecha   IN number,
                                        pcampo   IN VARCHAR2)
  RETURN NUMBER authid current_user IS
/******************************************************************************
   NOMBRE:
   DESCRIPCION:   Se crea esta funci�n para poder utilizar el pac_provmat_formul.f_calcul_formulas_provi
      desde el GFI (No se puede utilizar porque el nombre de la funci�n es demasiado largo).
      pac_provmat_formul.f_calcul_formulas_provi ==> Funci�n que mira qu� f�rmula se tiene que ejecutar dependiendo del par�metro
       de GARANFORMULA (valor del par�metro pcampo). Una vez tiene esta f�rmula (clave), la ejecuta
       a trav�s de la funci�n PAC_CALCULO_FORMULAS.CALC_FORMUL y el resultado de este c�lculo es lo
       que devuelve la funci�n. Si la p�liza no est� vigente (est� anulada) la funci�n devuelve 0.
       Si no se encuentra ninguna f�rmula asociada la funci�n devuelve null.

   PARAMETROS:
   INPUT: NSESION(number) --> Nro. de sesi�n del evaluador de f�rmulas
          PSEGURO(number) --> secuencia del seguro que se est� consultando
		  PFECHA(number)  --> Fecha de consulta.
          PCAMPO (VARCHAR2) --> Campo para el cual ejecutaremos la formula (p.e. 'ICFALLAC', 'IPROVAC'
   RETORNA VALUE:
          NUMBER------------> Resultado de la f�rmula
******************************************************************************/

BEGIN
     return pac_provmat_formul.f_calcul_formulas_provi(psseguro, to_date(pfecha,'yyyymmdd'), pcampo);
END FCALCUL_FORMULAS_PROVI;
 
 

/

  GRANT EXECUTE ON "AXIS"."FCALCUL_FORMULAS_PROVI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."FCALCUL_FORMULAS_PROVI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."FCALCUL_FORMULAS_PROVI" TO "PROGRAMADORESCSI";
