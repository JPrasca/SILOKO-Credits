--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJP_ORDER.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 27-03-2018 16:40:07 ( Fecha creación )
--
-- Descripción   : Creación de la tabla JP_ORDER
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 27-03-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crJP_ORDER.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table JP_ORDER

CREATE TABLE JP_ORDER
(
     ORDEN_ID LONG     CONSTRAINT NN_JP_ORDER_370218 NOT NULL,
     ORDEN_D VARCHAR2( 50 ))
    INITRANS 1
    MAXTRANS 255 LOGGING  TABLESPACE TSD_FACTURA
    STORAGE (   INITIAL 8192
                NEXT 8192
                MINEXTENTS 1
                MAXEXTENTS UNLIMITED
                PCTINCREASE 0
                FREELISTS 1
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT);

PROMPT ... Adding Comments to table [JP_ORDER]...
comment on table JP_ORDER is 'Tabla de prueba de datamaster para semillero P&T';

PROMPT ... Adding Comments to columns of table  [JP_ORDER]...
comment on column JP_ORDER.ORDEN_ID is 'Id de la orden';
comment on column JP_ORDER.ORDEN_D is 'Id de la orden';


