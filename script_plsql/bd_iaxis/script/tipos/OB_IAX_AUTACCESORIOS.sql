--------------------------------------------------------
--  DDL for Type OB_IAX_AUTACCESORIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AUTACCESORIOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_AUTACCESORIOS
   PROPÓSITO:  Contiene la información del riesgo autos accesorios

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/08/2007   ACC                1. Creación del objeto.
   2.0        07/04/2009   AMC                2. Se añaden los campos CVEHB7 y CMARCADO
   3.0        26/02/2013   LCF                3. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   4.0        01/07/2013   RCL                4. 0024697: LCOL_T031-Tamaño del campo SSEGURO
******************************************************************************/
(
   /* Estriesgos + Riesgos */
   sseguro        NUMBER,   --Secuencial de seguro
   nriesgo        NUMBER(6),   --Numero de riesgo
   nmovimi        NUMBER(4),   --Numero de movimiento
   cversion       VARCHAR2(11),   --Codigo de la version del vehiculo
   caccesorio     VARCHAR2(10),   --Codigo accesorio / Opcionpack
   taccesorio     VARCHAR2(1000),   --Codigo accesorio / Opcionpack
   ctipacc        VARCHAR2(8),   --Codigo tipo accesorio. Valor fijo = 292
   ttipacc        VARCHAR2(100),   --Descripcion tipo accesorio
   fini           DATE,   --Fecha inicio o alta
   ivalacc        NUMBER,   --25803   --Valor accesorios
   tdesacc        VARCHAR2(100),   --Descripción accesorios
   cvehb7         NUMBER(2),   -- Indica si procede de base 7 0-No 1-si
   cmarcado       NUMBER(2),   -- Indica si se ha seleccionado 0-No 1-si
   casegurable    NUMBER(2),   -- Indica si se ES ASEGURABLE O NO
   /* */
   CONSTRUCTOR FUNCTION ob_iax_autaccesorios
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AUTACCESORIOS" AS
   CONSTRUCTOR FUNCTION ob_iax_autaccesorios
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.taccesorio := '';
      SELF.nriesgo := NULL;
      SELF.nmovimi := 0;
      SELF.cversion := NULL;
      SELF.caccesorio := NULL;
      SELF.ctipacc := NULL;
      SELF.ttipacc := NULL;
      SELF.fini := NULL;
      SELF.ivalacc := 0;
      SELF.tdesacc := NULL;
      SELF.cvehb7 := 0;
      SELF.cmarcado := 0;
      SELF.casegurable := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTACCESORIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTACCESORIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTACCESORIOS" TO "PROGRAMADORESCSI";
