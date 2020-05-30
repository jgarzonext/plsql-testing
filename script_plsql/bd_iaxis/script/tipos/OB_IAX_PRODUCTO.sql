--------------------------------------------------------
--  DDL for Type OB_IAX_PRODUCTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODUCTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODUCTO
   PROPÓSITO:  Contiene información del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creación del objeto.
   2.0        15/05/2008   AMC                2. Se quite el campo PINTTEC
   3.0        04/06/2010   PFA                3. Se añade campo COMPANIAS
   4.0        23/08/2010   ICV                4. Se añade campo TTITULO
   5.0        15/12/2010   LCF                5. Modif. CCOMPANI
   6.0        01/11/2013   LPP                6. Se añade campo interficies
******************************************************************************/
(
   cempres        NUMBER,   -- Código empresa
   cramo          NUMBER,   -- Código ramo
   cmodali        NUMBER,   -- Código modalidad
   ctipseg        NUMBER,   -- Código tipo de seguro
   ccolect        NUMBER,   -- Código de colectividad
   sproduc        NUMBER,   -- Secuencia del producto
   cactivo        NUMBER,   -- Indica si el producto está activo o no. (VF 36)
   tactivo        VARCHAR2(100),   -- Descripción producto activo
   ctermfin       NUMBER,   -- Contratable desde el terminal financiero, 0.- Si, 1.- No (VF 444)
   ttermfin       VARCHAR2(100),   -- Descripción terminal financiero
   ctiprie        NUMBER,   -- Tipo riesgo    (VF 14)
   ttiprie        VARCHAR2(100),   -- Descripción tipo riesgo
   cobjase        NUMBER,   -- Tipo de objeto asegurado  (VF 65)
   tobjase        VARCHAR2(100),   -- Descripción tipo riesgo
   csubpro        NUMBER,   -- Código de subtipo de producto  (VF 37)
   tsubpro        VARCHAR2(100),   -- Descripción subtipo de producto
   nmaxrie        NUMBER,   -- Número riesgos máximos
   c2cabezas      NUMBER,   -- 2 Cabezas
   cagrpro        NUMBER,   -- Codigo agrupación de producto  (VF 283)
   tagrpro        VARCHAR2(100),   -- Descripción codigo agrupacion de producto
   cprprod        NUMBER,   -- Prestaciones del producto 0-Capital 1-Renta. Solo Ahorro y Rentas (VF 205)
   tprprod        VARCHAR2(100),   -- Descripción prestaciones del producto
   cramdgs        NUMBER,   -- Código ramo dgs
   tramdgs        VARCHAR2(100),   -- Descripción código ramo dgs
   cdivisa        NUMBER,   -- Clave de Divisa
   tdivisa        VARCHAR2(100),   -- Descripción clave de divisa
   pgaexex        NUMBER,   -- % de Gastos Externos. Parte Externos
   pgaexin        NUMBER,   -- % de Gastos Externos. Parte Internos
   pgasext        NUMBER,   -- Porcentaje de gastos externos.
   pgasint        NUMBER,   -- Porcentaje de gastos internos
   ttitulo        VARCHAR2(40),   --Titulo del producto según idioma del contexto
   ccompani       NUMBER,   -- Código compañía
   tcompani       VARCHAR2(100),   -- Literal descripción companyia
   titulo         t_iax_prodtitulo,   -- Titulos producto
   gestion        ob_iax_prodgestion,   -- Datos gestión producto
   admprod        ob_iax_prodadministracion,   -- Datos administración
   forpago        t_iax_prodformapago,   -- Datos forma pago
   dattecn        ob_iax_proddatostecnicos,   -- Datos tecnicos
   unitulk        ob_iax_productosulk,   -- Productos unit link
   datrent        ob_iax_productosren,   -- Productos rentas
   activid        t_iax_prodactividades,   -- Actividades producto
   garantias      t_iax_prodgarantias,   -- Garantias producto
   beneficiarios  t_iax_prodbeneficiarios,   -- Beneficiarios producto
   preguntas      t_iax_prodpreguntas,   -- Preguntas producto
   parametros     t_iax_prodparametros,   -- Parametros producto
   companias      t_iax_companiprod,   -- Compañias producto
   planpensiones  t_iax_planpensiones,   -- Plan Pensión JBN 27281: ENSA998-Mantenimiento de fondos y planes de pensiones
   interficies    t_iax_interficies,
   CONSTRUCTOR FUNCTION ob_iax_producto
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODUCTO" AS
/******************************************************************************
   NOMBRE:       OB_IAX_PRODUCTO
   PROPÓSITO:  Contiene información del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creación del objeto.
   2.0        13/10/2010   ICV                2. Se añade Campo TTITULO
   3.0        15/12/2010   LCF                3. Modif. CCOMPANI
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_producto
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := 0;
      SELF.cramo := 0;
      SELF.cmodali := 0;
      SELF.ctipseg := 0;
      SELF.ttitulo := NULL;
      SELF.planpensiones := NULL;   --JBN 27281: ENSA998-Mantenimiento de fondos y planes de pensiones
      SELF.interficies := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTO" TO "PROGRAMADORESCSI";
