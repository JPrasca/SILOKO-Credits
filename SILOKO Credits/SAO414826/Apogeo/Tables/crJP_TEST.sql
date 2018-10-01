--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJP_TEST.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 27-03-2018 16:51:22 ( Fecha creación )
--
-- Descripción   : Creación de la tabla JP_TEST
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 27-03-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crJP_TEST.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table JP_TEST

CREATE TABLE JP_TEST
(
     TEST_ID NUMBER( 3 )     CONSTRAINT NN_JP_TEST_370257 NOT NULL,
     TEST_DES VARCHAR2( 20 ))
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

PROMPT ... Adding Comments to table [JP_TEST]...
comment on table JP_TEST is 'Tabla de prueba';

PROMPT ... Adding Comments to columns of table  [JP_TEST]...
comment on column JP_TEST.TEST_ID is 'Id de la prueba';
comment on column JP_TEST.TEST_DES is 'Descripción';


