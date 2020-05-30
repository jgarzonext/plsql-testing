/* Formatted on 02/01/2019 11:00*/
/* **************************** 02/01/2019 11:00 **********************************************************************
Versión           Descripción
01.               - Se crea la subtabla 9000009 que servirá principalmente para:
					1 - Mapear el tipo de persona relacionada a tipo de pagador alternativo.
					2 - Verificar si el tipo de persona relacionada es un pagador alternativo permitido.
TCS460            02/01/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
  -- Borrado de tablas de configuración de la subtabla 9000009.
  DELETE FROM sgt_subtabs_des WHERE cempres = 24 AND csubtabla = 9000009;
  DELETE FROM sgt_subtabs_ver WHERE cempres = 24 AND csubtabla = 9000009 AND fefecto = TO_DATE('31/01/2019','DD/MM/RRRR');
  DELETE FROM sgt_subtabs WHERE cempres = 24 AND csubtabla = 9000009;
  -- Insercion de configuración de la subtabla 9000009.
  INSERT INTO sgt_subtabs (cempres,csubtabla,falta,fbaja,cusualt,fmodifi,cusumod) VALUES (24,9000009,TRUNC(SYSDATE),NULL,f_user,NULL,NULL);
  -- Descripción subtabla 9000009
  INSERT INTO sgt_subtabs_des (cempres,csubtabla,cidioma,tsubtabla,tcla1,tcla2,tcla3,tcla4,tcla5,tcla6,tcla7,tcla8,tval1,tval2,tval3,tval4,tval5,tval6,falta,cusualt,fmodifi,cusumod,tcla9,tcla10,tval7,tval8,tval9,tval10) VALUES (24,9000009,1,'Mapeador Tipus de persona relacionada -> Tipus de pagador alternatiu','Tipus de persona relacionada (ctipper_rel)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Es permet com pagador Alternatiu (1-Sí, 0-No)','Tipus d pagador Alternatiu (ctippagalt)',NULL,NULL,NULL,NULL,TRUNC(SYSDATE),f_user,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
  INSERT INTO sgt_subtabs_des (cempres,csubtabla,cidioma,tsubtabla,tcla1,tcla2,tcla3,tcla4,tcla5,tcla6,tcla7,tcla8,tval1,tval2,tval3,tval4,tval5,tval6,falta,cusualt,fmodifi,cusumod,tcla9,tcla10,tval7,tval8,tval9,tval10) VALUES (24,9000009,2,'Mapeador Tipo de persona relacionada -> Tipo de pagador alternativo','Tipo de persona relacionada (ctipper_rel)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Se permite como Pagador Alternativo (1-Sí, 0-No)','Tipo de Pagador Alternativo (ctippagalt)',NULL,NULL,NULL,NULL,TRUNC(SYSDATE),f_user,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
  INSERT INTO sgt_subtabs_des (cempres,csubtabla,cidioma,tsubtabla,tcla1,tcla2,tcla3,tcla4,tcla5,tcla6,tcla7,tcla8,tval1,tval2,tval3,tval4,tval5,tval6,falta,cusualt,fmodifi,cusumod,tcla9,tcla10,tval7,tval8,tval9,tval10) VALUES (24,9000009,8,'Mapeador Tipo de persona relacionada -> Tipo de pagador alternativo','Tipo de persona relacionada (ctipper_rel)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Se permite como Pagador Alternativo (1-Sí, 0-No)','Tipo de Pagador Alternativo (ctippagalt)',NULL,NULL,NULL,NULL,TRUNC(SYSDATE),f_user,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
  -- Detalle de subtabla 9000009
  INSERT INTO sgt_subtabs_det (sdetalle,cempres,csubtabla,cversubt,ccla1,ccla2,ccla3,ccla4,ccla5,ccla6,ccla7,ccla8,nval1,nval2,nval3,nval4,nval5,nval6,falta,cusualt,fmodifi,cusumod,ccla9,ccla10,nval7,nval8,nval9,nval10) VALUES (20477,24,9000009,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2,NULL,NULL,NULL,NULL,TRUNC(SYSDATE),f_user,TRUNC(sysdate),f_user,NULL,NULL,NULL,NULL,NULL,NULL);
  INSERT INTO sgt_subtabs_det (sdetalle,cempres,csubtabla,cversubt,ccla1,ccla2,ccla3,ccla4,ccla5,ccla6,ccla7,ccla8,nval1,nval2,nval3,nval4,nval5,nval6,falta,cusualt,fmodifi,cusumod,ccla9,ccla10,nval7,nval8,nval9,nval10) VALUES (20478,24,9000009,1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,TRUNC(SYSDATE),f_user,TRUNC(sysdate),f_user,NULL,NULL,NULL,NULL,NULL,NULL);
  -- Versión de subtabla 9000009
  INSERT INTO sgt_subtabs_ver (cempres,csubtabla,fefecto,cversubt,falta,cusualt,fmodifi,cusumod) VALUES (24,9000009,TO_DATE('31/01/2019','DD/MM/RRRR'),1,TRUNC(SYSDATE),f_user,NULL,NULL);
  --
  COMMIT; 
  --
EXCEPTION
  WHEN OTHERS THEN
    --
	ROLLBACK;
    dbms_output.put_line('Error mientras se insertaba la configuración de subtabla : 9000009' || SQLERRM);
    -- 
END;  