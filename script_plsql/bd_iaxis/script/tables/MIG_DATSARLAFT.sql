--------------------------------------------------------
--  DDL for Table MIG_DATSARLAFT
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_DATSARLAFT" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"SSARLAFT" NUMBER, 
	"FRADICA" DATE, 
	"SPERSON" NUMBER, 
	"FDILIGENCIA" DATE, 
	"CAUTTRADAT" NUMBER, 
	"CRUTFCC" NUMBER, 
	"CESTCONF" NUMBER, 
	"FCONFIR" DATE, 
	"CVINCULACION" NUMBER, 
	"CVINTOMASE" NUMBER, 
	"TVINTOMASE" VARCHAR2(150 BYTE), 
	"CVINTOMBEN" NUMBER, 
	"TVINTOMBEM" VARCHAR2(150 BYTE), 
	"CVINASEBEN" NUMBER, 
	"TVINASEBEM" VARCHAR2(150 BYTE), 
	"TACTIPPAL" VARCHAR2(150 BYTE), 
	"NCIIUPPAL" NUMBER, 
	"TOCUPACION" VARCHAR2(150 BYTE), 
	"TCARGO" VARCHAR2(150 BYTE), 
	"TEMPRESA" VARCHAR2(150 BYTE), 
	"TDIREMPRESA" VARCHAR2(150 BYTE), 
	"TTELEMPRESA" VARCHAR2(150 BYTE), 
	"TACTISEC" VARCHAR2(150 BYTE), 
	"NCIIUSEC" NUMBER, 
	"TDIRSEC" VARCHAR2(150 BYTE), 
	"TTELSEC" VARCHAR2(150 BYTE), 
	"TPRODSERVCOM" VARCHAR2(150 BYTE), 
	"IINGRESOS" NUMBER, 
	"IACTIVOS" NUMBER, 
	"IPATRIMONIO" NUMBER, 
	"IEGRESOS" NUMBER, 
	"IPASIVOS" NUMBER, 
	"IOTROINGRESO" NUMBER, 
	"TCONCOTRING" VARCHAR2(150 BYTE), 
	"CMANRECPUB" NUMBER, 
	"CPODPUB" NUMBER, 
	"CRECPUB" NUMBER, 
	"CVINPERPUB" NUMBER, 
	"TVINPERPUB" VARCHAR2(150 BYTE), 
	"CDECTRIBEXT" NUMBER, 
	"TDECTRIBEXT" VARCHAR2(150 BYTE), 
	"TORIGFOND" VARCHAR2(150 BYTE), 
	"CTRAXMODEXT" NUMBER, 
	"TTRAXMODEXT" VARCHAR2(150 BYTE), 
	"CPRODFINEXT" NUMBER, 
	"CCTAMODEXT" NUMBER, 
	"TOTRASOPER" VARCHAR2(150 BYTE), 
	"CRECLINDSEG" NUMBER, 
	"TCIUDADSUC" NUMBER, 
	"TPAISUC" NUMBER, 
	"TCIUDAD" NUMBER, 
	"TPAIS" NUMBER, 
	"TLUGAREXPEDIDOC" NUMBER, 
	"RESOCIEDAD" NUMBER, 
	"TNACIONALI2" NUMBER, 
	"NGRADOPOD" NUMBER, 
	"NGOZREC" NUMBER, 
	"NPARTICIPA" NUMBER, 
	"NVINCULO" NUMBER, 
	"NTIPDOC" NUMBER, 
	"FEXPEDICDOC" DATE, 
	"FNACIMIENTO" DATE, 
	"NRAZONSO" VARCHAR2(150 BYTE), 
	"TNIT" VARCHAR2(150 BYTE), 
	"TDV" VARCHAR2(150 BYTE), 
	"TOFICINAPRI" VARCHAR2(150 BYTE), 
	"TTELEFONO" VARCHAR2(150 BYTE), 
	"TFAX" VARCHAR2(150 BYTE), 
	"TSUCURSAL" VARCHAR2(150 BYTE), 
	"TTELEFONOSUC" VARCHAR2(150 BYTE), 
	"TFAXSUC" VARCHAR2(150 BYTE), 
	"CTIPOEMP" VARCHAR2(150 BYTE), 
	"TCUALTEMP" VARCHAR2(150 BYTE), 
	"TSECTOR" VARCHAR2(150 BYTE), 
	"TCIIU" VARCHAR2(150 BYTE), 
	"TACTIACA" VARCHAR2(150 BYTE), 
	"TREPRESENTANLE" VARCHAR2(150 BYTE), 
	"TSEGAPE" VARCHAR2(150 BYTE), 
	"TNOMBRES" VARCHAR2(150 BYTE), 
	"TNUMDOC" VARCHAR2(150 BYTE), 
	"TLUGNACI" VARCHAR2(150 BYTE), 
	"TNACIONALI1" VARCHAR2(150 BYTE), 
	"TINDIQUEVIN" VARCHAR2(150 BYTE), 
	"PER_PAPELLIDO" VARCHAR2(150 BYTE), 
	"PER_SAPELLIDO" VARCHAR2(150 BYTE), 
	"PER_NOMBRES" VARCHAR2(150 BYTE), 
	"PER_TIPDOCUMENT" NUMBER, 
	"PER_DOCUMENT" VARCHAR2(150 BYTE), 
	"PER_FEXPEDICION" DATE, 
	"PER_LUGEXPEDICION" NUMBER, 
	"PER_FNACIMI" DATE, 
	"PER_LUGNACIMI" NUMBER, 
	"PER_NACION1" NUMBER, 
	"PER_DIRERECI" VARCHAR2(150 BYTE), 
	"PER_PAIS" NUMBER, 
	"PER_CIUDAD" NUMBER, 
	"PER_DEPARTAMENT" NUMBER, 
	"PER_EMAIL" VARCHAR2(150 BYTE), 
	"PER_TELEFONO" VARCHAR2(150 BYTE), 
	"PER_CELULAR" VARCHAR2(150 BYTE), 
	"NRECPUB" NUMBER, 
	"TPRESETRECLAMACI" NUMBER, 
	"PER_TLUGEXPEDICION" VARCHAR2(150 BYTE), 
	"PER_TLUGNACIMI" VARCHAR2(150 BYTE), 
	"PER_TNACION1" VARCHAR2(150 BYTE), 
	"PER_TNACION2" VARCHAR2(150 BYTE), 
	"PER_TPAIS" VARCHAR2(150 BYTE), 
	"PER_TDEPARTAMENT" VARCHAR2(150 BYTE), 
	"PER_TCIUDAD" VARCHAR2(150 BYTE), 
	"EMPTPAIS" VARCHAR2(150 BYTE), 
	"EMPTDEPATAMENTO" VARCHAR2(150 BYTE), 
	"EMPTCIUDAD" VARCHAR2(150 BYTE), 
	"EMPTPAISUC" VARCHAR2(150 BYTE), 
	"EMPTDEPATAMENTOSUC" VARCHAR2(150 BYTE), 
	"EMPTCIUDADSUC" VARCHAR2(150 BYTE), 
	"EMPTLUGNACI" VARCHAR2(150 BYTE), 
	"EMPTNACIONALI1" VARCHAR2(150 BYTE), 
	"EMPTNACIONALI2" VARCHAR2(150 BYTE), 
	"CSUJETOOBLIFACION" NUMBER, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."MIG_PK" IS 'Clave �nica de MIG_DATSARLAFT';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."MIG_FK" IS 'Clave externa para MIG_PERSONAS';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."FRADICA" IS 'F. Radicaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."SPERSON" IS 'C�digo de Persona (Nulo en este caso)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."FDILIGENCIA" IS 'F. Diligenciamiento';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CAUTTRADAT" IS 'Aut. Tratamiento datos';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CRUTFCC" IS 'Ruta del FCC (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CESTCONF" IS 'Estado confirmaci�n (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."FCONFIR" IS 'Fecha Confirmaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CVINCULACION" IS 'Clase de vinculaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CVINTOMASE" IS 'V�nculos existentes entre TOMADOR, ASEGURADO, AFIANZADO Y BENEFICIARIO';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TVINTOMASE" IS 'Otra vinculaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CVINTOMBEN" IS 'V�nculos existentes entre TOMADOR, ASEGURADO, AFIANZADO Y BENEFICIARIO';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TVINTOMBEM" IS 'Otra vinculaci�n ';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CVINASEBEN" IS 'V�nculos existentes entre TOMADOR, ASEGURADO, AFIANZADO Y BENEFICIARIO';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TVINASEBEM" IS 'Otra vinculaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TACTIPPAL" IS 'Actividad principal';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NCIIUPPAL" IS 'CIIU';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TOCUPACION" IS 'Ocupaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TCARGO" IS 'Cargo';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TEMPRESA" IS 'Empresa donde trabaja';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TDIREMPRESA" IS 'Direcci�n oficina';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TTELEMPRESA" IS 'Tel�fono oficina';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TACTISEC" IS 'Actividad secundaria';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NCIIUSEC" IS 'CIIU';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TDIRSEC" IS 'Direcci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TTELSEC" IS 'Tel�fono';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TPRODSERVCOM" IS 'Qu� tipo de producto y/o servicio comercializa?';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."IINGRESOS" IS 'Ingresos Mensuales';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."IACTIVOS" IS 'Activos';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."IPATRIMONIO" IS 'Patrimonio';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."IEGRESOS" IS 'Egresos mensuales';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."IPASIVOS" IS 'Pasivo';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."IOTROINGRESO" IS 'Otros ingresos';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TCONCOTRING" IS 'Concepto ingresos mensuales';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CMANRECPUB" IS 'Por su cargo o actividad maneja recursos p�blicos? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CPODPUB" IS 'Por su cargo o actividad ejerce alg�n grado de poder p�blico? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CRECPUB" IS 'Por su actividad u oficio goza usted de reconocimiento p�blico general? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CVINPERPUB" IS 'Existe alg�n v�nculo entre usted y una persona considerada p�blicamente expuesta? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TVINPERPUB" IS 'Indique';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TORIGFOND" IS 'Or�genes de fondos';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CTRAXMODEXT" IS 'Realiza transacciones en moneda extranjera ? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TTRAXMODEXT" IS 'Cual';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CPRODFINEXT" IS 'Posee productos financieros en el exterior ? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CCTAMODEXT" IS 'Posee cuentas en moneda extranjera? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TOTRASOPER" IS 'Indique otras operaciones';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TCIUDADSUC" IS 'Ciudad de la Sucursal';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TPAISUC" IS 'Pa�s de la Sucursal';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TCIUDAD" IS 'Ciudad de la Sucursal';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TPAIS" IS 'Pa�s de Residencia';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TLUGAREXPEDIDOC" IS 'Lugar expedici�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."RESOCIEDAD" IS 'Residencia de la sociedad';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TNACIONALI2" IS 'Nacionalidad 2';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NGRADOPOD" IS 'Por su cargo o actividad ejerce alg�n grado de poder p�blico? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NGOZREC" IS 'Por su actividad u oficio, goza usted de reconocimiento p�blico general? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NPARTICIPA" IS 'Posee participaci�n superior al 5%? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NVINCULO" IS 'Existe alg�n v�nculo entre usted y una persona considerada p�blicamente expuesta? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NTIPDOC" IS 'Tipo de identificaci�n persona (NIF, pasaporte, etc.)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."FEXPEDICDOC" IS 'Fecha Expedici�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."FNACIMIENTO" IS 'Fecha nacimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NRAZONSO" IS 'Nombre o raz�n social';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TNIT" IS 'NIT';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TDV" IS 'DV';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TOFICINAPRI" IS 'Oficina Principal Direcci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TTELEFONO" IS 'Tel�fono';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TFAX" IS 'Fax';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TSUCURSAL" IS 'Sucursal o agencia Direcci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TTELEFONOSUC" IS 'Tel�fono';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TFAXSUC" IS 'Fax';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CTIPOEMP" IS 'Tipo de empresa';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TCUALTEMP" IS 'Otra, cu�l?';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TSECTOR" IS 'Sector de la econ�mica-a';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TCIIU" IS 'CIIU';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TACTIACA" IS 'Actividad econ�mica';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TREPRESENTANLE" IS 'Representante legal Primer Apellido';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TSEGAPE" IS 'Segundo Apellido';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TNOMBRES" IS 'Nombres';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TNUMDOC" IS 'N�mero de Identificaci�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TLUGNACI" IS 'Lugar de nacimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TNACIONALI1" IS 'Nacionalidad 1';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TINDIQUEVIN" IS 'Indique';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_PAPELLIDO" IS 'Primer Apellido';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_SAPELLIDO" IS 'Segundo Apellido';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_NOMBRES" IS 'Nombres';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TIPDOCUMENT" IS 'Tipo de identificaci�n persona (NIF, pasaporte, etc.)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_DOCUMENT" IS 'Documento';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_FEXPEDICION" IS 'Fecha Expedici�n';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_LUGEXPEDICION" IS 'Nacionalidad 2';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_FNACIMI" IS 'Fecha nacimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_LUGNACIMI" IS 'Lugar de nacimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_NACION1" IS 'Nacionalidad 1';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_DIRERECI" IS 'Direcci�n residencia';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_PAIS" IS 'Pa�s de residencia';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_CIUDAD" IS 'Ciudad de residencia';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_DEPARTAMENT" IS 'Departamento de residencia';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_EMAIL" IS 'Email';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TELEFONO" IS 'Tel�fono';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_CELULAR" IS 'Celular';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."NRECPUB" IS 'Por su cargo o actividad maneja recursos p�blicos?';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."TPRESETRECLAMACI" IS 'Ha presentado reclamaciones o ha recibido indemnizaciones en seguros en los dos �ltimos aC1os? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TLUGEXPEDICION" IS 'Nacionalidad 2';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TLUGNACIMI" IS 'Lugar de nacimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TNACION1" IS 'Nacionalidad 1';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TNACION2" IS 'Nacionalidad 2';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TPAIS" IS 'Pa�s de residencia';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TDEPARTAMENT" IS 'Departamento de residencia';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."PER_TCIUDAD" IS 'Ciudad de residencia';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTPAIS" IS 'Pa�s de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTDEPATAMENTO" IS 'Departamento de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTCIUDAD" IS 'Ciudad de la empresa';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTPAISUC" IS 'Pa�s de la sucursal';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTDEPATAMENTOSUC" IS 'Departamento de la sucursal';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTCIUDADSUC" IS 'Ciudad de la sucursal';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTLUGNACI" IS 'Lugar de nacimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTNACIONALI1" IS 'Nacionalidad 1';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."EMPTNACIONALI2" IS 'Nacionalidad 2';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CSUJETOOBLIFACION" IS 'Es usted sujeto de obligaciones tributarias en otro pa�s o grupo de pa�ses? (V.F. 828 0= No, 1 = Si)';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."MIG_DATSARLAFT"."CUSUALT" IS 'Usuario Alta';
  GRANT DELETE ON "AXIS"."MIG_DATSARLAFT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_DATSARLAFT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DATSARLAFT" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_DATSARLAFT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DATSARLAFT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_DATSARLAFT" TO "PROGRAMADORESCSI";