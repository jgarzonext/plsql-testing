--------------------------------------------------------
--  DDL for Type OB_IAX_POLIZASRETEN
--------------------------------------------------------
EXECUTE pac_skip_ora.p_comprovadrop('T_IAX_POLIZASRETEN','TYPE');
EXECUTE pac_skip_ora.p_comprovadrop('OB_IAX_POLIZASRETEN','TYPE');
  CREATE OR REPLACE TYPE OB_IAX_POLIZASRETEN AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_POLIZASRETEN
   PROP�SITO:  Contiene la informaci�n de las polizas retenidas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/12/2007   ACC                1. Creaci�n del objeto.
   2.0        13/05/2008   SBG                2. A�adir TROTULO
   3.0        19/11/2011   APD                3. 0019587: LCOL_P001 - PER - Validaciones dependiendo del tipo de documento
   4.0        29/07/2019   ECP                4. IAXIS-3504.Pantallas Geti�n Suplementos 
******************************************************************************/
(
   sseguro        NUMBER,   -- N�mero consecutivo de seguro asignado autom�ticamente.
   nmovimi        NUMBER,   -- N�mero de movimiento
   nsuplem        NUMBER,   -- Contador del n�mero de suplementos
   npoliza        NUMBER,   -- N�mero de p�liza.
   nsolici        NUMBER,   -- N�mero de Solicitud.
   ncertif        NUMBER,   -- N�mero de certificado
   sproduc        NUMBER,   -- C�digo del producto al qual pertenece la p�liza
   fefecto        DATE,   -- Fecha de efecto
   femisio        DATE,   -- Fecha de emisi�n
   nnumide        VARCHAR2(50),   -- Numero de Censo/Pasaporte de la persona
   tomador        VARCHAR2(300),   -- Tomador
   csituac        NUMBER,   -- C�digo de situaci�n. Valor fijo 61
   tsituac        VARCHAR2(100),   -- Descripci�n c�digo de situaci�n
   creteni        NUMBER,   -- Propuesta retenida o no. Valor fijo 66
   treteni        VARCHAR2(100),   -- Descripci�n propuesta retenida
   cedit          NUMBER,   -- 0 o 1 seg�n si el usuario puede editar la p�liza actualmente retenida, para modificar sus datos
   trotulo        VARCHAR2(15),   -- Abreviaci�n del t�tulo del producto
   fcancel        DATE,   -- Fecha de cancelaci�n solicitud
   fmovimi        DATE,   -- Fecha del movimiento
   docreq         NUMBER,   -- 1 el producto tiene documentaci�n requerida
   cusumov        VARCHAR2(20),   -- Usuario que realiza la modificaci�n - Bug 22839/125653 - 26/10/2012 - AMC
   cmotmov        NUMBER,         --C�digo Suplemento
   tmotmov        VARCHAR2(100),  --Descripci�n Suplemento
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
