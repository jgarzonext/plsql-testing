--
DELETE desmensaje_correo c WHERE c.scorreo = 305;

DELETE correosprod c WHERE c.scorreo = 305;

DELETE destinatarios_correo d WHERE d.scorreo = 305;

DELETE mensajes_correo m WHERE m.scorreo = 305;
--
INSERT INTO mensajes_correo (scorreo, remitente, ctipo) VALUES (305, 'dummy@confianza.com.co', 25);

INSERT INTO correosprod (cclalist, cmodo, crol, sproduc, scorreo) VALUES (2, 0, 0, 0, 305);

INSERT INTO desmensaje_correo
  (scorreo, cidioma, asunto, cuerpo)
VALUES
  (305, 8, 'Alerta para la Administración de Resoluciones DIAN',
   'Para la sucursal #SUCURSAL_RD# y el producto #PRODUCTO_RD# correspondientes a la resolución #RESOLUCION_RD# de fecha #FECHA_RD#, se ha activado una alerta para que sea gestionada de manera inmediata la respectiva numeración ante la DIAN.');
COMMIT;
/