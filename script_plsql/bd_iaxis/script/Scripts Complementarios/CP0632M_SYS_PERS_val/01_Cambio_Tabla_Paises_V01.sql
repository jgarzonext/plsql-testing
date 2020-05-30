--Modificacion nombre campo paises
ALTER TABLE paises 
RENAME COLUMN CODISOA3 to ABREVIATURA;

--Modificacion comentario campo abreviatura
comment on column PAISES.ABREVIATURA
  is 'Abreviatura del pais, 2 Caracteres';