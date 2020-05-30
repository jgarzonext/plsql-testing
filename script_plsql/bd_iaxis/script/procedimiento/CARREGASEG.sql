--------------------------------------------------------
--  DDL for Procedure CARREGASEG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."CARREGASEG" (segm IN VARCHAR2, nomlinia IN VARCHAR2 DEFAULT NULL) IS
	CURSOR fmts(miss VARCHAR2, segment VARCHAR2) is
		SELECT variable,
		  UPPER(funcion) funcion,
		  mascara,
		  orden,
		  longitud
		FROM formatos_segmento
		WHERE mensaje  = miss
		AND segmento = segment
		ORDER BY orden;
	ejec_funcion VARCHAR2(1000):='funcion';
	ejec_variable VARCHAR2(1000):='variable := substr(linia, inipos, numpos)';
	ejecucion VARCHAR2(1000);
	posini number;
	nerror number;
BEGIN
	FOR fmt IN fmts(pk_autom.mensaje,segm) LOOP
		IF fmt.variable IS NOT NULL THEN
			ejecucion := ejec_variable;
			ejecucion := REPLACE(ejecucion, 'variable', fmt.variable);
			if nomlinia IS NULL THEN
				ejecucion := REPLACE(ejecucion, 'linia', 'pk_autom.varlin');
			end if;
			posini := FS_POSICION (pk_autom.mensaje, segm, fmt.orden);----Cal esbrinar-la
			ejecucion := REPLACE(ejecucion, 'inipos', to_char(posini));
			ejecucion := REPLACE(ejecucion, 'numpos', to_char(fmt.longitud));
		ELSIF fmt.funcion IS NOT NULL THEN
			ejecucion := ejec_funcion;
			ejecucion := REPLACE(ejecucion, 'funcion', fmt.funcion);
		ELSE
			NULL;
		END IF;
		dyn_plsql(ejecucion, nerror);
	END LOOP;
EXCEPTION
  when others THEN
	DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."CARREGASEG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."CARREGASEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."CARREGASEG" TO "PROGRAMADORESCSI";
