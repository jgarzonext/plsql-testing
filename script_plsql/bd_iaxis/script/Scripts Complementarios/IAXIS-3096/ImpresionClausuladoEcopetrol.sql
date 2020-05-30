SET serveroutput on;

DECLARE
   CURSOR c0
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo = 801 AND cactivo = 1;
BEGIN
   DELETE FROM prod_plant_cab
         WHERE ccodplan = 'SU-OD-01-04';

   COMMIT;

   FOR corec IN c0
   LOOP
      INSERT INTO prod_plant_cab
                  (sproduc, ctipo, ccodplan, imp_dest, fdesde, fhasta,
                   cgarant, cduplica, norden, clave, nrespue, tcopias,
                   ccategoria, cdiferido, cusualt, falta, cusumod, fmodifi
                  )
           VALUES (corec.sproduc, 0, 'SU-OD-01-04', 1, f_sysdate, NULL,
                   NULL, 1, NULL, NULL, NULL, 'pac_impresion_conf.f_clausula_ecopetrol',
                   NULL, NULL, f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO prod_plant_cab
                  (sproduc, ctipo, ccodplan, imp_dest, fdesde, fhasta,
                   cgarant, cduplica, norden, clave, nrespue, tcopias,
                   ccategoria, cdiferido, cusualt, falta, cusumod, fmodifi
                  )
           VALUES (corec.sproduc, 8, 'SU-OD-01-04', 1, f_sysdate, NULL,
                   NULL, 1, NULL, NULL, NULL, 'pac_impresion_conf.f_clausula_ecopetrol',
                   NULL, NULL, f_user, f_sysdate, NULL, NULL
                  );

      INSERT INTO prod_plant_cab
                  (sproduc, ctipo, ccodplan, imp_dest, fdesde, fhasta,
                   cgarant, cduplica, norden, clave, nrespue, tcopias,
                   ccategoria, cdiferido, cusualt, falta, cusumod, fmodifi
                  )
           VALUES (corec.sproduc, 21, 'SU-OD-01-04', 1, f_sysdate, NULL,
                   NULL, 1, NULL, NULL, NULL, 'pac_impresion_conf.f_clausula_ecopetrol',
                   NULL, NULL, f_user, f_sysdate, NULL, NULL
                  );
   END LOOP;

   COMMIT;
END;
/
begin
Insert into CODIRESPUESTAS
   (CPREGUN, CRESPUE)
 Values
   (2913, 1);
   exception when dup_val_on_index then null;
end;
/
begin
Insert into CODIRESPUESTAS
   (CPREGUN, CRESPUE)
 Values
   (2913, 2);
   exception when dup_val_on_index then null;
end;
/
begin
Insert into CODIRESPUESTAS
   (CPREGUN, CRESPUE)
 Values
   (2913, 3);
   exception when dup_val_on_index then null;
end;
/
begin
Insert into CODIRESPUESTAS
   (CPREGUN, CRESPUE)
 Values
   (2913, 4);
   exception when dup_val_on_index then null;
end;
/
begin
Insert into CODIRESPUESTAS
   (CPREGUN, CRESPUE)
 Values
   (2913, 5);
   exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (1, 2913, 1, 'CONVENIOS GRANDES BENEFICIARIOS CONFAMA', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (2, 2913, 1, 'CONVENIO ACIERTO INMOBILIARIO', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (3, 2913, 1, 'CONVENIO GRANDES AON PRUEBA', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (4, 2913, 1, 'CONVENIO ARQUITECTURA Y CONCRETO-HOWDEN', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (5, 2913, 1, substr('CONVENIOS GRANDES BENEFICIARIOS Aon-Ecopetrol Casanare',1,40), NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (1, 2913, 2, 'CONVENIOS GRANDES BENEFICIARIOS CONFAMA', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (2, 2913, 2, 'CONVENIO ACIERTO INMOBILIARIO', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (3, 2913, 2, 'CONVENIO GRANDES AON PRUEBA', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (4, 2913, 2, 'CONVENIO ARQUITECTURA Y CONCRETO-HOWDEN ', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (5, 2913, 2,  substr('CONVENIOS GRANDES BENEFICIARIOS Aon-Ecopetrol Casanare',1,40), NULL);
exception when dup_val_on_index then null;
end;
/
   
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (1, 2913, 8, 'CONVENIOS GRANDES BENEFICIARIOS CONFAMA', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (2, 2913, 8, 'CONVENIO ACIERTO INMOBILIARIO', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (3, 2913, 8, 'CONVENIO GRANDES AON PRUEBA', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (4, 2913, 8, 'CONVENIO ARQUITECTURA Y CONCRETO-HOWDEN ', NULL);
exception when dup_val_on_index then null;
end;
/
begin
Insert into RESPUESTAS
   (CRESPUE, CPREGUN, CIDIOMA, TRESPUE, CACTIVI)
 Values
   (5, 2913, 8,  substr('CONVENIOS GRANDES BENEFICIARIOS Aon-Ecopetrol Casanare',1,40), NULL);
exception when dup_val_on_index then null;
end;
/
begin
delete prod_plant_cab
where CCODPLAN = 'SU-OD-05-06' ;
end;
/
commit;