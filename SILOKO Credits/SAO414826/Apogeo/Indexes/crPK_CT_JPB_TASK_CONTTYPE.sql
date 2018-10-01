--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crPK_CT_JPB_TASK_CONTTYPE.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 19-04-2018 07:59:01 ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla CT_JPB_TASK_CONTTYPE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 19-04-2018   semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crPK_CT_JPB_TASK_CONTTYPE.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding primary key to table CT_JPB_TASK_CONTTYPE

ALTER TABLE CT_JPB_TASK_CONTTYPE ADD
    (
        CONSTRAINT PK_CT_JPB_TASK_CONTTYPE
        PRIMARY KEY ("TASK_CONTTYPE_ID" )
        USING INDEX
        PCTFREE  5 
        TABLESPACE TSI_CONTRACTORS
        STORAGE (   INITIAL 8192
                    NEXT 8192
                    MINEXTENTS  1  
                    MAXEXTENTS  UNLIMITED
                    PCTINCREASE 0
                    FREELISTS 1
                    FREELIST GROUPS 1 
                    BUFFER_POOL DEFAULT
                )
    );
