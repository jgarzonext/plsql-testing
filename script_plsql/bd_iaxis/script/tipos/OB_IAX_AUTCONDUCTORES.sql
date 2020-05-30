--------------------------------------------------------
--  DDL for Type OB_IAX_AUTCONDUCTORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AUTCONDUCTORES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_CONDUCTORES
   PROPÓSITO:  Contiene la información del riesgo autos conductores

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/08/2007   ACC                1. Creación del objeto.
   2.0        14/02/2013   JDS                2. 0025964: LCOL - AUT - Experiencia
   3.0        01/07/2013   RCL                3. 0024697: LCOL_T031-Tamaño del campo SSEGURO
   4.0        25/02/2014   SHA                4. 0030172: LCOL999-nuevo nodo Interfaz EXPER
******************************************************************************/
(
   /* Estriesgos + Riesgos */
   sseguro        NUMBER,   --Secuencial de seguro
   nriesgo        NUMBER(6),   --Numero de riesgo
   nmovimi        NUMBER(4),   --Número de Movimiento
   norden         NUMBER(2),   --Numero orden de conductor. El numero 1 se corresponde al conductor principal
   sperson        NUMBER(10),   --Codigo de persona (conductor identificado, nominal)
   fnacimi        DATE,   --Edad conductor innominado
   fcarnet        DATE,   --Fecha de expedicion del permiso de conduccion
   csexo          NUMBER(4),   --Sexo conductor innominado
   tsexo          VARCHAR2(100),   --Descripcion del sexo. Valor fijo = 11
   npuntos        NUMBER(2),   --Numero de puntos en el permiso
   cdomici        NUMBER,   --Código de domicilio - Bug 25368/133447 - 08/01/2013 - AMC
   tdomici        VARCHAR2(1000),   --Descripción del domicilio - Bug 26923/146932 - 18/06/2013 - AMC
   cprincipal     NUMBER(1),   -- Conductor principal 0-No 1-Si - Bug 25368/135191 - 15/01/2013 - AMC
   /* */
   persona        ob_iax_personas,   -- Personas
   exper_manual   NUMBER,   --Numero de años de experiencia del conductor.
   exper_cexper   NUMBER,   --Numero de años de experiencia que viene por interfaz.
   exper_sinie    NUMBER,
   exper_sinie_manual NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_autconductores
      RETURN SELF AS RESULT
);

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTCONDUCTORES" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTCONDUCTORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTCONDUCTORES" TO "R_AXIS";
