--------------------------------------------------------
--  DDL for Procedure P_GENERAR_COPIA_FICHERO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_GENERAR_COPIA_FICHERO" (
   prutain      IN   VARCHAR2,
   pfichin      IN   VARCHAR2,
   prutaout     IN   VARCHAR2,
   pfichout     IN   VARCHAR2,
   pproceso     IN   NUMBER,
   prenombrar   IN   VARCHAR2 DEFAULT 'N'
)
IS
  vnewfich   VARCHAR2 (50);
  control    NUMBER;
  PROCEDURE p_trazas (proces IN NUMBER,
  					  texto	 IN VARCHAR2)
  IS
    verror	  NUMBER;
	vnumlin	  NUMBER;
  BEGIN
    IF (proces IS NOT NULL) THEN
	  verror := f_proceslin (proces,texto,1,vnumlin);
	ELSE
	  DBMS_OUTPUT.put_line(texto);
	END IF;
  END p_trazas;


BEGIN
/*
  Toni Torres
  14/01/2005
  Procedimiento que genera una copia de un fichero.
  Antes de crear la copia mira si el fichero destino existe,
  si existe lo borra.
*/
  BEGIN
    UTL_FILE.fremove (prutaout,pfichout);
	control := 0;
  EXCEPTION
    WHEN OTHERS
	THEN
	  IF (SQLCODE != -29283) -- 29283 No ha encontrado el fichero a borrar
	  THEN
	    p_trazas (pproceso,'ERROR. No se ha podido borrar el fichero ' || pfichout || ' anterior.');
		control := 1;
	  ELSE
	    control := 0;
	  END IF;
  END;
  IF control = 0
  THEN
    BEGIN
	  UTL_FILE.fcopy(prutain,pfichin, prutaout, pfichout);
	  p_trazas (pproceso,'OK. Copia de '|| pfichin || ' a ' || pfichout || '.');
	  IF (prenombrar = 'S')
	  THEN
	    BEGIN
		  vnewfich := pfichin || '.OLD';
		  UTL_FILE.frename(prutaIn,pfichin,prutaIn,vnewfich,TRUE);
	  	  p_trazas (pproceso,'OK. Rename de ' || pfichin || ' a ' || vnewfich || '.');
		EXCEPTION
		  WHEN OTHERS
		  THEN
		    p_trazas (pproceso,'ERROR al renombrar el fichero ' || pfichin || ' a ' || vnewfich ||'. ' ||SQLCODE);
		END;
	  END IF;
	EXCEPTION
	  WHEN OTHERS
	  THEN
	    p_trazas (pproceso,'ERROR al generar la copia de ' || pfichin || ' a ' || pfichout || '. ' ||SQLCODE);
	END;
  END IF;
END p_generar_copia_fichero;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_GENERAR_COPIA_FICHERO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_GENERAR_COPIA_FICHERO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_GENERAR_COPIA_FICHERO" TO "PROGRAMADORESCSI";
