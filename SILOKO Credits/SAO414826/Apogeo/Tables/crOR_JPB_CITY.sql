--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_CITY.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 15:47:53 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_CITY
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_CITY.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_CITY

CREATE TABLE OR_JPB_CITY
(
     CITY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_CITY_372373 NOT NULL,
     DESCRIPTION VARCHAR2( 100 )     CONSTRAINT NN_OR_JPB_CITY_372374 NOT NULL,
     COUNTRY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_CITY_372375 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_CITY]...
comment on table OR_JPB_CITY is 'Ciudades en donde está presente SILOKO.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_CITY]...
comment on column OR_JPB_CITY.CITY_ID is 'Identificador de ciudad.';
comment on column OR_JPB_CITY.DESCRIPTION is 'Ciudad.';
comment on column OR_JPB_CITY.COUNTRY_ID is 'Identificador de país.';


