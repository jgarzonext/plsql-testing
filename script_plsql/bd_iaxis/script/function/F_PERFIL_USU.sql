--------------------------------------------------------
--  DDL for Function F_PERFIL_USU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_PERFIL_USU" (PCUSUARI IN VARCHAR2, PENTORNO IN NUMBER,
                       PCRAMO IN NUMBER, PCMODALI IN NUMBER,
                       PCTIPSEG IN NUMBER, PCCOLECT IN NUMBER, PCACTIVI IN NUMBER,
                       PERFIL_USUARIO OUT NUMBER)
         RETURN NUMBER IS
BEGIN
 BEGIN
 SELECT CPERFIL
   INTO PERFIL_USUARIO
   FROM PAR_PERFILES_USUARIO
  WHERE CRAMO   = PCRAMO
    AND CMODALI = PCMODALI
    AND CTIPSEG = PCTIPSEG
    AND CCOLECT = PCCOLECT
    AND CACTIVI = PCACTIVI
    AND CUSUARI = PCUSUARI
    AND ENTORNO = PENTORNO;
 EXCEPTION
   WHEN NO_DATA_FOUND THEN
  BEGIN
        SELECT CPERFIL
          INTO PERFIL_USUARIO
          FROM PAR_PERFILES_USUARIO
       WHERE CRAMO   = PCRAMO
         AND CMODALI = PCMODALI
         AND CTIPSEG = PCTIPSEG
         AND CCOLECT = PCCOLECT
         AND CUSUARI = PCUSUARI
         AND ENTORNO = PENTORNO;
  EXCEPTION
   WHEN NO_DATA_FOUND THEN
   BEGIN
       SELECT CPERFIL
          INTO PERFIL_USUARIO
          FROM PAR_PERFILES_USUARIO
       WHERE CRAMO   = PCRAMO
         AND CMODALI = PCMODALI
         AND CTIPSEG = PCTIPSEG
         AND CUSUARI = PCUSUARI
         AND ENTORNO = PENTORNO;
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
    BEGIN
       SELECT CPERFIL
          INTO PERFIL_USUARIO
          FROM PAR_PERFILES_USUARIO
       WHERE CRAMO   = PCRAMO
         AND CMODALI = PCMODALI
         AND CUSUARI = PCUSUARI
         AND ENTORNO = PENTORNO;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
     BEGIN
       SELECT CPERFIL
          INTO PERFIL_USUARIO
          FROM PAR_PERFILES_USUARIO
       WHERE CRAMO   = PCRAMO
         AND CUSUARI = PCUSUARI
         AND ENTORNO = PENTORNO;
     EXCEPTION
         WHEN NO_DATA_FOUND THEN
                  PERFIL_USUARIO := 9999;
     END;
    END;
   END;
  END;
 END;
 RETURN 0;
 EXCEPTION
 WHEN OTHERS THEN
      RETURN SQLCODE;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."F_PERFIL_USU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_PERFIL_USU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_PERFIL_USU" TO "PROGRAMADORESCSI";
