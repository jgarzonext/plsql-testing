-- Anadir neuvo column

ALTER TABLE FIN_ENDEUDAMIENTO ADD NINCUMP NUMBER;

comment on column FIN_ENDEUDAMIENTO.NINCUMP
  is 'Probabilidad de incumplimiento';
