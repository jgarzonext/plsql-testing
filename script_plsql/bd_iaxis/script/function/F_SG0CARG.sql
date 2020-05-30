--------------------------------------------------------
--  DDL for Function F_SG0CARG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_SG0CARG" (U_login        IN VARCHAR2,
                                      p_Term         IN NUMBER,
                                      p_Prod         IN NUMBER,
                                      p_Emp          IN NUMBER,
                                      p_Lram         IN VARCHAR2,
                                      p_Import       IN NUMBER,
                                      p_Fval         IN DATE,
                                      p_CCCCARG      IN VARCHAR2,
                                      p_NIF          IN VARCHAR2,
                                      p_CCCABO       IN VARCHAR2,
                                      p_Tipop        IN NUMBER,
                                      p_Nomaseg      IN VARCHAR2,
                                      p_NPoliza      IN NUMBER,
                                      p_Observ       IN VARCHAR2,
                                      o_CODERROR     OUT NUMBER,
                                      o_MSGERROR     OUT VARCHAR2)
   RETURN BOOLEAN AUTHID CURRENT_USER IS
-- U_login : Codi d'Usuari que realitza l'operaci�
-- p_Term : Codi de Terminal
-- p_Prod : Codi de Producte
-- p_Emp : Codi d'Empresa
-- p_Lram : Literal del producte (Descripci� Curta)
-- p_Import : Import del c�rrec (ha de ser un valor sencer i les dues darreres posicions ser�n tractades com a decimals al Host.
--            Per exemple, si l'import del c�rrec �s 30 eur el valor a passar ser� 3000;
--                         si l'import �s 23,56 el valor a passar ser� 2356
-- p_Fval : Data de Valoraci� de l'operaci�
-- p_CCCCARG : CCC on es realitzar� el c�rrec
-- p_NIF : NIF del titular del compte
-- p_CCCABO : CCC on es realitzar� l'abonament
-- p_Tipop : Tipus d'operaci�. Els valors possibles s�n: 1.Alta, 2.Aportaci�, 3.Rebut
-- p_Nomaseg : Nom del Prenedor/Assegurat
-- p_NPoliza : NPoliza del contracte (si es colectivo, el certificado)
-- p_Observ : Observaciones
-- o_CODERROR : Codi de l'error del Host
-- o_MSGERROR : Literal de l'error del Host


-- Els valors de RETORN de la funci�n s�n:
-- . TRUE => El c�rrec s'ha realitzat correctament
-- . FALSE => S'ha produit un error a l'operaci� de c�rrec. El codi i el literal retornats pel Host es retornen als par�metres de sortida o_CODERROR i o_MSGERROR respectivament

BEGIN

  -- p_Term = 0 (Mal); p_Term = 1 (Bien)

  IF p_Term = 0 THEN
     o_CODERROR := 151295;  -- No se ha podido cobrar el recibo en el Host
     o_MSGERROR := f_literal(o_CODERROR, F_IdiomaUser);
     Return False;
  ELSE
     Return True;
  END IF;

END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_SG0CARG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_SG0CARG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_SG0CARG" TO "PROGRAMADORESCSI";
