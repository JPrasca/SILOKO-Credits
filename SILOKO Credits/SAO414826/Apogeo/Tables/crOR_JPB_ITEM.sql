--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_ITEM.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 14:32:21 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_ITEM
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_ITEM.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_ITEM

CREATE TABLE OR_JPB_ITEM
(
     ITEM_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_ITEM_372540 NOT NULL,
     DESCRIPTION VARCHAR2( 100 )     CONSTRAINT NN_OR_JPB_ITEM_372541 NOT NULL,
     PRICE NUMBER( 20,4 ))
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

PROMPT ... Adding Comments to table [OR_JPB_ITEM]...
comment on table OR_JPB_ITEM is 'Artículos con SILOKO code.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_ITEM]...
comment on column OR_JPB_ITEM.ITEM_ID is 'Código de SILOKO.';
comment on column OR_JPB_ITEM.DESCRIPTION is 'Descripción del producto.';
comment on column OR_JPB_ITEM.PRICE is 'Precio del articulo.';


