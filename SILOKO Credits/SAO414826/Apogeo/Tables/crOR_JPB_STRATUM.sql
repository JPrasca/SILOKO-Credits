--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_STRATUM.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 17:42:58 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_STRATUM
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_STRATUM.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_STRATUM

CREATE TABLE OR_JPB_STRATUM
(
     STRATUM_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_STRATUM_372464 NOT NULL,
     DESCRIPTION VARCHAR2( 100 )     CONSTRAINT NN_OR_JPB_STRATUM_372465 NOT NULL)
    INITRANS 1
    MAXTRANS 255 LOGGING  TABLESPACE TSD_ORDERS
    STORAGE (   INITIAL 8192
                NEXT 8192
                MINEXTENTS 1
                MAXEXTENTS UNLIMITED
                PCTINCREASE 0
                FREELISTS 1
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT);

PROMPT ... Adding Comments to table [OR_JPB_STRATUM]...
comment on table OR_JPB_STRATUM is 'Estratos.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_STRATUM]...
comment on column OR_JPB_STRATUM.STRATUM_ID is 'Identificador del estrato.';
comment on column OR_JPB_STRATUM.DESCRIPTION is 'Estrato.';


