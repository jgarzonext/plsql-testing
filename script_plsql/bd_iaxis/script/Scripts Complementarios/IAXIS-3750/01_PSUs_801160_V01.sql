/* Formatted on 28/11/2019 17:00*/
/* **************************** 28/11/2019 17:00 **********************************************************************
Versión           Descripción
01.               - Se crea la subtabla para almacenar el porcentaje del contrato que puede autorizarse como mínimo 
IAXIS-3993        28/11/2019 Daniel Rodríguez
********************************************************************************************************************* */
BEGIN
-- Borrado de registros
--
DELETE FROM sgt_subtabs_des
 WHERE csubtabla = 9000011
   AND cempres = 24;
--   
DELETE FROM sgt_subtabs_ver
 WHERE csubtabla = 9000011
   AND cempres = 24;
--   
DELETE FROM sgt_subtabs_det s
 WHERE csubtabla = 9000011
   AND cempres = 24;
--      
DELETE FROM sgt_subtabs
 WHERE csubtabla = 9000011
   AND cempres = 24;
--  
-- Inserción de registros de configuración
-- 
INSERT INTO sgt_subtabs
  (cempres, csubtabla, falta, fbaja, cusualt, fmodifi, cusumod)
VALUES
  (24, 9000011, NULL, NULL, NULL, NULL, NULL);
--
INSERT INTO sgt_subtabs_ver
  (cempres, csubtabla, fefecto, cversubt, falta, cusualt, fmodifi, cusumod)
VALUES
  (24, 9000011, TRUNC(SYSDATE), 1,NULL, NULL, NULL, NULL);
--
insert into sgt_subtabs_des (CEMPRES, CSUBTABLA, CIDIOMA, TSUBTABLA, TCLA1, TCLA2, TCLA3, TCLA4, TCLA5, TCLA6, TCLA7, TCLA8, TVAL1, TVAL2, TVAL3, TVAL4, TVAL5, TVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, TCLA9, TCLA10, TVAL7, TVAL8, TVAL9, TVAL10)
values (24, 9000011, 1, 'Màxim percentatge dautorització segons delegació', 'Ram', 'Producte', 'Codi', 'Nivell', 'Tipus de risc (0-Normal, 1-Restringido Relativo, 2-Restringido Absoluto)', NULL, NULL, NULL, 'Percentatge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

insert into sgt_subtabs_des (CEMPRES, CSUBTABLA, CIDIOMA, TSUBTABLA, TCLA1, TCLA2, TCLA3, TCLA4, TCLA5, TCLA6, TCLA7, TCLA8, TVAL1, TVAL2, TVAL3, TVAL4, TVAL5, TVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, TCLA9, TCLA10, TVAL7, TVAL8, TVAL9, TVAL10)
values (24, 9000011, 2, 'Máximo porcentaje de autorización según delegación', 'Ramo', 'Producto', 'Código', 'Nivel', 'Tipo de riesgo (0-Normal, 1-Restringido Relativo, 2-Restringido Absoluto)', NULL, NULL, NULL, 'Porcentaje', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

insert into sgt_subtabs_des (CEMPRES, CSUBTABLA, CIDIOMA, TSUBTABLA, TCLA1, TCLA2, TCLA3, TCLA4, TCLA5, TCLA6, TCLA7, TCLA8, TVAL1, TVAL2, TVAL3, TVAL4, TVAL5, TVAL6, FALTA, CUSUALT, FMODIFI, CUSUMOD, TCLA9, TCLA10, TVAL7, TVAL8, TVAL9, TVAL10)
values (24, 9000011, 8, 'Máximo porcentaje de autorización según delegación', 'Ramo', 'Producto', 'Código', 'Nivel', 'Tipo de riesgo (0-Normal, 1-Restringido Relativo, 2-Restringido Absoluto)', NULL, NULL, NULL, 'Porcentaje', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
--
-- sgt_subtabs_det
--
-- Revisar los scripts 02...18
--
COMMIT;
--
EXCEPTION
  WHEN OTHERS THEN
    dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
    dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
    ROLLBACK;
End;
/










