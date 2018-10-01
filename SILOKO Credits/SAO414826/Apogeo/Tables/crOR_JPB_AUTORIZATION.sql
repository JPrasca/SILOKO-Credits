--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_AUTORIZATION.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 30-04-2018 22:32:40 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_AUTORIZATION
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 30-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_AUTORIZATION.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_AUTORIZATION

CREATE TABLE OR_JPB_AUTORIZATION
(
     AUTORIZATION_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_AUTORIZATION_372511 NOT NULL,
     AUTORIZATION_STATUS VARCHAR2( 100 )     CONSTRAINT NN_OR_JPB_AUTORIZATION_372512 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_AUTORIZATION]...
comment on table OR_JPB_AUTORIZATION is 'Códigos de autorización para retirar un producto.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_AUTORIZATION]...
comment on column OR_JPB_AUTORIZATION.AUTORIZATION_ID is 'Código de autorización.';
comment on column OR_JPB_AUTORIZATION.AUTORIZATION_STATUS is '¿Estado activo?  (Y/N).';


