--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJP_CIUDAD.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 15-04-2018 21:31:11 ( Fecha creación )
--
-- Descripción   : Creación de la tabla JP_CIUDAD
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crJP_CIUDAD.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table JP_CIUDAD

CREATE TABLE JP_CIUDAD
(
     CIUDCODI NUMBER( 4 )     CONSTRAINT NN_JP_CIUDAD_370552 NOT NULL,
     CIUDNOMB VARCHAR2( 60 ),
     CIUDPAIS NUMBER( 4 ))
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

PROMPT ... Adding Comments to table [JP_CIUDAD]...
comment on table JP_CIUDAD is 'Listado de ciudades';

PROMPT ... Adding Comments to columns of table  [JP_CIUDAD]...
comment on column JP_CIUDAD.CIUDCODI is 'ID de ciudad';
comment on column JP_CIUDAD.CIUDNOMB is 'Nombre de ciudad';
comment on column JP_CIUDAD.CIUDPAIS is 'País al que pertenece';


