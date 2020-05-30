ALTER TABLE MIG_CONTRATOS ADD(
NRETPOL NUMBER,
NRETCUL NUMBER);

comment on column MIG_CONTRATOS.nretpol
is 'Retencion prioritaria por poliza';

comment on column MIG_CONTRATOS.nretcul
is 'Retencion prioritaria por cumulo';