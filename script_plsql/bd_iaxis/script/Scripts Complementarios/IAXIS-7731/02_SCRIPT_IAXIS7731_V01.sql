/* Formatted on 19/12/2019 17:30*/
/* **************************** 19/12/2019 17:30 **********************************************************************
Versión           Descripción
01.               -Este script borra el objeto OB_IAX_SIN_TRAMI_MOVPAGO
IAXIS-7731        19/12/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN pac_skip_ora.p_comprovadrop('WEB_PERSISTENCIA','TABLE'); 
EXCEPTION WHEN OTHERS THEN
NULL;
END;
/
-- Create table
create table WEB_PERSISTENCIA
(
  idsession                   VARCHAR2(500) not null,
  web_persis_produccion       T_PERSIS_PRODUCCION,
  web_persis_suplemento       T_PERSIS_SUPLEMENTO,
  web_persis_siniestro        T_PERSIS_SINIESTRO,
  web_persis_simulacion       T_PERSIS_SIMULACION,
  web_persis_persona          T_PERSIS_PERSONA,
  web_persis_comision         T_PERSIS_COMISION,
  web_persis_descuento        T_PERSIS_DESCUENTO,
  web_persis_iaxpar_productos T_PERSIS_IAXPAR_PRODUCTOS,
  web_persis_fincas           T_PERSIS_FINCAS,
  web_persis_facturas         T_PERSIS_FACTURAS,
  cusuari                     VARCHAR2(30),
  fcreacion                   TIMESTAMP(6),
  facceso                     TIMESTAMP(6)
);
-- Add comments to the table 
comment on table WEB_PERSISTENCIA
  is 'Tabla para persistencia de la aplicacion en base de datos';
-- Add comments to the columns 
comment on column WEB_PERSISTENCIA.idsession
  is 'Identificador de session web';
comment on column WEB_PERSISTENCIA.web_persis_produccion
  is 'Datos relacionados con la producción';
comment on column WEB_PERSISTENCIA.web_persis_suplemento
  is 'Datos relacionados con los suplementos';
comment on column WEB_PERSISTENCIA.web_persis_siniestro
  IS 'Datos relacionados con los siniestro';
comment on column WEB_PERSISTENCIA.web_persis_simulacion
  is 'Datos relacionados con la simulacion';
comment on column WEB_PERSISTENCIA.web_persis_persona
  is 'Datos relacionados con la persona';
comment on column WEB_PERSISTENCIA.web_persis_comision
  is 'Datos relacionados con la comision';
comment on column WEB_PERSISTENCIA.web_persis_descuento
  is 'Datos relacionados con el descuento';
comment on column WEB_PERSISTENCIA.web_persis_iaxpar_productos
  is 'Datos relacionados con los productos';
comment on column WEB_PERSISTENCIA.web_persis_fincas
  is 'Datos relacionados con nuevo modelo de direcciones';
comment on column WEB_PERSISTENCIA.web_persis_facturas
  is 'Datos relacionados con nuevo modelo de facturas';
comment on column WEB_PERSISTENCIA.cusuari
  is 'Usuario propietario de la sesión';
comment on column WEB_PERSISTENCIA.fcreacion
  is 'Fecha de creación de la sesión';
comment on column WEB_PERSISTENCIA.facceso
  is 'Fecha de último acceso a la sesión';
-- Create/Recreate primary, unique and foreign key constraints 
alter table WEB_PERSISTENCIA
  add primary key (IDSESSION)
  using index ;
  
/



