--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_PLAN_TYPE.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 17:41:15 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_PLAN_TYPE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_PLAN_TYPE.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_PLAN_TYPE

CREATE TABLE OR_JPB_PLAN_TYPE
(
     PLAN_TYPE_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PLAN_TYPE_372528 NOT NULL,
     DESCRIPTION VARCHAR2( 100 )     CONSTRAINT NN_OR_JPB_PLAN_TYPE_372529 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_PLAN_TYPE]...
comment on table OR_JPB_PLAN_TYPE is 'Tipos de plan.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_PLAN_TYPE]...
comment on column OR_JPB_PLAN_TYPE.PLAN_TYPE_ID is 'Identificador del tipo de plan.';
comment on column OR_JPB_PLAN_TYPE.DESCRIPTION is 'Tipo de plan.';


