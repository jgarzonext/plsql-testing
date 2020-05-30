/* Formatted on 19/12/2019 17:30*/
/* **************************** 19/12/2019 17:30 **********************************************************************
Versi�n           Descripci�n
01.               -Este script borra y recrea el objeto OB_IAX_SIN_TRAMI_MOVPAGO
IAXIS-7731        19/12/2019 Daniel Rodr�guez
***********************************************************************************************************************/
BEGIN
  --
  pac_skip_ora.p_comprovadrop('OB_IAX_SIN_TRAMI_MOVPAGO','TYPE');
  --
END;
/  
CREATE OR REPLACE TYPE "OB_IAX_SIN_TRAMI_MOVPAGO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_MOVPAGO
   PROP�SITO:  Contiene la informaci�n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creación del objeto.
   2.0        29/09/2011   JMC                2. Añadir subpago (bug:19601)
   3.0        07/10/2013   JMG                3. 0028462-155008 : Modificaci�n de campos clave que actualmente estan definidos
                                                 en la base de datos como NUMBER(X) para dejarlos como NUMBER
   4.0        19/12/2019   DFR                4. IAXIS-7731: LISTENER Cambio de estado del siniestro y creaci�n de Campos: 
                                                 Valor, Fecha, n�mero de pago, que comunica SAP a IAXIS                                             
******************************************************************************/
(
   sidepag        NUMBER(8),   --Secuencia Identificador Pago
   nmovpag        NUMBER(4),   --N�mero Movimiento Pago
   cestpag        NUMBER(1),   --C�digo Estado Pago
   testpag        VARCHAR2(100),   --Desc. Estado Pago
   fefepag        DATE,   --Fecha Efecto Pago
   cestval        NUMBER(1),   --C�digo Estado Validaci�n Pago
   testval        VARCHAR2(100),   --Desc. Estado Validaci�n Pago
   fcontab        DATE,   --Fecha Contabilidad
   sproces        NUMBER,   --Secuencia Proceso -- Bug 28462 - 08/10/2013 - JMG - Modificacion campo sproces a NUMBER
   cusualt        VARCHAR2(80),   --Código Usuario Alta
   falta          DATE,   --Fecha Alta
   -- Bug 13312 - 08/03/2010 - AMC
   cestpagant     NUMBER(1),   --C�digo Estado Pago anterior
   -- Fi Bug 13312 - 08/03/2010 - AMC
   --BUG 19601 - 29/09/2011 - JMC
   csubpag        NUMBER(1),   --C�digo subestado pago
   tsubpag        VARCHAR2(100),   --Descripcion subestado pago
   csubpagant     NUMBER(1),   --C�digo subestado pago anterior
   -- Fi BUG 19601 - 29/09/2011 - JMC
   ndocpag        NUMBER, -- IAXIS-7731 19/12/2019
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_movpago
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE TYPE BODY "OB_IAX_SIN_TRAMI_MOVPAGO" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_movpago
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sidepag := NULL;
      RETURN;
   END;
END;

/

GRANT EXECUTE ON "OB_IAX_SIN_TRAMI_MOVPAGO" TO "R_AXIS";
GRANT EXECUTE ON "OB_IAX_SIN_TRAMI_MOVPAGO" TO "CONF_DWH";
GRANT EXECUTE ON "OB_IAX_SIN_TRAMI_MOVPAGO" TO "PROGRAMADORESCSI";


