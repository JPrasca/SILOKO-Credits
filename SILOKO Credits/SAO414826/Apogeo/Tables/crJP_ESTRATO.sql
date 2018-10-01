--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJP_ESTRATO.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 15-04-2018 21:36:54 ( Fecha creación )
--
-- Descripción   : Creación de la tabla JP_ESTRATO
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crJP_ESTRATO.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table JP_ESTRATO

CREATE TABLE JP_ESTRATO
(
     ESTRCODI NUMBER( 4 )     CONSTRAINT NN_JP_ESTRATO_370555 NOT NULL,
     ESTRDESC VARCHAR2( 2 ))
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

PROMPT ... Adding Comments to table [JP_ESTRATO]...
comment on table JP_ESTRATO is 'Listado de estratos';

PROMPT ... Adding Comments to columns of table  [JP_ESTRATO]...
comment on column JP_ESTRATO.ESTRCODI is 'Estrato';
comment on column JP_ESTRATO.ESTRDESC is 'Detalle estrato';


