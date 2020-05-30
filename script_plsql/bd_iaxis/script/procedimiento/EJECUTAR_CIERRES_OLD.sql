--------------------------------------------------------
--  DDL for Procedure EJECUTAR_CIERRES_OLD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."EJECUTAR_CIERRES_OLD" (pcidioma IN NUMBER DEFAULT 2
	   	  		  							 ) AUTHID current_user IS
/***************************************************************************
   Este proceso mirará en la tabla CIERRES si hay algún registro cuyo estado
   sea 'cierre programado' (cestado IN (20,21)). Si es así, lanzará el cierre
   para el periodo que indique el registro, y se actualizará la tabla cierres
   para indicar el nuevo estado del periodo.
   15/09/04 CPM:
     Se hace una reingenieria de este proceso, para que pueda ejecutar
	 diversos cierres en orden diferente dependiendo de la instalació.
	 Se parametriza tanto los cierres, como el orden, como las funciones que
	 son llamadas para realizar el cierre.
****************************************************************************/

    CURSOR c_cierres IS
       SELECT c.ctipo, c.cempres, c.fperini, c.fperfin,
	   		  c.fcierre, c.sproces, c.cestado, p.tpackage,
			  p.tdepen
       FROM CIERRES c, PDS_PROGRAM_CIERRES p
       WHERE c.ctipo = p.ctipo
		 AND c.cempres = p.cempres
		 AND p.cactivo = 1
		 AND
		 ( (c.cestado IN (20,21)   -- cierre programado
	       AND c.fcierre <= F_Sysdate)
		  OR
		   (c.cestado = 22   -- previo programado
	       AND c.fperini < F_Sysdate)
		 )
       ORDER BY c.cempres, c.fcierre, p.norden, c.fperini;


	cadena	 	VARCHAR2(1000);
	s			VARCHAR2(2000);

    error	    NUMBER;
    psproces	NUMBER;
    pfproces	DATE;

    v_numlin    NUMBER;
	v_modo		NUMBER;
	v_depen		NUMBER;  -- 0: Dependencia correcte; 1: Dependencia erronea.

BEGIN
P_CONTROL_ERROR(NULL, 'REA', 'ENTRAMOS');
  FOR reg IN c_cierres LOOP
P_CONTROL_ERROR(NULL, 'REA', 'REG.CESTAD0 ='||REG.CESTADO);
     error := 0;
	 psproces := NULL;

     IF reg.cestado = 20 THEN
         v_modo := 2; -- Definitiu
     ELSE
         v_modo := 1; -- Previ
     END IF;

	 --CPM 31/1/05: Comprovem les dependencies amb altres tancaments
	 IF reg.tdepen IS NULL THEN
	 	v_depen := 0;
	 ELSE
		-- Mirem si estem fent el tancament definitiu, pq el previ no
   		-- tindrá en compte les dependencies.
	 	IF v_modo = 1 THEN -- Previ
		   v_depen := 0;
		ELSE
		   -- Busquem les dependencies.
		   s:= 'BEGIN SELECT MAX(NVL(c.cestado, -1))'|| CHR(10) ||
		       'INTO :v_depen '|| CHR(10) ||
		       'FROM CIERRES c, PDS_PROGRAM_CIERRES p'|| CHR(10) ||
		       'WHERE c.fperfin (+) = to_date('''||
			   	  TO_CHAR(reg.fperfin, 'dd/mm/yyyy')||''', ''dd/mm/yyyy'')'|| CHR(10) ||
			   ' AND (c.cestado <> 1 OR c.cestado IS NULL)'|| CHR(10) ||
			   ' AND c.ctipo (+)= p.ctipo'|| CHR(10) ||
			   ' AND c.cempres (+)= p.cempres'|| CHR(10) ||
			   ' AND p.ctipo IN ('||reg.tdepen||')'|| CHR(10) ||
			   ' AND p.cempres = '||reg.cempres|| CHR(10) ||
			   ' AND p.cactivo = 1; END;';
           EXECUTE IMMEDIATE s USING OUT v_depen;

		   IF v_depen IS NULL THEN -- Les dependencies estàn tancades
		   	  v_depen := 0;
		   ELSE
		   	  v_depen := 1;
		   END IF;
		END IF;
	 END IF;

	 IF v_depen = 0 THEN -- Dependencies correctes

		 IF reg.tpackage IS NOT NULL THEN

	       BEGIN

	         cadena := reg.tpackage||'.proceso_batch_cierre( '||v_modo||', '||reg.cempres||
		      -- pmoneda  = 2  (pesetas)
		      -- pidioma  = 1  (catalán); 2 (castellano)
					   ', 2, '||pcidioma||', '''||reg.fperini||''', '''||reg.fperfin||
					   ''', '''||reg.fcierre||''', :error, :psproces, :pfproces); ';
	         s := ' BEGIN ' || CHR (10) || cadena || CHR (10)||' END;';
	         DBMS_OUTPUT.put_line ('Execute ' || s);

	         EXECUTE IMMEDIATE s
	                     USING OUT error, OUT psproces, OUT pfproces;

	       EXCEPTION
	         WHEN OTHERS THEN
			    IF psproces IS NOT NULL THEN
		       	   error  := F_Proceslin(psproces,
		   	   		  SUBSTR('Cierres programados:ctipo='||reg.ctipo||
							'modo='||v_modo||';error incontrolado='||SQLERRM,1,120),
					  0,v_numlin,2);
				ELSE
				   P_Tab_Error(F_Sysdate, F_USER, 'CIERRE ='||psproces, NULL,
		              SUBSTR('Cierres programados:ctipo='||reg.ctipo||
							'modo='||v_modo||';error incontrolado',1,500),
					  SQLERRM);
				END IF;
                error := 1;
	       END;

		 END IF;

	     IF error = 0 THEN
	        UPDATE CIERRES
	           SET cestado = DECODE(v_modo,1,0, --Previ
	                                      2,1), --Definitiu
	               sproces = psproces,
	               fproces = NVL(pfproces,SYSDATE)
	         WHERE ctipo = reg.ctipo
	           AND cempres = reg.cempres
	           AND fperini = reg.fperini;
	         COMMIT;
		 ELSE
		    IF psproces IS NOT NULL THEN
	       	   error  := F_Proceslin(psproces,
	   	   		  SUBSTR('Cierres programados:ctipo='||reg.ctipo||
	   		           'modo='||v_modo||';error='||error,1,120),
				  0,v_numlin,2);
			ELSE
			   P_Tab_Error(F_Sysdate, F_USER, 'CIERRE ='||psproces, NULL,
	              SUBSTR('Cierres programados:ctipo='||reg.ctipo||
	   		           'modo='||v_modo||';error='||error,1,500),
				  SQLERRM);
			END IF;
	     END IF;

	 ELSE
	    IF psproces IS NOT NULL THEN
       	   error  := F_Proceslin(psproces,
		   		  SUBSTR('Cierres programados:ctipo='||reg.ctipo||
					'modo='||v_modo||';existen dependencias no cerradas',1,120),
				  0,v_numlin,2);
		ELSE
		   P_Tab_Error(F_Sysdate, F_USER, 'CIERRE ='||psproces, NULL,
	              SUBSTR('Cierres programados:ctipo='||reg.ctipo||
					'modo='||v_modo||';existen dependencias no cerradas',1,500),
				   SQLERRM);
		END IF;
	 END IF;

   END LOOP;

 EXCEPTION
   WHEN OTHERS THEN
	    IF psproces IS NOT NULL THEN
       	   error  := F_Proceslin(psproces,
   	   		  SUBSTR('Cierres programados; error incontrolado='||SQLERRM,1,120),
			  0,v_numlin,2);
		ELSE
		   P_Tab_Error(F_Sysdate, F_USER, 'CIERRE ='||psproces, NULL,
              SUBSTR('Cierres programados; error incontrolado',1,500),
			  SQLERRM);
		END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_OLD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_OLD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."EJECUTAR_CIERRES_OLD" TO "PROGRAMADORESCSI";
