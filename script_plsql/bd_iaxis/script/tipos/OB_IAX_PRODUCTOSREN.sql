--------------------------------------------------------
--  DDL for Type OB_IAX_PRODUCTOSREN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODUCTOSREN" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODUCTOSREN
   PROPÓSITO:  Contiene información de los productos rentas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creación del objeto.
   2.0         23/03/2009   AMC           2. Se añade NMESEXTRA,CMODEXTRA y TMODEXTRA Bug 8286                 2. Se añade NMESEXTRA,CMODEXTRA y TMODEXTRA
******************************************************************************/
(
   ctipren        NUMBER,   -- Tipo renta  (VF 200)
   ttipren        VARCHAR2(100),   -- Descripción tipo renta
   cclaren        NUMBER,   -- Clase de renta  (VF 201)
   tclaren        VARCHAR2(100),   -- Descripción clase de renta
   nnumren        NUMBER,   -- Años
   cpa1ren        NUMBER,   -- Pago 1 renta  (VF 210)
   tpa1ren        VARCHAR2(100),   -- Descripción pago 1 renta
   npa1ren        NUMBER,   -- DEFINIR
   cpctrev        NUMBER,   -- Tipo % revisión  (VF 284)
   tpctrev        VARCHAR2(100),   -- Descripción tipo % revisión
   npctrev        NUMBER,   -- DEFINIR
   npctrevmin     NUMBER,   -- Minimo
   npctrevmax     NUMBER,   -- Maximo
   nrecren        NUMBER,   -- Pagos a generar  (VF 870)
   trecren        VARCHAR2(100),   -- Descripción pagos a generar
   cmunrec        NUMBER,   -- Si muere uno de los asegurados  (VF 285)
   tmunrec        VARCHAR2(100),   -- Descripción si muere uno de los asegurados
   cestmre        NUMBER,   -- Estado pago  (VF 230)
   testmre        VARCHAR2(100),   -- Descripción estado pago
   nmesextra      ob_iax_nmesextra,   -- Meses que tienen paga extra
   cmodextra      NUMBER,   -- Indica si se puede modificar las pagas extra a nivel de poliza
   tmodextra      VARCHAR2(100),   -- Descripción del cmodextra
   rentasformula  t_iax_prodrentasformula,
   forpagren      t_iax_prodforpagren,
   CONSTRUCTOR FUNCTION ob_iax_productosren
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODUCTOSREN" AS
   CONSTRUCTOR FUNCTION ob_iax_productosren
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctipren := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTOSREN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTOSREN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODUCTOSREN" TO "PROGRAMADORESCSI";
