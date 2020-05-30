--------------------------------------------------------
--  DDL for Procedure TAUT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."TAUT" (
               aa      IN NUMBER,
               mm      IN NUMBER,
               segm    IN VARCHAR2,
               depurar IN NUMBER DEFAULT 0,
               nomfitxer IN VARCHAR2 DEFAULT NULL
	            ) IS
  programa    VARCHAR2(2000);
  mens        VARCHAR2(10):=segm;
  ancho       NUMBER:=250;
  ntrabs      NUMBER:=500;
  prc         NUMBER;
  ruta_acceso VARCHAR2(100);
  fichero     VARCHAR2(30):= pk_autom.fichero;
  dir_comp	  VARCHAR2(100);
  hostname    VARCHAR2(30);
  fsalida     VARCHAR2(20);
  fentrada     VARCHAR2(20);
  fmensajes   VARCHAR2(20);
  segment     VARCHAR2(10);
  orig        VARCHAR2(10) := NULL;
  origant     VARCHAR2(10) := NULL;
  hay         NUMBER;
  lee_reg     BOOLEAN:=FALSE;
  c           NUMBER := 0;
  c2          NUMBER := 0;
  c3          NUMBER := 0;
  prev        VARCHAR2(30);
  cond        VARCHAR2(30);
  dest        VARCHAR2(10):=NULL;
  neg         BOOLEAN;
  ejecutar    BOOLEAN;
  saltar      BOOLEAN;
  retfun      BOOLEAN;
  segundos    NUMBER;
  minutos     NUMBER;
  horas       NUMBER;
  transc      NUMBER;
  cont  NUMBER:=0;
  numerador   NUMBER;
  xnumerador  VARCHAR2(6);
  secuencia   VARCHAR2(100);
  nerror	  number;
BEGIN
  pk_autom.depurar := depurar;
  pk_autom.mensaje := mens;
  SELECT ruta, directorio_compartido, host, sentido
    INTO ruta_acceso, dir_comp, hostname, pk_autom.sentido
    FROM mensajes
   WHERE mensaje = segm;
  cont := cont+1;
  SELECT sysdate
  INTO pk_autom.fecha
  FROM dual;
  pk_autom.inicio(aa, mm);
  IF pk_autom.sentido IN ('S','O') THEN
      IF pk_autom.cerrado THEN
            fsalida := NVL(mens,nomfitxer)||'.DAT';
            pk_autom.salida := utl_file.FOPEN(ruta_acceso,fsalida,'w');
      END IF;
  ELSIF pk_autom.sentido IN ('E') THEN
		fentrada := nvl(nomfitxer,mens||'.DAT');
		pk_autom.entrada := utl_file.FOPEN(ruta_acceso,fentrada,'r');
  END IF;
  IF pk_autom.depurar = 1 THEN
    fmensajes := mens || '.LOG';
    pk_autom.trazas := utl_file.FOPEN(ruta_acceso,fmensajes, 'w');
  END IF;
  pk_autom.traza(pk_autom.trazas, pk_autom.depurar, 'Entra en tratautom con mens='||mens||', segm='||segm||', depurar='||to_char(pk_autom.depurar));
  BEGIN
 	  SELECT automata
 	  INTO programa
 	  FROM automatas
 	  WHERE mensaje = mens
 	  AND segmento = segm;
 	  dyn_plsql(programa, nerror);
--	  DBMS_OUTPUT.PUT_LINE(' PROGRAMA '||PROGRAMA);
  END;
  IF pk_autom.sentido IN ('S','O') THEN
	  utl_file.fclose(pk_autom.salida);
  ELSIF pk_autom.sentido IN ('E') THEN
	  utl_file.fclose(pk_autom.entrada);
  END IF;
  IF pk_autom.depurar = 1 THEN
    utl_file.fclose(pk_autom.trazas);
  END IF;
  pk_autom.cerrado := TRUE;
  pk_autom.segmentos := 0;
  pk_autom.iniciar   := 0;
  pk_autom.inicio(aa, mm);
  IF pk_autom.depurar = 1 THEN
	utl_file.fclose(pk_autom.trazas);
  END IF;
  IF pk_autom.actualizar THEN
	COMMIT;
  END IF;
EXCEPTION
	WHEN UTL_FILE.INVALID_PATH THEN
		dbms_output.put_line('invalid path');
	WHEN UTL_FILE.INVALID_MODE  THEN
		dbms_output.put_line('invalid mode');
	WHEN UTL_FILE.INVALID_OPERATION THEN
		dbms_output.put_line('invalid operation');
	WHEN others THEN
		UTL_FILE.FCLOSE_ALL;
		dbms_output.put_line(sqlerrm);
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."TAUT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."TAUT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."TAUT" TO "PROGRAMADORESCSI";
