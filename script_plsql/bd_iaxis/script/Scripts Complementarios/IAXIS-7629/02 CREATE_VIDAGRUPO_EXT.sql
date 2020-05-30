-- Create table
create table VIDAGRUPO_EXT
(
  tipo_id          NUMBER(10),
  tipper           NUMBER(3),
  tipo_sociedad    NUMBER(2),
  codvin           NUMBER(2),
  razon_social     VARCHAR2(250),
  apellido1_dq     VARCHAR2(250),
  apellido2_dq     VARCHAR2(250),
  nombre1_dq       VARCHAR2(250),
  nombre2_dq       VARCHAR2(250),
  no_id            VARCHAR2(12),
  digito_dq        VARCHAR2(3),
  fecha_expedicion DATE,
  fecha_nacimiento DATE,
  codigo_pais      NUMBER(10),
  codigo_depto     NUMBER(10),
  codigo_ciudad    NUMBER(10),
  genero           VARCHAR2(20),
  estado           NUMBER(4),
  codigo_ciiu      NUMBER(10),
  direccion_1      VARCHAR2(250),
  codigo_pais1_1   NUMBER(10),
  codigo_depto1_1  NUMBER(10),
  codigo_ciudad1_1 NUMBER(10),
  telefono_1       VARCHAR2(15),
  celular_1        VARCHAR2(15),
  correo_1         VARCHAR2(250),
  num_banco        NUMBER(10),
  tipo_cuenta      VARCHAR2(5),
  num_cuenta       VARCHAR2(50)
)
organization external
(
  type ORACLE_LOADER
  default directory TABEXT
  access parameters 
  (
    records delimited by 0x'0A'
    logfile 'VIDAGRUPO.log'
    badfile 'VIDAGRUPO.bad'
    discardfile 'VIDAGRUPO.dis'
    fields terminated by '|' lrtrim
    MISSING FIELD VALUES ARE NULL
    REJECT ROWS WITH ALL NULL FIELDS
    (   TIPO_ID,
        TIPPER,
        TIPO_SOCIEDAD,
        CODVIN,
        RAZON_SOCIAL,
        APELLIDO1_DQ,
        APELLIDO2_DQ,
        NOMBRE1_DQ,
        NOMBRE2_DQ,
        NO_ID,
        DIGITO_DQ,
        FECHA_EXPEDICION DATE MASK "dd/mm/yyyy",
        FECHA_NACIMIENTO DATE MASK "dd/mm/yyyy",
        CODIGO_PAIS,
        CODIGO_DEPTO,
        CODIGO_CIUDAD,
        GENERO,
        ESTADO,
        CODIGO_CIIU,
        DIRECCION_1,
        CODIGO_PAIS1_1,
        CODIGO_DEPTO1_1,
        CODIGO_CIUDAD1_1,
        TELEFONO_1,
        CELULAR_1,
        CORREO_1,
        NUM_BANCO,
        TIPO_CUENTA,
        NUM_CUENTA )
  )
  location (TABEXT:'VIDAGRUPO.csv')
)
reject limit UNLIMITED;
