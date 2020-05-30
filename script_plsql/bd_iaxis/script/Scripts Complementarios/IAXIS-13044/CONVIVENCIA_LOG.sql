-- Create table
create table CONVIVENCIA_LOG
(
  sinterf      NUMBER,
  nnumide      VARCHAR2(20),
  tabla_osiris VARCHAR2(20),
  operacion    VARCHAR2(20),
  estado       NUMBER,
  fecha        DATE,
  respuesta    VARCHAR2(3000)
)
-- Create/Recreate indexes 
create index SINTERF on CONVIVENCIA_LOG (SINTERF);
