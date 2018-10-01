--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_ASSIGNED_QUOTA.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 17:39:03 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_ASSIGNED_QUOTA
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_ASSIGNED_QUOTA.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_ASSIGNED_QUOTA

CREATE TABLE OR_JPB_ASSIGNED_QUOTA
(
     QUOTA_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_ASSIGNED_QUOT_372769 NOT NULL,
     CUSTOMER_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_ASSIGNED_QUOT_372770 NOT NULL,
     ASSIGNED NUMBER( 20,4 ),
     AVAILABLE NUMBER( 20,4 ),
     IS_ENABLED VARCHAR2( 100 ) DEFAULT 'Y'     CONSTRAINT NN_OR_JPB_ASSIGNED_QUOT_372775 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_ASSIGNED_QUOTA]...
comment on table OR_JPB_ASSIGNED_QUOTA is 'Cupos asignados.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_ASSIGNED_QUOTA]...
comment on column OR_JPB_ASSIGNED_QUOTA.QUOTA_ID is 'Identificador del cupo asignado.';
comment on column OR_JPB_ASSIGNED_QUOTA.CUSTOMER_ID is 'Identificador de SILOKO.';
comment on column OR_JPB_ASSIGNED_QUOTA.ASSIGNED is 'Monto asignado en el cupo.';
comment on column OR_JPB_ASSIGNED_QUOTA.AVAILABLE is 'Monto disponible en el cupo.';
comment on column OR_JPB_ASSIGNED_QUOTA.IS_ENABLED is '¿Habilitado? (Y/N).';


