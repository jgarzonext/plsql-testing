--------------------------------------------------------
--  DDL for Type OB_IAX_COBBANCARIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COBBANCARIO" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_COBBANCARIO
   PROPÓSITO: Objeto que nos sirve para contener la información del cobrador bancario

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/09/2010   ICV                1. Creación del objeto.
   2.0        08/11/2011   APD                2. 0019986: LCOL_A001-Referencias agrupadas o consecutivas
   3.0        19/11/2011   APD                3. 0019587: LCOL_P001 - PER - Validaciones dependiendo del tipo de documento
******************************************************************************/
(
   ccobban        NUMBER(3),   -- Código de cobrador bancario
   ncuenta        VARCHAR2(50 BYTE),   -- Cuenta de domiciliación
   tsufijo        VARCHAR2(4 BYTE),   -- Sufijo asignado en la norma 19
   cempres        NUMBER(2),   -- Código de Empresa
   cdoment        NUMBER(4),   -- Entidad en la que se presentó el soporte y lo devuelve
   cdomsuc        NUMBER(4),   -- Oficina en la que se presentó el soporte y ahora lo devuelve
   nprisel        NUMBER(2),   -- Número de selección
   cbaja          NUMBER(1),   -- Código de baja
   descripcion    VARCHAR2(50 BYTE),   -- Descripción de la entidad bancaria
   nnumnif        VARCHAR2(50 BYTE),   -- Excepción :Nif cobrador domis <> empresa
   tcobban        VARCHAR2(40 BYTE),   -- Literal para los recibos
   ctipban        NUMBER(3),   -- Tipo de cuenta (iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]
   ttipban        VARCHAR2(100),   --Descripcion del tipo de cuenta
   ccontaban      NUMBER(4),   -- Código contable para el cobrador bancario
   dom_filler_ln3 VARCHAR2(1 BYTE),   -- Filler para las líneas '3' del fichero de domiciliación
   precimp        NUMBER(6, 2),   --Porcentaje de recargo por impago
   -- Bug 19986 - APD - 08/11/2011 - se añade el campo cagruprec
   cagruprec      NUMBER(1),   -- Check que indica si el cobrador bancario tiene la funcionalidad de la agrupación/unificación de los recibos (1) o no (0)
   CONSTRUCTOR FUNCTION ob_iax_cobbancario
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_COBBANCARIO" AS
   CONSTRUCTOR FUNCTION ob_iax_cobbancario
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccobban := NULL;
      SELF.ncuenta := NULL;
      SELF.tsufijo := NULL;
      SELF.cempres := NULL;
      SELF.cdoment := NULL;
      SELF.cdomsuc := NULL;
      SELF.nprisel := NULL;
      SELF.cbaja := NULL;
      SELF.descripcion := NULL;
      SELF.nnumnif := NULL;
      SELF.tcobban := NULL;
      SELF.ctipban := NULL;
      SELF.ttipban := NULL;
      SELF.ccontaban := NULL;
      SELF.dom_filler_ln3 := NULL;
      SELF.precimp := NULL;
      SELF.cagruprec := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_COBBANCARIO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COBBANCARIO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COBBANCARIO" TO "PROGRAMADORESCSI";
