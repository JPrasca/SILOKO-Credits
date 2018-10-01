--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJP_PAIS.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 15-04-2018 21:30:51 ( Fecha creación )
--
-- Descripción   : Creación de la tabla JP_PAIS
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crJP_PAIS.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table JP_PAIS

CREATE TABLE JP_PAIS
(
     PAISCODI NUMBER( 4 )     CONSTRAINT NN_JP_PAIS_370550 NOT NULL,
     PAISNOMB VARCHAR2( 60 ))
    INITRANS 1
    MAXTRANS 255 LOGGING  TABLESPACE TSD_SUSCRIPC
    STORAGE (   INITIAL 8192
                NEXT 8192
                MINEXTENTS 1
                MAXEXTENTS UNLIMITED
                PCTINCREASE 0
                FREELISTS 1
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT);

PROMPT ... Adding Comments to table [JP_PAIS]...
comment on table JP_PAIS is 'Listado de países';

PROMPT ... Adding Comments to columns of table  [JP_PAIS]...
comment on column JP_PAIS.PAISCODI is 'ID del país';
comment on column JP_PAIS.PAISNOMB is 'Nombre del país';


