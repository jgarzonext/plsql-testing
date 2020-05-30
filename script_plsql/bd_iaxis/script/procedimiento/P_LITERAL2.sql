--------------------------------------------------------
--  DDL for Procedure P_LITERAL2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_LITERAL2" (nlitera in     number,
		     usu_idioma in varchar2,
                     ttexto  in out varchar2)
authid current_user IS
/***************************************************************************
	P_LITERAL: Mostrar el texto del literal elegido.
***************************************************************************/
	origen	NUMBER := 1;
	final		NUMBER := pklit.leer_idx;
	indice	INTEGER := final/2;
BEGIN
	IF pklit.leer_leido = 0 THEN
		pklit.lee_lits;
		final	:= pklit.leer_idx;
		indice := final/2;
	END IF;
	WHILE nlitera <> pklit.leer_lit(indice) OR
	   usu_idioma <> pklit.leer_idioma(indice) LOOP
		IF origen = final THEN
			indice := 0;
			exit;
		END IF;
		IF nlitera > pklit.leer_lit(indice) THEN
			IF origen = indice THEN
				indice := 0;	-- No encontrado
				Exit;
			END IF;
			origen := indice;
		ELSIF nlitera = pklit.leer_lit(indice) THEN
			WHILE usu_idioma <> pklit.leer_idioma(indice) LOOP
			   IF usu_idioma > pklit.leer_idioma(indice) THEN
				indice := indice + 1;
			   ELSIF usu_idioma < pklit.leer_idioma(indice) THEN
				indice := indice - 1;
			   END IF;
			   IF nlitera <> pklit.leer_lit(indice) THEN
				indice := 0;
				Exit;				-- No Encontrado
			   END IF;
			END LOOP;
			Exit;				-- Encontrado
		ELSE
			IF final = indice THEN
				indice := 0;	-- No encontrado
				Exit;
			END IF;
			final := indice;
		END IF;
		indice := ((final - origen) / 2) + origen;
	END LOOP;
	IF indice = 0 THEN
		BEGIN
			SELECT tlitera INTO ttexto
			FROM LITERALES
			WHERE cidioma = usu_idioma
				AND slitera = nlitera;
		EXCEPTION
		   WHEN others THEN
			ttexto := 'No existe literal '||nlitera;
		END;
	ELSE
		ttexto := pklit.leer_texlit(indice);
	END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_LITERAL2" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_LITERAL2" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_LITERAL2" TO "PROGRAMADORESCSI";
