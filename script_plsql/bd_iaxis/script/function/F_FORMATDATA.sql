--------------------------------------------------------
--  DDL for Function F_FORMATDATA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_FORMATDATA" (pfecha IN DATE, pcidioma	IN NUMBER,
presul IN OUT VARCHAR2, ptipo IN NUMBER DEFAULT 1)
RETURN NUMBER authid current_user IS
/**************************************************************************
	FORMATDATA		Devuelve la fecha escrita en el formato
					'XX de XXXXXX de XXXX
			����	V�lida "s�lo" para castellano y catal�n !!!!!!!
	ALLIBCTR		Biblioteca de contratos
	Se a�ade un parametro optativo
		'ptipo' que indica el formato de la fecha, de momento 1 � 2
      	    se a�ade un nuevo tipo de formato 3 que
            devolvera el dia y el mes en letras.
**************************************************************************/
	dia	VARCHAR2(2);
      tdia  VARCHAR2(20);
	mes	NUMBER;
	tmes	VARCHAR2(30);
	a�o	VARCHAR2(4);
--	a�o2	VARCHAR2(5);
	de	VARCHAR2(3);
      error NUMBER;
BEGIN
	dia:=TO_CHAR(TO_NUMBER(TO_CHAR(pfecha,'dd')));
	mes:=TO_NUMBER(TO_CHAR(pfecha,'mm'));
	a�o:=TO_CHAR(pfecha,'yyyy');
--	a�o2:=SUBSTR(a�o,1,1)||'.'||SUBSTR(a�o,2,3);
	BEGIN
	SELECT tatribu
	INTO tmes
	FROM detvalores
	WHERE cvalor=54	-- Meses
	  AND catribu=mes
	  AND cidioma=pcidioma;
	EXCEPTION
		WHEN OTHERS THEN RETURN 1;
	END;
	IF pcidioma=1 OR pcidioma=2 THEN	-- Caso castellano-catal�n
		IF ptipo=1 THEN  -- Fecha completa '10 de Septiembre de 1998'
			IF (UPPER(SUBSTR(tmes,1,1)) IN ('A','E','I','O','U'))
				AND pcidioma=1 THEN
					de:='d''';
			ELSE
				de:='de ';
			END IF;
--			presul:=dia||' '||de||tmes||' de '||a�o2;
			presul:=dia||' '||de||tmes||' de '||a�o;
		ELSIF ptipo=2 THEN  -- Fecha mes y a�o 'Septiembre de 1998'
--			presul:=tmes||' de '||a�o2;
			presul:=tmes||' de '||a�o;
            ELSIF ptipo=3 THEN
                 error:=f_numlet(pcidioma,dia,2,tdia);
                 IF error = 0 THEN
			IF (UPPER(SUBSTR(tmes,1,1)) IN ('A','E','I','O','U'))
				AND pcidioma=1 THEN
					de:='d''';
			ELSE
				de:='de ';
			END IF;
			presul:=tdia||' '||de||UPPER(tmes);
                 ELSE
                  RETURN error;
                 END IF;
		END IF;
	END IF;
	RETURN 0;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_FORMATDATA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_FORMATDATA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_FORMATDATA" TO "PROGRAMADORESCSI";
