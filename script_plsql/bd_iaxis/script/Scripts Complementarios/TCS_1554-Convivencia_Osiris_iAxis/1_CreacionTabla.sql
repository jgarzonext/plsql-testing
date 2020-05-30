create table CON_HOMOLOGA_OSIAX
(
  norden          NUMBER,
  tosiris         VARCHAR2(100),
  label_campo_osi VARCHAR2(1000),
  campo_osi       VARCHAR2(1000),
  tipvalor_osi    VARCHAR2(1000),
  tipcampo_osi    VARCHAR2(1000),
  tiaxis          VARCHAR2(1000),
  label_campo_iax VARCHAR2(1000),
  campo_iax       VARCHAR2(1000),
  tipvalor_iax    VARCHAR2(1000),
  tipcampo_iax    VARCHAR2(1000),
  query_insert    VARCHAR2(4000),
  campo_extra     VARCHAR2(4000),
  query_select    VARCHAR2(4000),
  campo_extra1    VARCHAR2(4000)
);
-- Add comments to the columns 
comment on column CON_HOMOLOGA_OSIAX.tosiris
  is 'Nombre tabla Osiris Ej: S03500';
comment on column CON_HOMOLOGA_OSIAX.label_campo_osi
  is 'Label del campo o del detalle';
comment on column CON_HOMOLOGA_OSIAX.campo_osi
  is 'Nombre campo tabla o valor del detalle Ej: Nombre / 000010';
comment on column CON_HOMOLOGA_OSIAX.tipvalor_osi
  is 'Number, Varchar, Date';
comment on column CON_HOMOLOGA_OSIAX.tipcampo_osi
  is ' 1 -> Campo Tabla , 2-> Detalle';
comment on column CON_HOMOLOGA_OSIAX.tiaxis
  is 'Nombre tabla Osiris Ej: Per_Persona';
comment on column CON_HOMOLOGA_OSIAX.label_campo_iax
  is 'Label del campo o del detalle';
comment on column CON_HOMOLOGA_OSIAX.campo_iax
  is 'Nombre campo tabla o valor del detalle Ej: Nombre / 000010';
comment on column CON_HOMOLOGA_OSIAX.tipvalor_iax
  is 'Number, Varchar, Date';
comment on column CON_HOMOLOGA_OSIAX.tipcampo_iax
  is ' 1 -> Campo Tabla , 2-> Detalle';
comment on column CON_HOMOLOGA_OSIAX.query_select
  is 'Query Select del valor en iAxis para pasar a Osiris';
 /