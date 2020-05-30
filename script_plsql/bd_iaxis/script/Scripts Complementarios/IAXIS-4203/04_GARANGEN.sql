DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

	update garangen
	set tgarant = 'Predios Labores Operaciones / Evento', trotgar = 'Predios Labores Operaciones / Evento'
	WHERE cgarant = 7030;

	update garangen
	set tgarant = 'Perjuicios Patrim Lucro Cesante / Evento', trotgar = 'Perjuicios Patrim Lucro Cesante / Evento'
	WHERE cgarant = 7031;

	update garangen
	set tgarant = 'Perjuicios Extrapatrimoniales / Evento', trotgar = 'Perjuicios Extrapatrimoniales / Evento'
	WHERE cgarant = 7032;

	--7033 Resp Civil Patronal

	update garangen
	set tgarant = 'Resp Civil Contratistas Y Subcont / Evento', trotgar = 'Resp Civil Contratistas Y Subcont / Evento'
	WHERE cgarant = 7034;

	--7035 Resp Civil Cruzada

	update garangen
	set tgarant = 'Gastos Médicos de Urgencia / Evento', trotgar = 'Gastos Médicos de Urgencia / Evento'
	WHERE cgarant = 7036;

	update garangen
	set tgarant = 'Resp Civil Vehículos Prop Y No Prop / Evento', trotgar = 'Resp Civil Vehículos Prop Y No Prop / Evento'
	WHERE cgarant = 7037;

	update garangen
	set tgarant = 'RC Daños a bienes bajo cuidado tenencia / Evento', trotgar = 'RC Daños a bienes bajo cuidado tenencia / Evento'
	WHERE cgarant = 7038;

	update garangen
	set tgarant = 'RC Contaminación-Polución Sub-Acc-Impiones / Evento', trotgar = 'RC Contaminación-Polución Sub-Acc-Impiones / Evento'
	WHERE cgarant = 7039;

	update garangen
	set tgarant = 'RC Vibración, Asentamiento Prop Adyan / Evento', trotgar = 'RC Vibración, Asentamiento Prop Adyan / Evento'
	WHERE cgarant = 7040;

	update garangen
	set tgarant = 'RC Daños a Cables Tuberías Subte / Evento', trotgar = 'RC Daños a Cables Tuberías Subte / Evento'
	WHERE cgarant = 7041;

	update garangen
	set tgarant = 'RC Operaciones o Trabajos Terminados / Evento', trotgar = 'RC Operaciones o Trabajos Terminados / Evento'
	WHERE cgarant = 7043;
	
	
	
	
	update garangen
	set tgarant = 'Predios Labores Operaciones / Vigencia', trotgar = 'Predios Labores Operaciones / Vigencia'
	WHERE cgarant = 7050;

	update garangen
	set tgarant = 'Perjuicios Patrim Lucro Cesante / Vigencia', trotgar = 'Perjuicios Patrim Lucro Cesante / Vigencia'
	WHERE cgarant = 7051;

	update garangen
	set tgarant = 'Perjuicios Extrapatrimoniales / Vigencia', trotgar = 'Perjuicios Extrapatrimoniales / Vigencia'
	WHERE cgarant = 7052;

	--7053 Resp Civil Patronal

	update garangen
	set tgarant = 'Resp Civil Contratistas Y Subcont / Vigencia', trotgar = 'Resp Civil Contratistas Y Subcont / Vigencia'
	WHERE cgarant = 7054;

	--7055 Resp Civil Cruzada

	update garangen
	set tgarant = 'Gastos Médicos de Urgencia / Vigencia', trotgar = 'Gastos Médicos de Urgencia / Vigencia'
	WHERE cgarant = 7056;

	update garangen
	set tgarant = 'Resp Civil Vehículos Prop Y No Prop / Vigencia', trotgar = 'Resp Civil Vehículos Prop Y No Prop / Vigencia'
	WHERE cgarant = 7057;

	update garangen
	set tgarant = 'RC Daños a bienes bajo cuidado tenencia / Vigencia', trotgar = 'RC Daños a bienes bajo cuidado tenencia / Vigencia'
	WHERE cgarant = 7058;

	update garangen
	set tgarant = 'RC Contaminación-Polución Sub-Acc-Impiones / Vigencia', trotgar = 'RC Contaminación-Polución Sub-Acc-Impiones / Vigencia'
	WHERE cgarant = 7059;

	update garangen
	set tgarant = 'RC Vibración, Asentamiento Prop Adyan / Vigencia', trotgar = 'RC Vibración, Asentamiento Prop Adyan / Vigencia'
	WHERE cgarant = 7060;

	update garangen
	set tgarant = 'RC Daños a Cables Tuberías Subte / Vigencia', trotgar = 'RC Daños a Cables Tuberías Subte / Vigencia'
	WHERE cgarant = 7061;

	update garangen
	set tgarant = 'RC Operaciones o Trabajos Terminados / Vigencia', trotgar = 'RC Operaciones o Trabajos Terminados / Vigencia'
	WHERE cgarant = 7063;

	
	update garangen
	set tgarant = 'Perjuicios Patrim Daño Emergente / Vigencia', trotgar = 'Perjuicios Patrim Daño Emergente / Vigencia'
	WHERE cgarant = 7783;

	update garangen
	set tgarant = 'Perjuicios Patrim Daño Emergente / Evento', trotgar = 'Perjuicios Patrim Daño Emergente / Evento'
	WHERE cgarant = 7784;

	update garangen
	set tgarant = 'Resp Civil Productos / Vigencia', trotgar = 'Resp Civil Productos / Vigencia'
	WHERE cgarant = 7785;

	update garangen
	set tgarant = 'Resp Civil Productos / Evento', trotgar = 'Resp Civil Productos / Evento'
	WHERE cgarant = 7786;

	update garangen
	set tgarant = 'RC Uso Y Manejo Parqueaderos / Vigencia', trotgar = 'RC Uso Y Manejo Parqueaderos / Vigencia'
	WHERE cgarant = 7789;

	update garangen
	set tgarant = 'RC Uso Y Manejo Parqueaderos / Evento', trotgar = 'RC Uso Y Manejo Parqueaderos / Evento'
	WHERE cgarant = 7790;

	update garangen
	set tgarant = 'Culpa Grave / Vigencia', trotgar = 'Culpa Grave / Vigencia'
	WHERE cgarant = 7793;

	update garangen
	set tgarant = 'Culpa Grave / Evento', trotgar = 'Culpa Grave / Evento'
	WHERE cgarant = 7794;

	COMMIT;
	
END;
/