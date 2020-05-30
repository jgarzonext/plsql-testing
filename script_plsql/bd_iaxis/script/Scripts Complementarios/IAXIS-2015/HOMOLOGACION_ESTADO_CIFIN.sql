-- Create table
create table HOMOLOGACION_ESTADO_CIFIN
(
  valor_cifin NVARCHAR2(100),
  valor_iaxis NVARCHAR2(100)
)

grant select, insert, update, delete on HOMOLOGACION_ESTADO_CIFIN to AXIS00;

-- Utilizar AXIS00 usuario para synonym
create or replace synonym HOMOLOGACION_ESTADO_CIFIN for AXIS.HOMOLOGACION_ESTADO_CIFIN;