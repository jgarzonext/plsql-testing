--------------------------------------------------------
--  DDL for Procedure INSERTASEG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."INSERTASEG" (segm IN VARCHAR2,
	   	  		  					  tipusoperacio IN VARCHAR2,
	   	  		  					  nerror OUT NUMBER) IS
	CURSOR fmts (miss VARCHAR2, segment VARCHAR2) is
		SELECT constante,
		  UPPER(funcion) funcion,
		  variable,
		  mascara,
		  columna
		FROM formatos_segmento
		WHERE mensaje  = miss
		AND segmento = segment
		ORDER BY orden;
	ejec_insert VARCHAR2(4000):='INSERT INTO TAULA (CAMP) VALUES (VALOR)';
	ejec_update VARCHAR2(4000):='UPDATE TAULA SET CAMP = VALOR CAMP WHERE CWHERE';
	ejecucion VARCHAR2(4000);
	clauprimaria NUMBER;
	camp     VARCHAR2(2000);
	valorcamp VARCHAR2(2000);
	nomtaula VARCHAR2(30);
	conversor VARCHAR2(100);
	cwhere varchar2(2000);
	tipusdada varchar2(30);
	longdada number;
	precisdada number;
	vnerror number;
BEGIN
	nerror := 0;
	IF tipusoperacio = 'I' THEN
	   ejecucion := ejec_insert;
	ELSE
	   ejecucion := ejec_update;
	END IF;
	select taula
	into nomtaula
	from segmentos
	where mensaje = pk_autom.mensaje
	and segmento = segm;
	FOR fmt IN fmts(pk_autom.mensaje, segm) LOOP
		camp := camp ||fmt.columna||',';
		select data_type, data_length, data_precision
		into tipusdada, longdada, precisdada
		from all_tab_columns
		where table_name = nomtaula
		and column_name = fmt.columna;
		if tipusdada = 'DATE' then
			conversor := 'TO_DATE(valor,''mascara'')';
		elsif tipusdada = 'NUMBER' then
			conversor := 'TO_number(valor,''mascara'')';
		else
			conversor := 'valor';
		end if;
		IF fmt.constante IS NOT NULL THEN
			conversor := replace(conversor,'valor',fmt.constante);
			conversor := replace(conversor,'mascara',fmt.mascara);
			valorcamp := valorcamp ||conversor||',';
		ELSIF fmt.funcion IS NOT NULL THEN
			conversor := replace(conversor,'valor',fmt.funcion);
			conversor := replace(conversor,'mascara',fmt.mascara);
			valorcamp := valorcamp ||conversor||',';
		ELSIF fmt.variable IS NOT NULL THEN
			conversor := replace(conversor,'valor',fmt.variable);
			conversor := replace(conversor,'mascara',fmt.mascara);
			valorcamp := valorcamp ||conversor||',';
		END IF;
/**************
		begin
			select 1
			into clauprimaria
			from all_cons_columns b
			where (b.owner, b.constraint_name, b.table_name) in
				  (select a.owner, a.constraint_name, a.table_name
				  from  all_constraints a
				  where a.constraint_type = 'p'
				  and a.table_name = 'ifases_a_host')
			and b.column_name = fmt.columna;
		exception
			when OTHERS then
				clauprimaria := 0;
		end;
		IF clauprimaria=1 THEN
			CWHERE := CWHERE || fmt.columna ||'=' || conversor || ' AND ';
		END IF;
********************/
	END LOOP;
	camp := substr(camp,1,length(camp)-1);
	valorcamp := substr(valorcamp,1,length(valorcamp)-1);
	ejecucion := REPLACE(ejecucion, 'TAULA', nomtaula);
	ejecucion := REPLACE(ejecucion, 'CAMP', camp);
	ejecucion := REPLACE(ejecucion, 'VALOR', valorcamp);
	------ejecucion := REPLACE(ejecucion, 'CWHERE', CWHERE);
	BEGIN
		dyn_plsql(ejecucion, vnerror);
		nerror := vnerror;
	END;
EXCEPTION
  when others THEN
	PK_AUTOM.TRAZA(PK_AUTOM.trazas, pk_autom.depurar,SQLERRM);
	nerror := -1;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."INSERTASEG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."INSERTASEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."INSERTASEG" TO "PROGRAMADORESCSI";
