CREATE OR REPLACE TYPE "OB_IAX_BF_CODGRUP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_AIX_BF_CODGRUP
   PROP�SITO:  Contiene la informaci�n del tipo detalle de coaseguro

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creaci�n del objeto.
   2.0        23/10/2019   CJMR               2. IAXIS-5423. Ajustes a deducibles
******************************************************************************/
(
   cempres        NUMBER,   --    C�digo de Empresa
   tempres        VARCHAR2(100),   --S�    C�digo de Empresa
   cgrup          NUMBER,   --    Si    C�digo de Grupo de Bonus/Franqu�cias
   cversion       NUMBER,   --Si    C�digo de Versi�n
   tgrup          VARCHAR2(200),   --    Si    Descrici�n grupo  IAXIS-5423 CJMR 23/09/2019
   ctipgrup       NUMBER,   --    SI    Tipo de grupo 1=Bonus, 2=Franq
   ctipvisgrup    NUMBER,
   ttipvisgrup    VARCHAR2(100),
   lsubgrupos     t_iax_bf_grupsubgrup,   --    Si    . Lista subgrupos.
   lidiomas       t_iax_bf_desgrup,   --    Si    . Lista descripciones.
   CONSTRUCTOR FUNCTION ob_iax_bf_codgrup
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE TYPE BODY "OB_IAX_BF_CODGRUP" AS
   CONSTRUCTOR FUNCTION ob_iax_bf_codgrup
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;


/
