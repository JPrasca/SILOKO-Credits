--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_CUSTOMER.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 07-05-2018 16:31:42 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_CUSTOMER
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_CUSTOMER.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_CUSTOMER

CREATE TABLE OR_JPB_CUSTOMER
(
     CUSTOMER_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_CUSTOMER_372677 NOT NULL,
     DESCRIPTION VARCHAR2( 60 )     CONSTRAINT NN_OR_JPB_CUSTOMER_372678 NOT NULL,
     DOCUMENT VARCHAR2( 12 )     CONSTRAINT NN_OR_JPB_CUSTOMER_372740 NOT NULL,
     STRATUM_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_CUSTOMER_372741 NOT NULL,
     REGISTRATION_DATE DATE     CONSTRAINT NN_OR_JPB_CUSTOMER_372742 NOT NULL,
     HAS_QUOTA VARCHAR2( 2 ),
     CITY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_CUSTOMER_373328 NOT NULL,
     COUNTRY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_CUSTOMER_373329 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_CUSTOMER]...
comment on table OR_JPB_CUSTOMER is 'Clientes de SILOKO.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_CUSTOMER]...
comment on column OR_JPB_CUSTOMER.CUSTOMER_ID is 'Identificador del cliente SILOKO.';
comment on column OR_JPB_CUSTOMER.DESCRIPTION is 'Nombre del cliente SILOKO.';
comment on column OR_JPB_CUSTOMER.DOCUMENT is 'Código o número de identidad.';
comment on column OR_JPB_CUSTOMER.STRATUM_ID is 'Identificador del estrato del cliente.';
comment on column OR_JPB_CUSTOMER.REGISTRATION_DATE is 'Fecha de registro del cliente SILOKO.';
comment on column OR_JPB_CUSTOMER.HAS_QUOTA is '¿Tiene cupo?.';
comment on column OR_JPB_CUSTOMER.CITY_ID is 'Ciudad.';
comment on column OR_JPB_CUSTOMER.COUNTRY_ID is 'País.';


