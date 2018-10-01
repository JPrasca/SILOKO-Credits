--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_STORE.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 07-05-2018 12:23:42 ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n de la tabla OR_JPB_STORE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1.SAO414826
-- Modificaci�n
--


PROMPT - Script  :  crOR_JPB_STORE.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_STORE

CREATE TABLE OR_JPB_STORE
(
     STORE_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_STORE_373313 NOT NULL,
     DESCRIPTION VARCHAR2( 60 )     CONSTRAINT NN_OR_JPB_STORE_373314 NOT NULL,
     CITY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_STORE_373315 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_STORE]...
comment on table OR_JPB_STORE is 'Almacenes asociados.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_STORE]...
comment on column OR_JPB_STORE.STORE_ID is 'Identificador de almac�n.';
comment on column OR_JPB_STORE.DESCRIPTION is 'Almac�n.';
comment on column OR_JPB_STORE.CITY_ID is 'Identificador de ciudad.';


