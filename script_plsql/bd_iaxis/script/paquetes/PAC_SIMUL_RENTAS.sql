--------------------------------------------------------
--  DDL for Package PAC_SIMUL_RENTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_SIMUL_RENTAS" AUTHID CURRENT_USER IS
/******************************************************************************
  Package encargado de las simulaciones

******************************************************************************/

   -- Cridada per quan les dades s�n a la taulas EVOLUPROVMAT
   FUNCTION f_get_evoluprovmat(
      pssolicit IN NUMBER,
      pndurper IN NUMBER,
      pnanyos_transcurridos IN NUMBER,
      pnum_err OUT NUMBER)
      RETURN t_det_simula_rentas;

   -- Cridada quan les dades NO s�n a la taula EVOLUPROVMAT i s'han de calculat
   FUNCTION f_get_dades_calculades(
      ptipo IN NUMBER,
      psproduc IN NUMBER,
      pssolicit IN NUMBER,
      pfefecto IN DATE,
      piprima IN NUMBER,
      pcidioma_user IN literales.cidioma%TYPE,
      fvencim IN DATE,
      pfnacimi1 IN DATE,
      pndurper IN NUMBER,
      pcpais1 IN NUMBER,
      pnum_err OUT NUMBER,
      pintec IN NUMBER DEFAULT NULL)
      RETURN ob_resp_simula_rentas;

   FUNCTION f_genera_sim_rentas(
      ptipo IN NUMBER,
      psproduc IN NUMBER,
      pnombre1 IN VARCHAR2,
      ptapelli1 IN VARCHAR2,
      pfnacimi1 IN DATE,
      psexo1 IN NUMBER,
      pnombre2 IN VARCHAR2,
      ptapelli2 IN VARCHAR2,
      pfnacimi2 IN DATE,
      psexo2 IN NUMBER,
      piprima IN NUMBER,
      pndurper IN NUMBER,
      pfoper IN DATE,
      pctrcap IN NUMBER,
      valtashi IN NUMBER,
      pcttashi IN NUMBER,
      capdisphi IN NUMBER,
      pctreversrtrvd IN NUMBER,
      fecoperhi IN DATE,
      rentpercrt IN NUMBER,
      psseguro IN NUMBER,
      pfefecto IN DATE,
      pfvencim IN DATE,
      pforpagorenta IN NUMBER,
      pssolicit OUT NUMBER,
      pintec IN NUMBER DEFAULT NULL)
      RETURN NUMBER;
/*    -- Ref 2253. : F_GENERA_SIM_PP.
  --       La funci� retornar� 0 (tot correcte) o el n�mero d'error (hi ha un error)
  --
  --  Par�metres entrada
  --    psProduc                Producte
  --    psSeguro                Identificaci� de l'asseguran�a. Obligatoris quan pTipo = 2
  --    pcAgente
  --    pPersona1               Estructura amb les dades de la persona 1
  --      sPerson                 Identificador de la p�lissa. Pot ser a NULL per la simulaci�.
  --      tNombre                 Nom de l'assegurat
  --      tApellido               Cognom de l'assegurat
  --      fNacimiento             Data de Naixement de l'assegurat
  --      cSexo                   Sexe de l'assegurat:     1 - Home,  2- Dona
  --      cPais                   Codi de l'estat de resid�ncia de l'assegurat
  --      cIdioma                 Idioma per la impressi� de la simulaci�.
  --    pPersona2               Estructura amb les dades de la persona 2
  --      sPerson                 Identificador de l'assegurat. Pot ser a NULL per la simulaci�.
  --      tNombre                 Nom de l'assegurat
  --      tApellido               Cognom de l'assegurat
  --      fNacimiento             Data de Naixement de l'assegurat
  --      cSexo                   Sexe de l'assegurat:     1 - Home,  2- Dona
  --      cPais                   Codi de l'estat de resid�ncia de l'assegurat
  --      cIdioma                 No utilitzat.
  --    pfEfecto                Data d'efecte de la p�lissa
  --    pfVencim                Data de la jubilaci� de la Persona 1
  --    piPrima                 Import de la prima inicial. M�nim 30�.
  --    piPeriodico             Aportaci� peri�dica. M�nim 30�.
  --    ppInteres               Percentatge d'inter�s
  --    ppRevalorizacion        Percentatge de revaloritzaci�
  --    ppInteres_Pres          Inter�s de les prestacions
  --    ppRevalorizacion_Pres   Percentatge de revaloritzaci� de les prestacions. A NULL per PE i PPA
  --    ppReversion_Pres        Percentatge de reversi� a les prestacions. A NULL per PE i PPA
  --    pAnosRenta_Pres
  FUNCTION f_genera_sim_pp( psproduc IN NUMBER, psseguro IN NUMBER,
                            -- Persona 1
                            ptNombre1      IN PERSONAS.TNOMBRE%TYPE,
                            ptApellido1    IN PERSONAS.TAPELLI%TYPE,
                            pfNacimiento1  IN PERSONAS.FNACIMI%TYPE,
                            pcSexo1        IN PERSONAS.CSEXPER%TYPE,
                            -- Persona 2
                            ptNombre2      IN PERSONAS.TNOMBRE%TYPE,
                            ptApellido2    IN PERSONAS.TAPELLI%TYPE,
                            pfNacimiento2  IN PERSONAS.FNACIMI%TYPE,
                            pcSexo2        IN PERSONAS.CSEXPER%TYPE,
                            pfefecto IN DATE, pfvencim IN DATE,
                            piprima IN NUMBER, piperiodico IN NUMBER,
                            ppInteres IN NUMBER, pprevalorizacion IN NUMBER,
                            ppinteres_pres IN NUMBER, pprevalorizacion_pres IN NUMBER DEFAULT NULL, preversion_pres IN NUMBER DEFAULT NULL, panosrenta_pres IN NUMBER DEFAULT NULL)
      RETURN NUMBER;
  -- Ref 2253. : F_GENERA_SIM_PP.
  --
  --  F_GET_DADES_PP: Carrega les dades que s�n a SIMULAPP i DETSIMULAPP a un objecte tipus OB_RESP_SIMULA_PP
  --
  --  Par�metres
  --    pcidioma_user   Idioma en que mostrar l'error
  FUNCTION f_get_dades_pp (pcidioma_user IN LITERALES.CIDIOMA%TYPE) RETURN ob_resp_simula_pp;

*/
END pac_simul_rentas;

/

  GRANT EXECUTE ON "AXIS"."PAC_SIMUL_RENTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_SIMUL_RENTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_SIMUL_RENTAS" TO "PROGRAMADORESCSI";
