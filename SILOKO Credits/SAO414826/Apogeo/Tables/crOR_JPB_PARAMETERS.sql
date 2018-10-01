--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crOR_JPB_PARAMETERS.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 02-05-2018 16:35:27 ( Fecha creación )
--
-- Descripción   : Creación de la tabla OR_JPB_PARAMETERS
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-05-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crOR_JPB_PARAMETERS.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table OR_JPB_PARAMETERS

CREATE TABLE OR_JPB_PARAMETERS
(
     PARAMETER_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372850 NOT NULL,
     STRATUM_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372851 NOT NULL,
     CITY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372852 NOT NULL,
     COUNTRY_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372853 NOT NULL,
     PLAN_TYPE_ID NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372854 NOT NULL,
     ACTIVE_PRODUCTS NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372855 NOT NULL,
     INF_LIMIT NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372856 NOT NULL,
     SUP_LIMIT NUMBER( 4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372857 NOT NULL,
     AMOUNT NUMBER( 20,4 )     CONSTRAINT NN_OR_JPB_PARAMETERS_372858 NOT NULL)
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

PROMPT ... Adding Comments to table [OR_JPB_PARAMETERS]...
comment on table OR_JPB_PARAMETERS is 'Parámetros de asignación cupo.';

PROMPT ... Adding Comments to columns of table  [OR_JPB_PARAMETERS]...
comment on column OR_JPB_PARAMETERS.PARAMETER_ID is 'Identificador del grupo de parámetros.';
comment on column OR_JPB_PARAMETERS.STRATUM_ID is 'Estrato en que aplica el cupo.';
comment on column OR_JPB_PARAMETERS.CITY_ID is 'Ciudad donde aplica el cupo.';
comment on column OR_JPB_PARAMETERS.COUNTRY_ID is 'País donde aplica el cupo.';
comment on column OR_JPB_PARAMETERS.PLAN_TYPE_ID is 'Tipo de plan en el que aplica el cupo.';
comment on column OR_JPB_PARAMETERS.ACTIVE_PRODUCTS is 'Cantidad de productos activos.';
comment on column OR_JPB_PARAMETERS.INF_LIMIT is 'Límite inferior.';
comment on column OR_JPB_PARAMETERS.SUP_LIMIT is 'Límite superior.';
comment on column OR_JPB_PARAMETERS.AMOUNT is 'Monto a asignar.';


