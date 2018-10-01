--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_CREDIT.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 07-05-2018 12:46:45 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_CREDIT
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_CREDIT.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_CREDIT

CREATE TABLE OR_JPB_CREDIT
(
     CREDIT_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_CREDIT_372820 NOT NULL,
     AUTORIZATION_ID NUMBER( 15 ),
     CUSTOMER_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_CREDIT_372822 NOT NULL,
     ITEM_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_CREDIT_372823 NOT NULL,
     QUOTA_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_CREDIT_372824 NOT NULL,
     IS_APPROVED VARCHAR2( 100 ) DEFAULT 'N'     CONSTRAINT NN_OR_JPB_CREDIT_372825 NOT NULL,
     CREDIT_DATE DATE,
     CAUSAL_DETAIL_ID NUMBER( 15 ),
     STORE_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_CREDIT_373316 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_CREDIT]...
comment on table OR_JPB_CREDIT is 'Solicitudes de créditos solicitadas.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_CREDIT]...
comment on column OR_JPB_CREDIT.CREDIT_ID is 'Identificador de la solicitud.';
comment on column OR_JPB_CREDIT.AUTORIZATION_ID is 'Identificador de la autorización.';
comment on column OR_JPB_CREDIT.CUSTOMER_ID is 'Identificador del cliente SILOKO.';
comment on column OR_JPB_CREDIT.ITEM_ID is 'Identificador del artículo.';
comment on column OR_JPB_CREDIT.QUOTA_ID is 'Identificador del cupo asignado.';
comment on column OR_JPB_CREDIT.IS_APPROVED is '¿Aprobado? (Y/N).';
comment on column OR_JPB_CREDIT.CREDIT_DATE is 'Fecha en la que se realizó la solicitud.';
comment on column OR_JPB_CREDIT.CAUSAL_DETAIL_ID is 'Detalle causal.';
comment on column OR_JPB_CREDIT.STORE_ID is 'Almacén.';


