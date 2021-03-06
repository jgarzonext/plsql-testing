EXEC PAC_SKIP_ORA.P_COMPROVADROP('PER_PERSONAS_REL','TABLE');
CREATE TABLE PER_PERSONAS_REL 
   (SPERSON NUMBER(10,0) NOT NULL ENABLE, 
	CAGENTE NUMBER NOT NULL ENABLE, 
	SPERSON_REL NUMBER(10,0) NOT NULL ENABLE, 
	CTIPPER_REL NUMBER(2,0) NOT NULL ENABLE, 
	CUSUARI VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	FMOVIMI DATE NOT NULL ENABLE, 
	PPARTICIPACION NUMBER(3,0), 
	ISLIDER NUMBER(1,0), 
	TLIMITA VARCHAR2(2000 BYTE), 
	CAGRUPA NUMBER, 
	FAGRUPA DATE) ;

   COMMENT ON COLUMN PER_PERSONAS_REL.SPERSON IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN PER_PERSONAS_REL.CAGENTE IS 'Código de agente';
   COMMENT ON COLUMN PER_PERSONAS_REL.SPERSON_REL IS 'Código de persona de la persona relacionada';
   COMMENT ON COLUMN PER_PERSONAS_REL.CTIPPER_REL IS 'Tipo de persona relacionada (V.F. 1037)';
   COMMENT ON COLUMN PER_PERSONAS_REL.CUSUARI IS 'Código usuario modificación registro';
   COMMENT ON COLUMN PER_PERSONAS_REL.FMOVIMI IS 'Fecha modificación registro';
   COMMENT ON COLUMN PER_PERSONAS_REL.PPARTICIPACION IS 'Porcentaje de Participacion';
   COMMENT ON COLUMN PER_PERSONAS_REL.ISLIDER IS 'Lider del consorcio (1:Sí/0:No)';
   COMMENT ON COLUMN PER_PERSONAS_REL.CAGRUPA IS 'Agrupación consorcio';
   COMMENT ON COLUMN PER_PERSONAS_REL.FAGRUPA IS 'Fecha Agrupacion';
   COMMENT ON TABLE PER_PERSONAS_REL  IS 'Tabla de Personas relacionadas';