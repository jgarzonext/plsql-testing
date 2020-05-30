DECLARE
	
	v_contexto NUMBER := 0;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE bf_desgrup WHERE cgrup BETWEEN 200000 AND 200045;
	
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200000,1,1,'Predios Labores Operaciones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200000,1,2,'Predios Labores Operaciones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200000,1,8,'Predios Labores Operaciones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200001,1,1,'Predios Labores Operaciones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200001,1,2,'Predios Labores Operaciones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200001,1,8,'Predios Labores Operaciones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200002,1,1,'Perjuicios Patrim Da�o Emergente / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200002,1,2,'Perjuicios Patrim Da�o Emergente / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200002,1,8,'Perjuicios Patrim Da�o Emergente / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200003,1,1,'Perjuicios Patrim Da�o Emergente / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200003,1,2,'Perjuicios Patrim Da�o Emergente / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200003,1,8,'Perjuicios Patrim Da�o Emergente / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200004,1,1,'Perjuicios Patrim Lucro Cesante / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200004,1,2,'Perjuicios Patrim Lucro Cesante / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200004,1,8,'Perjuicios Patrim Lucro Cesante / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200005,1,1,'Perjuicios Patrim Lucro Cesante / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200005,1,2,'Perjuicios Patrim Lucro Cesante / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200005,1,8,'Perjuicios Patrim Lucro Cesante / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200006,1,1,'Perjuicios Extrapatrimoniales / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200006,1,2,'Perjuicios Extrapatrimoniales / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200006,1,8,'Perjuicios Extrapatrimoniales / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200007,1,1,'Perjuicios Extrapatrimoniales / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200007,1,2,'Perjuicios Extrapatrimoniales / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200007,1,8,'Perjuicios Extrapatrimoniales / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200008,1,1,'Gastos Judiciales de Defensa / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200008,1,2,'Gastos Judiciales de Defensa / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200008,1,8,'Gastos Judiciales de Defensa / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200009,1,1,'Gastos Judiciales de Defensa / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200009,1,2,'Gastos Judiciales de Defensa / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200009,1,8,'Gastos Judiciales de Defensa / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200010,1,1,'Gastos M�dicos de Urgencia / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200010,1,2,'Gastos M�dicos de Urgencia / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200010,1,8,'Gastos M�dicos de Urgencia / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200011,1,1,'Gastos M�dicos de Urgencia / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200011,1,2,'Gastos M�dicos de Urgencia / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200011,1,8,'Gastos M�dicos de Urgencia / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200012,1,1,'Culpa Grave / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200012,1,2,'Culpa Grave / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200012,1,8,'Culpa Grave / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200013,1,1,'Culpa Grave / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200013,1,2,'Culpa Grave / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200013,1,8,'Culpa Grave / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200014,1,1,'Resp Civil Patronal / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200014,1,2,'Resp Civil Patronal / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200014,1,8,'Resp Civil Patronal / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200015,1,1,'Resp Civil Patronal / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200015,1,2,'Resp Civil Patronal / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200015,1,8,'Resp Civil Patronal / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200016,1,1,'Resp Civil Contratistas Y Subcont / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200016,1,2,'Resp Civil Contratistas Y Subcont / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200016,1,8,'Resp Civil Contratistas Y Subcont / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200017,1,1,'Resp Civil Contratistas Y Subcont / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200017,1,2,'Resp Civil Contratistas Y Subcont / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200017,1,8,'Resp Civil Contratistas Y Subcont / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200018,1,1,'Resp Civil Cruzada / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200018,1,2,'Resp Civil Cruzada / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200018,1,8,'Resp Civil Cruzada / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200019,1,1,'Resp Civil Cruzada / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200019,1,2,'Resp Civil Cruzada / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200019,1,8,'Resp Civil Cruzada / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200020,1,1,'Resp Civil Veh�culos Prop Y No Prop / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200020,1,2,'Resp Civil Veh�culos Prop Y No Prop / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200020,1,8,'Resp Civil Veh�culos Prop Y No Prop / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200021,1,1,'Resp Civil Veh�culos Prop Y No Prop / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200021,1,2,'Resp Civil Veh�culos Prop Y No Prop / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200021,1,8,'Resp Civil Veh�culos Prop Y No Prop / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200022,1,1,'Resp Civil Productos / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200022,1,2,'Resp Civil Productos / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200022,1,8,'Resp Civil Productos / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200023,1,1,'Resp Civil Productos / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200023,1,2,'Resp Civil Productos / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200023,1,8,'Resp Civil Productos / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200024,1,1,'RC Operaciones o Trabajos Terminados / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200024,1,2,'RC Operaciones o Trabajos Terminados / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200024,1,8,'RC Operaciones o Trabajos Terminados / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200025,1,1,'RC Operaciones o Trabajos Terminados / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200025,1,2,'RC Operaciones o Trabajos Terminados / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200025,1,8,'RC Operaciones o Trabajos Terminados / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200026,1,1,'RC Contaminaci�n-Poluci�n Sub-Acc-Impiones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200026,1,2,'RC Contaminaci�n-Poluci�n Sub-Acc-Impiones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200026,1,8,'RC Contaminaci�n-Poluci�n Sub-Acc-Impiones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200027,1,1,'RC Contaminaci�n-Poluci�n Sub-Acc-Impiones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200027,1,2,'RC Contaminaci�n-Poluci�n Sub-Acc-Impiones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200027,1,8,'RC Contaminaci�n-Poluci�n Sub-Acc-Impiones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200028,1,1,'RC Da�os a bienes bajo cuidado tenencia / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200028,1,2,'RC Da�os a bienes bajo cuidado tenencia / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200028,1,8,'RC Da�os a bienes bajo cuidado tenencia / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200029,1,1,'RC Da�os a bienes bajo cuidado tenencia / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200029,1,2,'RC Da�os a bienes bajo cuidado tenencia / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200029,1,8,'RC Da�os a bienes bajo cuidado tenencia / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200030,1,1,'RC Uso Y Manejo Parqueaderos / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200030,1,2,'RC Uso Y Manejo Parqueaderos / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200030,1,8,'RC Uso Y Manejo Parqueaderos / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200031,1,1,'RC Uso Y Manejo Parqueaderos / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200031,1,2,'RC Uso Y Manejo Parqueaderos / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200031,1,8,'RC Uso Y Manejo Parqueaderos / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200032,1,1,'RC Vibraci�n, Asentamiento Prop Adyan / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200032,1,2,'RC Vibraci�n, Asentamiento Prop Adyan / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200032,1,8,'RC Vibraci�n, Asentamiento Prop Adyan / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200033,1,1,'RC Vibraci�n, Asentamiento Prop Adyan / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200033,1,2,'RC Vibraci�n, Asentamiento Prop Adyan / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200033,1,8,'RC Vibraci�n, Asentamiento Prop Adyan / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200034,1,1,'RC Da�os a Cables Tuber�as Subte / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200034,1,2,'RC Da�os a Cables Tuber�as Subte / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200034,1,8,'RC Da�os a Cables Tuber�as Subte / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200035,1,1,'RC Da�os a Cables Tuber�as Subte / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200035,1,2,'RC Da�os a Cables Tuber�as Subte / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200035,1,8,'RC Da�os a Cables Tuber�as Subte / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200036,1,1,'RC Exportaciones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200036,1,2,'RC Exportaciones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200036,1,8,'RC Exportaciones / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200037,1,1,'RC Exportaciones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200037,1,2,'RC Exportaciones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200037,1,8,'RC Exportaciones / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200038,1,1,'RC Uni�n y Mezcla / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200038,1,2,'RC Uni�n y Mezcla / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200038,1,8,'RC Uni�n y Mezcla / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200039,1,1,'RC Uni�n y Mezcla / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200039,1,2,'RC Uni�n y Mezcla / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200039,1,8,'RC Uni�n y Mezcla / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200040,1,1,'RC Transformaci�n / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200040,1,2,'RC Transformaci�n / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200040,1,8,'RC Transformaci�n / Vigencia',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200041,1,1,'RC Transformaci�n / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200041,1,2,'RC Transformaci�n / Evento',f_user, f_sysdate);
	INSERT INTO bf_desgrup (cempres,cgrup,cversion,cidioma,tgrup,cusualt,falta) VALUES (24,200041,1,8,'RC Transformaci�n / Evento',f_user, f_sysdate);
	
	
    COMMIT;
	
END;
/
