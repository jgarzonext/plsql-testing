--------------------------------------------------------
--  DDL for Type OB_IAX_POLIZASRETEN
--------------------------------------------------------
EXECUTE pac_skip_ora.p_comprovadrop('T_IAX_POLIZASRETEN','TYPE');
EXECUTE pac_skip_ora.p_comprovadrop('OB_IAX_POLIZASRETEN','TYPE');
  CREATE OR REPLACE TYPE OB_IAX_POLIZASRETEN AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_POLIZASRETEN
   PROPÓSITO:  Contiene la información de las polizas retenidas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/12/2007   ACC                1. Creación del objeto.
   2.0        13/05/2008   SBG                2. Añadir TROTULO
   3.0        19/11/2011   APD                3. 0019587: LCOL_P001 - PER - Validaciones dependiendo del tipo de documento
   4.0        29/07/2019   ECP                4. IAXIS-3504.Pantallas Getión Suplementos 
******************************************************************************/
(
   sseguro        NUMBER,   -- Número consecutivo de seguro asignado automáticamente.
   nmovimi        NUMBER,   -- Número de movimiento
   nsuplem        NUMBER,   -- Contador del número de suplementos
   npoliza        NUMBER,   -- Número de póliza.
   nsolici        NUMBER,   -- Número de Solicitud.
   ncertif        NUMBER,   -- Número de certificado
   sproduc        NUMBER,   -- Código del producto al qual pertenece la póliza
   fefecto        DATE,   -- Fecha de efecto
   femisio        DATE,   -- Fecha de emisión
   nnumide        VARCHAR2(50),   -- Numero de Censo/Pasaporte de la persona
   tomador        VARCHAR2(300),   -- Tomador
   csituac        NUMBER,   -- Código de situación. Valor fijo 61
   tsituac        VARCHAR2(100),   -- Descripción código de situación
   creteni        NUMBER,   -- Propuesta retenida o no. Valor fijo 66
   treteni        VARCHAR2(100),   -- Descripción propuesta retenida
   cedit          NUMBER,   -- 0 o 1 según si el usuario puede editar la póliza actualmente retenida, para modificar sus datos
   trotulo        VARCHAR2(15),   -- Abreviación del título del producto
   fcancel        DATE,   -- Fecha de cancelación solicitud
   fmovimi        DATE,   -- Fecha del movimiento
   docreq         NUMBER,   -- 1 el producto tiene documentación requerida
   cusumov        VARCHAR2(20),   -- Usuario que realiza la modificación - Bug 22839/125653 - 26/10/2012 - AMC
   cmotmov        NUMBER,         --Código Suplemento
   tmotmov        VARCHAR2(100),  --Descripción Suplemento
   CONSTRUCTOR FUNCTION ob_iax_polizasreten
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE  TYPE BODY OB_IAX_POLIZASRETEN AS
   CONSTRUCTOR FUNCTION ob_iax_polizasreten
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := 0;
      SELF.npoliza := 0;
      SELF.nsolici := NULL;
      SELF.docreq := 0;
      RETURN;
   END;
END;

/
CREATE OR REPLACE TYPE T_IAX_POLIZASRETEN AS TABLE OF ob_iax_polizasreten;
/
