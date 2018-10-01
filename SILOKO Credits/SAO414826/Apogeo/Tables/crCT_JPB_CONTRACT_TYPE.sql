--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCT_JPB_CONTRACT_TYPE.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 22:56:20 ( Fecha creación )
--
-- Descripción   : Creación de la tabla CT_JPB_CONTRACT_TYPE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crCT_JPB_CONTRACT_TYPE.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table CT_JPB_CONTRACT_TYPE

CREATE TABLE CT_JPB_CONTRACT_TYPE
(
     CONTRACT_TYPE_ID NUMBER( 4 )     CONSTRAINT NN_CT_JPB_CONTRACT_TYPE_370574 NOT NULL,
     DESCRIPTION VARCHAR2( 100 )     CONSTRAINT NN_CT_JPB_CONTRACT_TYPE_370575 NOT NULL)
    INITRANS 1
    MAXTRANS 255 LOGGING  TABLESPACE TSD_CONTRACTORS
    STORAGE (   INITIAL 8192
                NEXT 8192
                MINEXTENTS 1
                MAXEXTENTS UNLIMITED
                PCTINCREASE 0
                FREELISTS 1
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT);

PROMPT ... Adding Comments to table [CT_JPB_CONTRACT_TYPE]...
comment on table CT_JPB_CONTRACT_TYPE is 'Tipos de contrato.';

PROMPT ... Adding Comments to columns of table  [CT_JPB_CONTRACT_TYPE]...
comment on column CT_JPB_CONTRACT_TYPE.CONTRACT_TYPE_ID is 'Identificador del tipo de contrato.';
comment on column CT_JPB_CONTRACT_TYPE.DESCRIPTION is 'Descripción del tipo de contrato.';


