--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_STRAT_BY_CITY.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 05-05-2018 20:32:57 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_STRAT_BY_CITY
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 05-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_STRAT_BY_CITY.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_STRAT_BY_CITY

CREATE TABLE OR_JPB_STRAT_BY_CITY
(
     STRAT_BY_CITY_ID NUMBER( 15 )     CONSTRAINT NN_OR_JPB_STRAT_BY_CITY_373308 NOT NULL,
     STRATUM_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_STRAT_BY_CITY_373309 NOT NULL,
     CITY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_STRAT_BY_CITY_373310 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_STRAT_BY_CITY]...
comment on table OR_JPB_STRAT_BY_CITY is 'Estratos por ciudad.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_STRAT_BY_CITY]...
comment on column OR_JPB_STRAT_BY_CITY.STRAT_BY_CITY_ID is 'Identificador de estrato por ciudad';
comment on column OR_JPB_STRAT_BY_CITY.STRATUM_ID is 'Estrato.';
comment on column OR_JPB_STRAT_BY_CITY.CITY_ID is 'Ciudad.';


