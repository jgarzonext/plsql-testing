--------------------------------------------------------
--  DDL for Type OB_ERROR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_ERROR" AS OBJECT(
  cerror NUMBER(10),
  terror VARCHAR2(1000),
  STATIC FUNCTION instanciar(pcerror  IN NUMBER, pterror IN VARCHAR2) RETURN ob_error,
  MEMBER PROCEDURE p_get(  pcerror  IN NUMBER, pterror IN VARCHAR2)
)
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_ERROR" AS
  STATIC FUNCTION instanciar(
    pcerror IN NUMBER,
    pterror IN VARCHAR2
  ) RETURN ob_error
  IS
    verr ob_error;
  BEGIN

     verr := ob_error( NULL, NULL );
     verr.p_get(pcerror, pterror);
     RETURN(verr);

  END instanciar;
  MEMBER PROCEDURE p_get(
    pcerror IN NUMBER,
    pterror IN VARCHAR2
   ) IS
  BEGIN
     self.cerror := pcerror;
     self.terror := pterror;
  END p_get;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_ERROR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_ERROR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_ERROR" TO "PROGRAMADORESCSI";
