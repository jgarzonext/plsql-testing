--------------------------------------------------------
--  DDL for Type OB_IAX_REGIMENFISCAL
--------------------------------------------------------
 

  EXEC PAC_SKIP_ORA.p_comprovadrop('OB_IAX_REGIMENFISCAL','TYPE');

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REGIMENFISCAL" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_REGIMENFISCAL
   PROPÓSITO:  Contiene la información de las personas relacionada

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/07/2011   ICV                1. Creación del objeto.
******************************************************************************/
(
   sperson        NUMBER(10),   --    Secuencia unica de identificacion de una persona
   cagente        NUMBER,   --    Código de agente
   anualidad      NUMBER(4),   --Año de pertenencia del régimen fiscal
   fefecto        DATE,   --Fecha de efecto
   cregfiscal     NUMBER(3),   --Código que identifica el régimen fiscal Vf.:1045
   cregfisexeiva  NUMBER (1), -- AP - Entidad sin ánimo de lucro exenta de IVA
   tregfiscal     VARCHAR2(400),   --Código que identifica el régimen fiscal Vf.:1045
   /*START ADDED FOR IAXIS 4697 */
   CTIPIVA        VARCHAR2(400),  ----Codigo tipo de iva  
   /*END ADDED FOR IAXIS 4697*/
   CONSTRUCTOR FUNCTION ob_iax_regimenfiscal
      RETURN SELF AS RESULT
);
/

create or replace TYPE BODY           "OB_IAX_REGIMENFISCAL" AS
/******************************************************************************
   NOMBRE:       OB_IAX_REGIMENFISCAL
 
   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
    1.0        03/07/2019   ROHIT			  1.IAXIS 4697 El campo de IVA debe ser visible en este seccion en personas 	
******************************************************************************/

   CONSTRUCTOR FUNCTION ob_iax_regimenfiscal
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;
      SELF.cagente := 0;
      SELF.anualidad := NULL;
      SELF.fefecto := NULL;
      SELF.cregfiscal := 0;
      SELF.cregfisexeiva := 0;
      SELF.tregfiscal := NULL;
	  /*START ADDED FOR IAXIS 4697 */
	  SELF.CTIPIVA := NULL;
	  /*END ADDED FOR IAXIS 4697 */
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REGIMENFISCAL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REGIMENFISCAL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REGIMENFISCAL" TO "PROGRAMADORESCSI";

  GRANT EXECUTE ON "AXIS00"."OB_IAX_REGIMENFISCAL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS00"."OB_IAX_REGIMENFISCAL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS00"."OB_IAX_REGIMENFISCAL" TO "PROGRAMADORESCSI";