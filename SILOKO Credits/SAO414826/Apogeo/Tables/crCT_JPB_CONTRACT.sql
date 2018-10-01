--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCT_JPB_CONTRACT.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 22:54:02 ( Fecha creación )
--
-- Descripción   : Creación de la tabla CT_JPB_CONTRACT
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crCT_JPB_CONTRACT.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table CT_JPB_CONTRACT

CREATE TABLE CT_JPB_CONTRACT
(
     CONTRACT_ID NUMBER( 15 )     CONSTRAINT NN_CT_JPB_CONTRACT_370680 NOT NULL,
     DESCRIPTION VARCHAR2( 1000 )     CONSTRAINT NN_CT_JPB_CONTRACT_370681 NOT NULL,
     TOTAL_AMOUNT NUMBER( 20,4 ),
     OVERREACHING_PERCENT NUMBER( 2 ) DEFAULT 0,
     CONTRACT_TYPE_ID NUMBER( 4 ),
     CONTRACTOR_ID NUMBER( 15 ))
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

PROMPT ... Adding Comments to table [CT_JPB_CONTRACT]...
comment on table CT_JPB_CONTRACT is 'Contrato.';

PROMPT ... Adding Comments to columns of table  [CT_JPB_CONTRACT]...
comment on column CT_JPB_CONTRACT.CONTRACT_ID is 'Identificador de contrato.';
comment on column CT_JPB_CONTRACT.DESCRIPTION is 'Descripción del contrato.';
comment on column CT_JPB_CONTRACT.TOTAL_AMOUNT is 'Monto total de contrato.';
comment on column CT_JPB_CONTRACT.OVERREACHING_PERCENT is 'Porcentaje de sobreejecución.';
comment on column CT_JPB_CONTRACT.CONTRACT_TYPE_ID is 'Identificador del tipo de contrato.';
comment on column CT_JPB_CONTRACT.CONTRACTOR_ID is 'Identificador del contratista.';


