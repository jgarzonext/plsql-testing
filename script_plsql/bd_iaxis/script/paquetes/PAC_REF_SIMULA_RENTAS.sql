--------------------------------------------------------
--  DDL for Package PAC_REF_SIMULA_RENTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_REF_SIMULA_RENTAS" authid current_user IS

/******************************************************************************
  Package encargado de las simulaciones de p�lizas de ahorro

******************************************************************************/
	  type cursor_TYPE is ref cursor;

    FUNCTION f_valida_prima_rentas(ptipo IN NUMBER,
    															 psproduc IN NUMBER,
    															 pcactivi IN NUMBER,
    															 pcgarant IN NUMBER,
                                   picapital IN NUMBER,
                                   pcforpag IN NUMBER,
                                   psperson IN NUMBER,
                                   pcpais IN NUMBER,
                                   pcidioma_user IN NUMBER DEFAULT F_IdiomaUser,
                                   pfallaseg IN NUMBER,
                                   tasinmuebHI IN NUMBER,
																	 pcttasinmuebHI IN NUMBER,
																	 capitaldispHI IN NUMBER,
																	 pctrevRT IN NUMBER,
																	 FecOperHI IN DATE,
																	 pforpagorenta IN NUMBER,
                                   coderror OUT NUMBER,
                                   msgerror OUT VARCHAR2)
      RETURN NUMBER;

    FUNCTION f_valida_poliza_renova(pnpoliza IN NUMBER, pncertif IN NUMBER, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser,
                                    ocoderror OUT NUMBER, omsgerror OUT VARCHAR2)
      RETURN NUMBER;

    FUNCTION f_valida_duracion_renova(pnpoliza IN NUMBER, pncertif IN NUMBER, pndurper IN NUMBER, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser,
                                      ocoderror OUT NUMBER, omsgerror OUT VARCHAR2)
      RETURN NUMBER;


/*

JRH 10/2007
f_simulacion_rentas : Simula la p�liza a partir de los datos entrados por el usuario.

Par�metros:
ptipo : 1 alta, 2 renovaci�n
psproduc : Producto
psperson1 : C�digo Persona 1er titular
pnombre1 : Nombre  1er titular
ptapelli1 : Apellido 1er titular
pfnacimi1 : Fecha nacimiento 1er titular
psexo1 : Sexo 1er titular
pcpais1 : Pais 1er titular
psperson2 : C�digo Persona 2o titular
pnombre2 : Nombre  2o titular
ptapelli2 : Apellido 2o titular
pfnacimi2 : Fecha nacimiento 2o titular
psexo2 : Sexo 2o titular
pcpais2 : Pais 2o titular
pcidioma : Idioma 1er titular
pcidioma_user : Idioma usuario
piprima : Prima del periodo.
pndurper : Duraci�n de la p�liza (si es renta temporal) o duraci�n del periodo (caso de rentas que usen per�odo de revisi�n)
pfOper : Fecha efeto de la p�liza
pctrcap : Pct capital de fallecimiento titular 1.
pcagente : Agente
pnpoliza : P�liza si simulamos una revisi�n
pncertif : Nro. de Certificado si simulamos una revisi�n
valTasHI: Tasaci�n inmueble (Hipoteca Inversa)
pctTasHI : % sobre Tasaci�n inmueble (Hipoteca Inversa)
capDispHI : % Capital disponible inmueble (Hipoteca Inversa)
pctReversRTRVD : Pct reversi�n (LRC y RVD)
FecOperHI: Fecha Operaci�n en HI.
rentpercRT: renta a percibir en RT.
ppinttec : Inter�s (RVD)

*/


		FUNCTION f_simulacion_rentas(ptipo IN NUMBER,
  												 psproduc IN NUMBER,
  												 psperson1 IN NUMBER,
  												 pnombre1 IN VARCHAR2,
  												 ptapelli1 IN VARCHAR2,
            							 pfnacimi1 IN DATE,
            							 psexo1 IN NUMBER,
            							 pcpais1 IN NUMBER,
            							 psperson2 IN NUMBER,
            							 pnombre2 IN VARCHAR2,
            							 ptapelli2 IN VARCHAR2,
            							 pfnacimi2 IN DATE,
													 psexo2 IN NUMBER,
													 pcpais2 IN NUMBER,
													 pcidioma IN NUMBER,
													 pcidioma_user IN NUMBER DEFAULT F_IdiomaUser,
													 piprima IN NUMBER,
													 pndurper IN NUMBER,
													 pfOper IN DATE,
													 pctrcap IN NUMBER,
													 pcagente IN NUMBER,
													 pnpoliza IN NUMBER,
													 pncertif IN NUMBER,
													 valTasHI IN NUMBER,
													 pctTasHI IN NUMBER,
													 capDispHI IN NUMBER,
													 FecOperHI IN DATE,
													 pctReversRTRVD IN NUMBER,
													 rentpercRT IN NUMBER,
													 forpagorenta IN NUMBER,
													 pintec IN NUMBER default null
													 ) RETURN ob_resp_simula_rentas;

/*
  --
  -- Ref 2253. : F_SIMULACION_PP.
  --
  --   La funci�n retornar�  un objeto de tipo ob_resp_simula_pp con los datos de los valores garantizados y el error
  --   (si se ha producido)
  --
  --  Par�metres
  --    ptipo: 1 .- Alta
  --           2.- Revisi�n
  --           Si ptipo =2 (revisi�n) los par�metros pnpoliza y pncertif deben venir informados
  --    psProduc                Producte
  --    pcAgente
  --    pcIdioma_user           Idioma de la pantalla
  --    pPersona1               Estructura amb les dades de la persona 1
  --      sPerson                 Identificador de l'assegurat. Pot ser a NULL per la simulaci�.
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
  --    pfVencim                Data de la jubilaci� de la Persona 1
  --    piPrima                 Import de la prima inicial. M�nim 30�.
  --    piPeriodico             Aportaci� peri�dica. M�nim 30�.
  --    ppInteres               Percentatge d'inter�s
  --    ppRevalorizacion        Percentatge de revaloritzaci�
  --    ppInteres_Pres          Inter�s de les prestacions
  --    ppRevalorizacion_Pres   Percentatge de revaloritzaci� de les prestacions. A NULL per PE i PPA
  --    ppReversion_Pres        Percentatge de reversi� a les prestacions. A NULL per PE i PPA
  --    pAnosRenta_Pres
  --

  -- Funci� per ser cridada des del Java
  FUNCTION f_simulacion_PP( psproduc IN NUMBER,
                            pcagente IN NUMBER, pcidioma_user IN NUMBER DEFAULT 1,
                            -- Persona 1
                            psPerson1      IN PERSONAS.SPERSON%TYPE,
                            ptNombre1      IN PERSONAS.TNOMBRE%TYPE,
                            ptApellido1    IN PERSONAS.TAPELLI%TYPE,
                            pfNacimiento1  IN PERSONAS.FNACIMI%TYPE,
                            pcSexo1        IN PERSONAS.CSEXPER%TYPE,
                            pcPais1        IN PERSONAS.CPAIS%TYPE,
                            pcIdioma       IN PERSONAS.CIDIOMA%TYPE,
                            -- Persona 2
                            psPerson2      IN PERSONAS.SPERSON%TYPE,
                            ptNombre2      IN PERSONAS.TNOMBRE%TYPE,
                            ptApellido2    IN PERSONAS.TAPELLI%TYPE,
                            pfNacimiento2  IN PERSONAS.FNACIMI%TYPE,
                            pcSexo2        IN PERSONAS.CSEXPER%TYPE,
                            pcPais2        IN PERSONAS.CPAIS%TYPE,
                            -- Otros
                            pfvencim IN DATE,
                            piprima IN NUMBER, piperiodico IN NUMBER,
                            ppinteres IN NUMBER, pprevalorizacion IN NUMBER,
                            ppinteres_pres IN NUMBER, pprevalorizacion_pres IN NUMBER DEFAULT NULL, ppreversion_pres IN NUMBER DEFAULT NULL, panosrenta_pres IN NUMBER DEFAULT NULL
                            )
    RETURN ob_resp_simula_pp;
*/
END Pac_Ref_Simula_Rentas;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_REF_SIMULA_RENTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_REF_SIMULA_RENTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_REF_SIMULA_RENTAS" TO "PROGRAMADORESCSI";
