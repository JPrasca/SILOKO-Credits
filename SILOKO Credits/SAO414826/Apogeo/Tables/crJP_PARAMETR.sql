--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJP_PARAMETR.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 15-04-2018 21:30:26 ( Fecha creación )
--
-- Descripción   : Creación de la tabla JP_PARAMETR
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crJP_PARAMETR.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table JP_PARAMETR

CREATE TABLE JP_PARAMETR
(
     PARAESTR NUMBER( 4 ),
     PARAPLAN NUMBER( 1 ),
     PARAPAIS NUMBER( 4 ))
    INITRANS 1
    MAXTRANS 255 LOGGING  TABLESPACE TSD_SUSCRIPC
    STORAGE (   INITIAL 8192
                NEXT 8192
                MINEXTENTS 1
                MAXEXTENTS UNLIMITED
                PCTINCREASE 0
                FREELISTS 1
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT);

PROMPT ... Adding Comments to table [JP_PARAMETR]...
comment on table JP_PARAMETR is 'Reglas de asignación de cupo';

PROMPT ... Adding Comments to columns of table  [JP_PARAMETR]...
comment on column JP_PARAMETR.PARAESTR is 'Parámetro estrato';
comment on column JP_PARAMETR.PARAPLAN is 'Parámetro plan';
comment on column JP_PARAMETR.PARAPAIS is 'Parámetro país';


