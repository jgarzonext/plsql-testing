-- Create table
create table PER_INDICADORES
(
  CODVINCULO    NUMBER not null,
  CODSUBVINCULO NUMBER,
  SPERSON       NUMBER not null,
  CTIPIND       NUMBER not null,
  FALTA         DATE,
  CUSUALTA      VARCHAR2(50)
);
-- Add comments to the columns 
comment on column PER_INDICADORES.CODVINCULO
  is 'Codigo tipo de Vinculo de la persona';
comment on column PER_INDICADORES.CODSUBVINCULO
  is 'Codigo Subvinculo de la persona(Agente, Compañias)';
comment on column PER_INDICADORES.SPERSON
  is 'Codigo de la persona';
comment on column PER_INDICADORES.CTIPIND
  is 'Codigo Tipo de Indicador';
comment on column PER_INDICADORES.FALTA
  is 'Fecha de creacion';
comment on column PER_INDICADORES.CUSUALTA
  is 'Usuario que realiza la operacion';
-- Create/Recreate indexes 
create index PER_INDICADORES_INDEX1 on PER_INDICADORES (SPERSON, CODVINCULO, CODSUBVINCULO, CTIPIND);
