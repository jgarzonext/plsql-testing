
CREATE OR REPLACE TYPE "OB_IAX_SIN_T_VALPRETENSION" AS OBJECT
   /******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITA_JUDICIAL
   PROPOSITO:  Contiene la informacion de la tramitacion judicial - pretensiones
   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/08/2016   IGIL                1. Creacion objeto
******************************************************************************/
   (
CGARANT  NUMBER(4),
TGARANT  VARCHAR2(120),
CMONEDA  VARCHAR2(5),
ICAPITAL  NUMBER,
IPRETEN  NUMBER,
CUSUALT  VARCHAR2(200),
FMODIFI  DATE,
   CONSTRUCTOR FUNCTION ob_iax_sin_t_valpretension
      RETURN SELF AS RESULT
      );
