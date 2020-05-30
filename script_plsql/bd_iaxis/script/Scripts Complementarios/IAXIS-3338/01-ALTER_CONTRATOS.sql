ALTER TABLE CONTRATOS ADD(
NRETPOL NUMBER,
NRETCUL NUMBER);

comment on column CONTRATOS.nretpol
  is 'Retencion prioritaria por poliza';

comment on column CONTRATOS.nretcul
  is 'Retencion prioritaria por cumulo';