--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_PLAN.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 07-05-2018 17:35:19 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_PLAN
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_PLAN.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_PLAN

CREATE TABLE OR_JPB_PLAN
(
     PLAN_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_PLAN_372673 NOT NULL,
     PLAN_TYPE_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PLAN_372674 NOT NULL,
     CUSTOMER_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_PLAN_372675 NOT NULL,
     IS_ACTIVE VARCHAR2( 100 ) DEFAULT 'Y'     CONSTRAINT NN_OR_JPB_PLAN_372676 NOT NULL,
     COUNTRY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PLAN_373330 NOT NULL,
     CITY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PLAN_373331 NOT NULL,
     STRATUM_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PLAN_373332 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_PLAN]...
comment on table OR_JPB_PLAN is 'Planes asociados a clientes SILOKO.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_PLAN]...
comment on column OR_JPB_PLAN.PLAN_ID is 'Código del plan asociado al cliente.';
comment on column OR_JPB_PLAN.PLAN_TYPE_ID is 'Identificador del tipo de plan.';
comment on column OR_JPB_PLAN.CUSTOMER_ID is 'Identificador del cliente SILOKO.';
comment on column OR_JPB_PLAN.IS_ACTIVE is 'Indicador de actividad del plan (Y/N).';
comment on column OR_JPB_PLAN.COUNTRY_ID is 'País del plan.';
comment on column OR_JPB_PLAN.CITY_ID is 'Ciudad del plan.';
comment on column OR_JPB_PLAN.STRATUM_ID is 'Estrato.';


