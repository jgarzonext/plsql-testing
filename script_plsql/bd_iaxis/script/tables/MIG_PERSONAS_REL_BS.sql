BEGIN 
  PAC_SKIP_ORA.P_COMPROVADROP('MIG_PERSONAS_REL_BS','TABLE');
END;
/
create table MIG_PERSONAS_REL_BS
(
  mig_pk         VARCHAR2(50) not null,
  mig_fk         VARCHAR2(50) not null,
  fkrel          VARCHAR2(50) not null,
  ctiprel        NUMBER(2) not null,
  pparticipacion NUMBER(7,3),
  islider        NUMBER(3),
  cagrupa        NUMBER(5),
  fagrupa        DATE,
  mig_valida     VARCHAR2(50)
);
/
