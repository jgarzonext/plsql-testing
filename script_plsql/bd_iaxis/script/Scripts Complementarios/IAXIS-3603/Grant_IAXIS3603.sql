--
create or replace synonym AXIS00.SIN_TRAMITA_ESTSINIESTRO
  for AXIS.SIN_TRAMITA_ESTSINIESTRO; 
--

/* granting access to user for select , insert and all operations*/

GRANT SELECT, INSERT, UPDATE, DELETE ON  SIN_TRAMITA_ESTSINIESTRO TO r_axis;

/