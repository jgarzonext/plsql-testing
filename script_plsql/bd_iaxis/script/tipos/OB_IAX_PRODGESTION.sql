--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGESTION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGESTION
   PROP�SITO:  Contiene informaci�n de la gesti�n del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   cduraci        NUMBER,   -- Tipo de duraci�n.  (VF 20)
   tduraci        VARCHAR2(100),   -- Descripci�n tipo duraci�n
   ctempor        NUMBER,   -- Admite o no p�lizas temporales  (VF 23)
   ttempor        VARCHAR2(100),   -- Descripci�n Admite o no p�lizas temporales
   ndurcob        NUMBER,   -- A�os a restar en la duraci�n de pagos de primas
   cdurmin        NUMBER,   -- Duraci�n minima  (VF 686)
   tdurmin        VARCHAR2(100),   -- Descripci�n duraci�n minima
   nvtomin        NUMBER,   -- Nro.A�os m�nimo para el Vto. de la p�liza
   cdurmax        NUMBER,   -- Duraci�n m�xima de la p�liza.   (VF 209)
   tdurmax        VARCHAR2(100),   -- Descripci�n duraci�n m�xima p�liza
   nvtomax        NUMBER,   -- Nro.A�os m�ximo para el Vto. de la p�liza. Se activa si informan CDURMAX
   ctipefe        NUMBER,   -- Tipo de efecto.  (VF 42)
   ttipefe        VARCHAR2(100),   -- Descripci�n tipo efecto
   nrenova        NUMBER,   -- D�a renovaci�n
   cmodnre        NUMBER,   -- Indicador de fecha de renovaci�n modificable en contrataci�n
   cprodcar       NUMBER,   -- Indica si tiene valor en PRODCARTERA
   crevali        NUMBER,   -- Tipo revalorizaci�n  (VF 62)
   trevali        VARCHAR2(100),   -- Descripci�n tipo revalorizaci�n
   prevali        NUMBER,   -- Porcentaje revalorizaci�n
   irevali        NUMBER,   -- Importe revalorizaci�n
   ctarman        NUMBER,   -- La tarificaci�n puede ser manual  (VF 56)
   ttarman        VARCHAR2(100),   -- Descripci�n tarificaci�n puede ser manual
   creaseg        NUMBER,   -- Reaseguro   (VF 134)
   treaseg        VARCHAR2(100),   -- Descripci�n reaseguro
   creteni        NUMBER,   -- Indicador de propuesta  (VF 66)
   treteni        VARCHAR2(100),   -- Descripci�n Indicador de propuesta
   cprorra        NUMBER,   -- Tipus prorrateig a aplicar suplements   (VF 174)
   tprorra        VARCHAR2(100),   -- Descripci�n Tipus prorrateig a aplicar suplements segons valors fixes 174
   cprimin        NUMBER,   -- Tipo de prima m�nima  (VF 685)
   tprimin        VARCHAR2(100),   -- Descripci�n Tipo de prima m�nima
   iprimin        NUMBER,   -- Importe m�nimo prima de recibo en emisi�n
   cclapri        NUMBER,   -- F�rmula de c�lcul de la prima m�nima
   tclapri        VARCHAR2(100),   -- Descripci�n F�rmula de c�lcul de la prima m�nima
   ipminfra       NUMBER,   -- Prima minima fraccionada
   nedamic        NUMBER,   -- Edad m�nima contrataci�n (Vida y accidentes) Aseg. 2
   ciedmic        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Min. Ctnr.
   nedamac        NUMBER,   -- Edad m�xima contrataci�n. (Vida y accidentes). Aseg. 2
   ciedmac        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Ctnr.
   nedamar        NUMBER,   -- Edad m�xima renovaci�n. (Vida y accidentes). Aseg. 2
   ciedmar        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Renov.
   nedmi2c        NUMBER,   -- Edad Min. Ctnr. 2�Asegurado
   ciemi2c        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Min. Ctnr. 2�Asegurado
   nedma2c        NUMBER,   -- Edad Max. Ctnr. 2�Asegurado
   ciema2c        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Ctnr. 2�Asegurado
   nedma2r        NUMBER,   -- Edad Max. Renov. 2�Asegurado
   ciema2r        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Renov. 2�Asegurado
   nsedmac        NUMBER,   -- Maximo de contrataci�n de la suma de Edades.(productos 2-Cabezas)
   cisemac        NUMBER,   -- Ind. si se valida la 0-edad actuarial 1-edad real
   cvinpol        NUMBER,   -- Indica que las p�lizas del producto tienen que estar vinculadas a otras de otro producto
   cvinpre        NUMBER,   -- Indica que las p�lizas del producto tienen que estar vinculadas a un pr�stamo
   ccuesti        NUMBER,   -- Necesita cuestionario de salud
   cctacor        NUMBER,   -- Indicador de si tiene libreta. 0-No, 1-Si
   cpreaviso      NUMBER,
   durperiodoprod t_iax_proddurperiodo,   -- Duraciones
   CONSTRUCTOR FUNCTION ob_iax_prodgestion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODGESTION" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODGESTION RETURN SELF AS RESULT IS
    BEGIN
    		SELF.CDURACI := 0;
    		SELF.TDURACI := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGESTION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGESTION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGESTION" TO "PROGRAMADORESCSI";
