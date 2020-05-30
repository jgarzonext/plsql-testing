DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 252 AND cclacontrato = 5531 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 253 AND cclacontrato = 5531 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 154 AND cclacontrato = 0 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 10 AND cclacontrato = 4720 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 72 AND cclacontrato = 4720 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 15 AND cclacontrato = 0 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 24 AND cclacontrato = 4290 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 139 AND cclacontrato = 0 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 158 AND cclacontrato = 0 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 135 AND cclacontrato = 0 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 157 AND cclacontrato = 4720 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 19 AND cclacontrato = 4721 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 5 AND cclacontrato = 0 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 4 AND cclacontrato = 0 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 3 AND cclacontrato = 0 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 214 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 212 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 215 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 213 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 208 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 206 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 205 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 211 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 210 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 207 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 209 AND cclacontrato = 4291 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 80 AND cclacontrato = 4290 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 8 AND cclacontrato = 5530 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 17 AND cclacontrato = 5531 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 18 AND cclacontrato = 4290 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 373 AND cclacontrato = 88981 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 372 AND cclacontrato = 89351 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 371 AND cclacontrato = 89350 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 319 AND cclacontrato = 1 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 78 AND cclacontrato = 4720 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 151 AND cclacontrato = 4720 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 11 AND cclacontrato = 4720 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 124 AND cclacontrato = 4720 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 4 AND cclacontrato = 4720 AND cmodali > 4;
	DELETE sectoresprod WHERE cramo = 802 AND ccodcontrato = 48 AND cclacontrato = 4720 AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 331 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 306 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 355 
	AND cclacontrato = 4291 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 325 
	AND cclacontrato = 4291 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 332 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 311 
	AND cclacontrato = 4721 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 317 
	AND cclacontrato = 4721 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 314 
	AND cclacontrato = 4721 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 316 
	AND cclacontrato = 4721 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 354 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 326 
	AND cclacontrato = 4291 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 312 
	AND cclacontrato = 4721 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 310 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 323 
	AND cclacontrato = 4721 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 4
	WHERE cramo = 802 
	AND ccodcontrato = 343 
	AND cclacontrato = 4291 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 315 
	AND cclacontrato = 4291 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 1
	WHERE cramo = 802 
	AND ccodcontrato = 231 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 2
	WHERE cramo = 802 
	AND ccodcontrato = 237 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 1
	WHERE cramo = 802 
	AND ccodcontrato = 234 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 1
	WHERE cramo = 802 
	AND ccodcontrato = 233 
	AND cclacontrato = 5531 
	AND cmodali > 4;
	
	UPDATE sectoresprod
	SET csector = 3
	WHERE cramo = 802 
	AND ccodcontrato = 313 
	AND cclacontrato = 4721 
	AND cmodali > 4;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'ACTIVIDADES RELACIONADAS CON PUERTOS, AEROPUESTOS, ZONAS FRANCAS Y DE CONCESION OPERACIÓN'
	WHERE ccodcontrato = 254 
	AND cclacontrato = 4721;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'SUMINISTRO AIRES ACONDICIONADOS'
	WHERE ccodcontrato = 359 
	AND cclacontrato = 4721;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'SUMINISTRO DE EQUIPO DE COMPUTO'
	WHERE ccodcontrato = 369 
	AND cclacontrato = 4721;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS ESTRUCTURAS METÁLICAS'
	WHERE ccodcontrato = 367 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'EVENTOS DE EXHIBICIONES DE MERCANCÍA'
	WHERE ccodcontrato = 221 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS DE MUEBLES'
	WHERE ccodcontrato = 22 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS PRODUCTOS DE PAPEL Y CARTÓN'
	WHERE ccodcontrato = 20 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS PRODUCTOS DE PLASTICO Y CAUCHO'
	WHERE ccodcontrato = 21 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS MANTENIMIENTO DE EQUIPOS'
	WHERE ccodcontrato = 366 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS CAFETERÍA'
	WHERE ccodcontrato = 240 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS CONSULTORÍA'
	WHERE ccodcontrato = 12 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS DOCENCIA'
	WHERE ccodcontrato = 14 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS INSTALACIÓN DE ALARMAS Y EQUIPOS CONTRA INCENDIOS'
	WHERE ccodcontrato = 245 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS INSTALACIÓN DE VENTANERÍA'
	WHERE ccodcontrato = 241 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS INTERVENTORÍA'
	WHERE ccodcontrato = 13 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS OTROS'
	WHERE ccodcontrato = 18 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS AUDITORÍA'
	WHERE ccodcontrato = 16 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS CAPACITACIÓN'
	WHERE ccodcontrato = 15 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS DE INGENIERÍA'
	WHERE ccodcontrato = 361 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS DE VIGILANCIA DERIVADA DE CONTRATO'
	WHERE ccodcontrato = 264 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS SUMINISTRO DE PERSONAL'
	WHERE ccodcontrato = 360 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'SUMINISTRO E INSTALACIÓN DE REDES DE TELECOMUNICACIONES Y ELÉCTRICAS'
	WHERE ccodcontrato = 25 
	AND cclacontrato = 4721;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'TRANSPORTE BASURA Y RESIDUOS HOSPITALARIOS'
	WHERE ccodcontrato = 230 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'TRANSPORTE PRIVADO DE PASAJEROS'
	WHERE ccodcontrato = 24 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'OBRA CIVIL DIQUES MENORES'
	WHERE ccodcontrato = 336 
	AND cclacontrato = 4291;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'OBRA CIVIL EXCAVACIÓN - CIMENTACIÓN'
	WHERE ccodcontrato = 334 
	AND cclacontrato = 4291;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'OBRA CIVIL MOVIMIENTO DE TIERRA'
	WHERE ccodcontrato = 363 
	AND cclacontrato = 4291;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'OBRA CIVIL REMODELACIONES'
	WHERE ccodcontrato = 1 
	AND cclacontrato = 4291;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'OBRA CIVIL VIADUCTOS'
	WHERE ccodcontrato = 259 
	AND cclacontrato = 4291;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'TENDIDOS DE REDES DE TELECOMUNICACIONES FUERA DE PREDIOS DEL ASEGURADO'
	WHERE ccodcontrato = 219 
	AND cclacontrato = 4291;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'DAÑO FINANCIERO'
	WHERE ccodcontrato = 329 
	AND cclacontrato = 1;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'SUMINISTRO Y OPERACIÓN DE MAQUINARIA AMARILLA'
	WHERE ccodcontrato = 251 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'SUMINISTRO Y OPERACIÓN DE MAQUINARIA RETROEXCAVADORAS'
	WHERE ccodcontrato = 250 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'SUMINISTRO Y OPERACIÓN DE MAQUINARIA MONTACARGAS'
	WHERE ccodcontrato = 249 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'SUMINISTRO Y OPERACIÓN DE MAQUINARIA GRUAS TELESCOPICAS'
	WHERE ccodcontrato = 247 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS OPERACIÓN DE SERVICIOS PÚBLICOS'
	WHERE ccodcontrato = 351 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'PRESTACIÓN DE SERVICIOS OPERACIÓN DE CONCESIONES'
	WHERE ccodcontrato = 350 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'LÍNEAS AÉREAS / CATERING'
	WHERE ccodcontrato = 309 
	AND cclacontrato = 1;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'DIRECTORES / ADMINSITRADORES'
	WHERE ccodcontrato = 306 
	AND cclacontrato = 5531;
	
	UPDATE detclasecontrato
	SET tdescripcion = 'OBRA CIVIL PUENTES EN AGUA'
	WHERE ccodcontrato = 358 
	AND cclacontrato = 4291;	
	
	UPDATE detclasecontrato
	SET tdescripcion = 'EVENTOS EXHIBICIONES / FERIAS DE ANIMALES'
	WHERE ccodcontrato = 348
	AND cclacontrato = 5531;	
	
	
	COMMIT;
	
END;
/