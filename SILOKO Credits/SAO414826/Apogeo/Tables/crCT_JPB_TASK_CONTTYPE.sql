--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCT_JPB_TASK_CONTTYPE.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 19-04-2018 07:58:45 ( Fecha creación )
--
-- Descripción   : Creación de la tabla CT_JPB_TASK_CONTTYPE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 19-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crCT_JPB_TASK_CONTTYPE.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table CT_JPB_TASK_CONTTYPE

CREATE TABLE CT_JPB_TASK_CONTTYPE
(
     TASK_CONTTYPE_ID NUMBER( 15 )     CONSTRAINT NN_CT_JPB_TASK_CONTTYPE_371030 NOT NULL,
     IS_TYPE VARCHAR2( 1 )     CONSTRAINT NN_CT_JPB_TASK_CONTTYPE_371031 NOT NULL,
     CONTRACT_ID NUMBER( 15 ),
     CONTRACT_TYPE_ID NUMBER( 4 ),
     TASK_TYPE_ID NUMBER( 10 ))
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

PROMPT ... Adding Comments to table [CT_JPB_TASK_CONTTYPE]...
comment on table CT_JPB_TASK_CONTTYPE is 'Tipos de trabajo del contrato o del tipo de contrato';

PROMPT ... Adding Comments to columns of table  [CT_JPB_TASK_CONTTYPE]...
comment on column CT_JPB_TASK_CONTTYPE.TASK_CONTTYPE_ID is 'Identificador del contrato o del tipo de contrato.';
comment on column CT_JPB_TASK_CONTTYPE.IS_TYPE is 'Tipo de relación (C-Contrato/T-Tipo de contrato).';
comment on column CT_JPB_TASK_CONTTYPE.CONTRACT_ID is 'Identificador del contrato.';
comment on column CT_JPB_TASK_CONTTYPE.CONTRACT_TYPE_ID is 'Identificador del tipo de contrato.';
comment on column CT_JPB_TASK_CONTTYPE.TASK_TYPE_ID is 'Identificador del tipo de trabajo.';


